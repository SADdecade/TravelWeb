package com.karma.dao;

import com.karma.pojo.City;

import java.util.List;

public interface CityMapper {

    int addCity(City city);

    List<City> queryAllCity();

}
