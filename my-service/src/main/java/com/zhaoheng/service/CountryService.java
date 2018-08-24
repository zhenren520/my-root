package com.zhaoheng.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.zhaoheng.dao.CountryDao;
import com.zhaoheng.entity.Country;

@Service
public class CountryService {

	public CountryService(){
		System.out.println("启动CountryService~~~~~~~~");
	}
	
	@Resource
	//@Autowired也可以用
	private CountryDao countryDao;
	
	public List<Country> getAllCountry() {
        return countryDao.getAllCountry();
    }
	
	public void insertCountry(Country country){
		countryDao.insertCountry(country);
	}

	public void deleteCountryById(String countryid){
		countryDao.deleteCountryById(countryid);
	}

	public Country findById(String countryid){
		return countryDao.findById(countryid);
		
	}

	public void updateCountry(Country country){
		countryDao.updateCountry(country);
	}
	
}
