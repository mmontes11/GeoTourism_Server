package com.mmontes.test.model.service;

import com.mmontes.model.dao.CityDao;
import com.mmontes.model.entity.City;
import com.mmontes.model.service.CityService;
import com.mmontes.util.dto.IDnameDto;
import com.mmontes.util.exception.InstanceNotFoundException;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

import static com.mmontes.test.util.Constants.SPRING_CONFIG_TEST_FILE;
import static com.mmontes.util.Constants.SPRING_CONFIG_FILE;
import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {SPRING_CONFIG_FILE, SPRING_CONFIG_TEST_FILE})
@Transactional
public class SyncCityTest {

    @Autowired
    private CityService cityService;

    @Autowired
    private CityDao cityDao;


    @Before
    public void removeDefaultCities() {
        for (City city : cityDao.findAll()) {
            try {
                cityDao.remove(city.getId());
            } catch (InstanceNotFoundException e) {
                fail();
            }
        }
    }

    @Test
    public void syncCities() {
        final Long osmId1 = 1973109L;
        final Long osmId2 = 2514541L;
        final String cityName1 = "City1";
        final String cityName2 = "City2";
        City city1 = null;
        City city2 = null;

        List<IDnameDto> IDnameDtos = new ArrayList<IDnameDto>() {{
            add(new IDnameDto(osmId1, cityName1));
            add(new IDnameDto(osmId2, cityName2));
        }};
        try {
            cityService.syncCities(IDnameDtos);
        } catch (Exception e) {
            e.printStackTrace();
            fail();
        }
        try {
            city1 = cityDao.findByOsmId(osmId1);
            city2 = cityDao.findByOsmId(osmId2);
        } catch (InstanceNotFoundException e) {
            fail();
        }
        assertNotNull(city1);
        assertNotNull(city2);
        assertEquals(cityName1, city1.getName());
        assertEquals(cityName2, city2.getName());
        assertEquals(2, cityDao.findAll().size());

        final String newName = "newName";
        IDnameDtos = new ArrayList<IDnameDto>() {{
            add(new IDnameDto(osmId2, newName));
        }};
        try {
            cityService.syncCities(IDnameDtos);
        } catch (Exception e) {
            e.printStackTrace();
            fail();
        }
        try {
            city2 = cityDao.findByOsmId(osmId2);
        } catch (InstanceNotFoundException e) {
            fail();
        }
        assertNotNull(city2);
        assertEquals(newName, city2.getName());
    }


}
