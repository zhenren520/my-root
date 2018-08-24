package com.zhaoheng.dao;

import java.util.List;

import com.zhaoheng.entity.Country;

/**
 * 这时一个dao
 * 
 * @author Administrator
 *
 */
public interface CountryDao {

	public List<Country> getAllCountry();

	public void insertCountry(Country country);

	public void deleteCountryById(String countryid);

	public Country findById(String countryid);

	public void updateCountry(Country country);

}
