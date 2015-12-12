package com.mmontes.service;

import com.amazonaws.util.json.JSONException;
import com.amazonaws.util.json.JSONObject;
import com.mmontes.util.Constants;
import com.mmontes.util.HashUtils;
import com.mmontes.util.JSONParser;
import com.mmontes.util.exception.FacebookServiceException;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;


@Service("FacebookService")
public class FacebookService {

    private String accessToken;
    private Long userID;
    private String appSecretProof;
    private String rootUrl;
    private String urlParams;

    public FacebookService() {
    }

    public void setParams(String accessToken, Long userID) {
        this.accessToken = accessToken;
        this.userID = userID;
        this.appSecretProof = HashUtils.hmacDigest(this.accessToken,Constants.FB_APP_SECRET,"HmacSHA256");
        this.rootUrl = Constants.FB_ROOT_URL;
        this.urlParams = "?access_token=" + this.accessToken + "&appsecret_proof=" + this.appSecretProof + "&format=json&redirect=false";
    }

    private HttpURLConnection getConnection(String requestUrl) throws IOException, FacebookServiceException {
        URL url = new URL(requestUrl);
        HttpURLConnection connection = (HttpURLConnection) url.openConnection();
        connection.setRequestMethod("GET");
        int responseCode = connection.getResponseCode();
        if (responseCode >= 400) {
            throw new FacebookServiceException();
        }
        return connection;
    }

    public void validateAuth() throws IOException, FacebookServiceException {
        String requestUrl = this.rootUrl + "/" + this.userID + this.urlParams;
        getConnection(requestUrl);
    }

    public HashMap<String,String> getUserDetails() throws FacebookServiceException, IOException, JSONException {
        String requestUrl = this.rootUrl + "/" + this.userID + this.urlParams+"&fields=name,link";
        HttpURLConnection connection = getConnection(requestUrl);
        JSONObject obj = JSONParser.parseJSON(connection.getInputStream());
        HashMap<String,String> details = new HashMap<>();
        details.put("name",obj.getString("name"));
        details.put("link",obj.getString("link"));
        return details;
    }

    public String getUserProfilePhoto() throws IOException, FacebookServiceException, JSONException {
        String requestUrl = this.rootUrl + "/" + this.userID + "/picture" + this.urlParams;
        HttpURLConnection connection = getConnection(requestUrl);
        JSONObject obj = JSONParser.parseJSON(connection.getInputStream());
        return obj.getJSONObject("data").getString("url");
    }

}
