package com.zhaoheng.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zhaoheng.entity.Country;
import com.zhaoheng.service.CountryService;

@Controller
@RequestMapping("countryController")
public class CountryController {

	public CountryController() {
		System.out.println("已经启动~~~~~~~~~~~~~~");
	}

	@Autowired
	private CountryService countryService;

	/**
	 * 欢迎页面
	 * @return
	 */
	@RequestMapping("indexPage")
	public String indexPage(){
		return "index";
	}
	
	@RequestMapping("getAllCountry")
	public String getAllCountry(ModelMap model) {
		List<Country> list = countryService.getAllCountry();
		model.addAttribute("list", list);
		return "allCountry";
	}

	@RequestMapping("insertCountry")
	public String insertCountry(Country country) {
		countryService.insertCountry(country);
		return "redirect:getAllCountry.do";
	}

	// 用于跳转到jsp
	@RequestMapping("addCountryPage")
	public String addCountryPage() {
		return "addCountry";
	}

	// 用于跳转到jsp
	@RequestMapping("updateCountryPage")
	public String updateCountryPage() {
		return "updateCountry";
	}

	@RequestMapping("deleteCountryById")
	public String deleteCountryById(String countryid) {
		String []countryids = countryid.split(",");
		for (int i = 0; i < countryids.length; i++) {
			String id = countryids[i];
			countryService.deleteCountryById(id);
		}
		return "redirect:getAllCountry.do";
	}

	@RequestMapping("findById")
	public String findById(ModelMap model, String countryid) {
		Country country = countryService.findById(countryid);
		model.addAttribute("country", country);
		return "updateCountry";
	}
	
	@RequestMapping("updateCountry")
	public String updateCountry(Country country) {
		countryService.updateCountry(country);
		return "redirect:getAllCountry.do";
	}
}
