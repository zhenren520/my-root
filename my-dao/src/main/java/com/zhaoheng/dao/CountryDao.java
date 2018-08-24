package com.zhaoheng.dao;

import java.util.List;

import com.zhaoheng.entity.Country;

/**
 * 这时一个dao
 * 测试分支提交，继续提交，测试提交并推送
 * 仅测试提交
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
