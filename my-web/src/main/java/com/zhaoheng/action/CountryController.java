package com.zhaoheng.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;

import com.opensymphony.xwork2.ActionSupport;
import com.zhaoheng.entity.Country;
import com.zhaoheng.service.CountryService;

@SuppressWarnings("unchecked")
public class CountryController extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private List<Country> list;

	private Country country;
	
	private String countryid;


	public CountryController() {
		System.out.println("已经启动~~~~~~~~~~~~~~");
	}

	@Autowired
	private CountryService countryService;

	/**
	 * 欢迎页面
	 * 
	 * @return
	 */
	public String indexPage() {
		return "index";
	}

	public String getAllCountry() {
		list = countryService.getAllCountry();
		return "allCountry";
	}

	public String insertCountry() {
		countryService.insertCountry(country);
		// return "redirect:getAllCountry.do";
		return "success";
	}

	// 用于跳转到jsp
	public String addCountryPage() {
		return "addCountry";
	}

	// 用于跳转到jsp
	public String updateCountryPage() {
		return "updateCountry";
	}

	public String deleteCountryById() {
		String[] countryids = countryid.split(",");
		for (int i = 0; i < countryids.length; i++) {
			String id = countryids[i];
			countryService.deleteCountryById(id);
		}
		// return "redirect:getAllCountry.do";
		return "success";
	}

	public String findById() {
		country = countryService.findById(countryid);
		return "success";
	}

	public String updateCountry() {
		countryService.updateCountry(country);
		//return "redirect:getAllCountry.do";
		return "success";
	}

	public List<Country> getList() {
		return list;
	}

	public void setList(List<Country> list) {
		this.list = list;
	}
	
	public String getCountryid() {
		return countryid;
	}

	public void setCountryid(String countryid) {
		this.countryid = countryid;
	}

	public Country getCountry() {
		return country;
	}

	public void setCountry(Country country) {
		this.country = country;
	}
}
