package com.mmontes.test.service;

import com.mmontes.model.service.internal.TIPService;
import com.mmontes.util.GeometryConversor;
import com.mmontes.util.dto.TIPDetailsDto;
import com.mmontes.util.dto.TIPSearchDto;
import com.mmontes.util.exception.*;
import com.vividsolutions.jts.geom.Geometry;
import com.vividsolutions.jts.geom.Point;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

import static com.mmontes.test.util.Constants.*;
import static com.mmontes.util.Constants.*;
import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { SPRING_CONFIG_FILE, SPRING_CONFIG_TEST_FILE })
@Transactional
public class TIPServiceTest {

    @Autowired
    private TIPService tipService;

    @Test
    public void createBasicTIPs() {
        try {
            String name = "Tower of Hercules";
            String description = "Human Patrimony";
            Point geom = (Point) GeometryConversor.geometryFromWKT(POINT_TORRE_HERCULES);
            TIPDetailsDto tipDetailsDto = tipService.create(MONUMENT_DISCRIMINATOR, name, description, VALID_TIP_PHOTO_URL, null, null, VALID_TIP_INFO_URL, geom);

            assertEquals(MONUMENT_DISCRIMINATOR, tipDetailsDto.getType());
            assertEquals(name, tipDetailsDto.getName());
            assertEquals(description, tipDetailsDto.getDescription());
            assertNotNull(tipDetailsDto.getGeom());
            assertEquals(VALID_TIP_PHOTO_URL, tipDetailsDto.getPhotoUrl());
            assertEquals(VALID_TIP_INFO_URL, tipDetailsDto.getInfoUrl());
            assertNotNull(tipDetailsDto.getGoogleMapsUrl());
            assertEquals(NAME_CITY_A_CORUNA, tipDetailsDto.getCity());

            name = "Alameda Park";
            description = "Green zone";
            geom = (Point) GeometryConversor.geometryFromWKT(POINT_ALAMEDA);
            tipDetailsDto = tipService.create(NATURAL_SPACE_DISCRIMINATOR, name, description, VALID_TIP_PHOTO_URL, null, null, VALID_TIP_INFO_URL, geom);

            assertEquals(NATURAL_SPACE_DISCRIMINATOR, tipDetailsDto.getType());
            assertEquals(name, tipDetailsDto.getName());
            assertEquals(description, tipDetailsDto.getDescription());
            assertNotNull(tipDetailsDto.getGeom());
            assertEquals(VALID_TIP_PHOTO_URL, tipDetailsDto.getPhotoUrl());
            assertEquals(VALID_TIP_INFO_URL, tipDetailsDto.getInfoUrl());
            assertNotNull(tipDetailsDto.getGoogleMapsUrl());
            assertEquals(NAME_CITY_SANTIAGO, tipDetailsDto.getCity());

        } catch (GeometryParsingException | GoogleMapsServiceException | AmazonServiceExeption | TIPLocationException | WikipediaServiceException | InvalidTIPUrlException e) {
            e.printStackTrace();
            fail();
        }
    }

    @Test
    @Rollback(false)
    public void createFindTIP(){
        String name = "Santiago de Compostela cathedral";
        String description = "Human patrimony";
        try {
            Point geom = (Point) GeometryConversor.geometryFromWKT(POINT_CATEDRAL_SANTIAGO);
            TIPDetailsDto tipDetailsDto = tipService.create(MONUMENT_DISCRIMINATOR, name, description, null, null, null, null, geom);
            List<TIPSearchDto> tipSearchDtos = tipService.find(null, null, MONUMENT_DISCRIMINATOR, null, null, null);

            assertEquals(1, tipSearchDtos.size());
            TIPSearchDto result = tipSearchDtos.get(0);
            assertEquals(tipDetailsDto.getId(),result.getId());
        } catch (GeometryParsingException | GoogleMapsServiceException | AmazonServiceExeption | InvalidTIPUrlException | WikipediaServiceException | TIPLocationException e) {
            e.printStackTrace();
            fail();
        }
    }

    @Test(expected = TIPLocationException.class)
    public void creatTIPinNonCreatedCity() throws TIPLocationException {
        String name = "Liberty Statue";
        String description = "NY symbol";
        try {
            Point geom = (Point) GeometryConversor.geometryFromWKT(POINT_STATUE_OF_LIBERTRY);
            tipService.create(MONUMENT_DISCRIMINATOR, name, description, null, null, null, null, geom);
        } catch (GeometryParsingException | GoogleMapsServiceException | AmazonServiceExeption | WikipediaServiceException | InvalidTIPUrlException e) {
            e.printStackTrace();
            fail();
        }
    }


    @Test
    public void findTipsOfCurrentCity(){
        TIPDetailsDto towerHercules = null;
        TIPDetailsDto santiagoCathedral = null;
        Geometry bounds = null;
        try {
            String name = "Tower of Hercules";
            String description = "Human Patrimony";
            Point geom = (Point) GeometryConversor.geometryFromWKT(POINT_TORRE_HERCULES);
            towerHercules = tipService.create(MONUMENT_DISCRIMINATOR, name, description, VALID_TIP_PHOTO_URL, null, null, null, geom);

            name = "Santiago de Compostela cathedral";
            description = "Human Patrimony";
            geom = (Point) GeometryConversor.geometryFromWKT(POINT_CATEDRAL_SANTIAGO);
            santiagoCathedral = tipService.create(MONUMENT_DISCRIMINATOR, name, description, VALID_TIP_PHOTO_URL, null, null, null, geom);
            bounds = GeometryConversor.geometryFromWKT(BOUNDS_SANTIAGO_DE_COMPOSTELA);
        } catch (GeometryParsingException | GoogleMapsServiceException | AmazonServiceExeption | WikipediaServiceException | InvalidTIPUrlException | TIPLocationException e) {
            e.printStackTrace();
            fail();
        }
        List<TIPSearchDto> tipSearchDtos = tipService.find(null, bounds, null, null, null, null);

        assertEquals(1, tipSearchDtos.size());
        assertEquals(santiagoCathedral.getId(), tipSearchDtos.get(0).getId());
    }

    @Test
    public void finTipsFromFarCity(){
        TIPDetailsDto towerHercules = null;
        TIPDetailsDto santiagoCathedral = null;
        Geometry bounds = null;
        try {
            String name = "Tower of Hercules";
            String description = "Human Patrimony";
            Point geom = (Point) GeometryConversor.geometryFromWKT(POINT_TORRE_HERCULES);
            tipService.create(MONUMENT_DISCRIMINATOR, name, description, VALID_TIP_PHOTO_URL, null, null, null, geom);

            name = "Santiago de Compostela cathedral";
            description = "Human Patrimony";
            geom = (Point) GeometryConversor.geometryFromWKT(POINT_CATEDRAL_SANTIAGO);
            tipService.create(NATURAL_SPACE_DISCRIMINATOR, name, description, VALID_TIP_PHOTO_URL, null, null, null, geom);
            bounds = GeometryConversor.geometryFromWKT(BOUNDS_NEW_YORK);
        } catch (GeometryParsingException | GoogleMapsServiceException | AmazonServiceExeption | WikipediaServiceException | InvalidTIPUrlException | TIPLocationException e) {
            e.printStackTrace();
            fail();
        }
        List<TIPSearchDto> tipSearchDtos = tipService.find(null, bounds, null, null, null, null);

        assertTrue(tipSearchDtos.isEmpty());
    }
}
