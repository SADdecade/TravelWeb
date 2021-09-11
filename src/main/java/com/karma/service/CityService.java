package com.karma.service;

import com.karma.pojo.City;

import java.util.List;

public interface CityService {

    int addCity(City city);

    List<City> queryAllCity();

}
