package com.karma.service;

import com.karma.dao.CityMapper;
import com.karma.pojo.City;

import java.util.List;

public class CityServiceImpl implements CityService {

    private CityMapper cityMapper;

    public void setCityMapper(CityMapper cityMapper) {
        this.cityMapper = cityMapper;
    }

    @Override
    public int addCity(City city) {
        return cityMapper.addCity(city);
    }

    @Override
    public List<City> queryAllCity() {
        return cityMapper.queryAllCity();
    }
}
