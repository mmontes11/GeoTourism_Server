package com.mmontes.util;

public class Constants {

    public static final String SPRING_CONFIG_FILE = "classpath:/spring-config.xml" ;

    public static final String MONUMENT_DISCRIMINATOR = "M";
    public static final String NATURAL_SPACE_DISCRIMINATOR = "NS";
    public static final String HOTEL_DISCRIMINATOR = "H";
    public static final String RESTAURANT_DISCRIMINATOR = "R";

    public static final int SRID = 4326;
    public static final double SEARCH_RADIUS_METRES = 1000;

    public static final String AMAZON_S3_BUCKET_NAME = "geotourism";
    public static final String AMAZON_S3_ROOT_URL = "https://s3.amazonaws.com/" + AMAZON_S3_BUCKET_NAME + "/";

    public static final String GOOGLE_MAPS_KEY = "AIzaSyAfBZob-0Wps6KwoBaM2XLljx3wjcK66n0";

    public static final String TOKEN_SECRET_KEY = "Qj7WqvdHqM1jATHdPkyITIqiBJWHHfsLtQlTuHYWQ";

    public Constants() {
    }
}
