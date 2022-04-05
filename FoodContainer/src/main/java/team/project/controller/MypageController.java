package team.project.controller;

import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import team.project.service.ServiceCenterService;
import team.project.vo.MemberVO;
import team.project.vo.ServiceCenterVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class MypageController {
	
	@Autowired
	private ServiceCenterService serviceCenterService;
	
	@RequestMapping(value = "mypage_main.do", method = RequestMethod.GET)
	public String home(Locale locale, Model model, int member_index) throws Exception {
		
		List<ServiceCenterVO> list = serviceCenterService.list(member_index);
		
		model.addAttribute("list",list);
		
		return "mypage/main";
	}
	
	@RequestMapping(value = "mypage_lookup.do", method = RequestMethod.GET)
	public String home2(Locale locale, Model model) {
		return "mypage/lookup";
	}
	@RequestMapping(value = "mypage_lookupView.do", method = RequestMethod.GET)
	public String home3(Locale locale, Model model) {
		return "mypage/lookupView";
	}
	@RequestMapping(value = "mypage_cancle.do", method = RequestMethod.GET)
	public String home4(Locale locale, Model model) {
		return "mypage/cancle";
	}
	@RequestMapping(value = "mypage_cancleView.do", method = RequestMethod.GET)
	public String home5(Locale locale, Model model) {
		return "mypage/cancleView";
	}
	@RequestMapping(value = "mypage_interItem.do", method = RequestMethod.GET)
	public String home6(Locale locale, Model model) {
		return "mypage/interItem";
	}
	@RequestMapping(value = "mypage_coupon.do", method = RequestMethod.GET)
	public String home7(Locale locale, Model model) {
		return "mypage/coupon";
	}
	@RequestMapping(value = "mypage_review.do", method = RequestMethod.GET)
	public String home8(Locale locale, Model model) {
		return "mypage/review";
	}
	@RequestMapping(value = "mypage_recipe.do", method = RequestMethod.GET)
	public String home9(Locale locale, Model model) {
		return "mypage/recipe";
	}
	@RequestMapping(value = "mypage_inquiries.do", method = RequestMethod.GET)
	public String home10(Locale locale, Model model) {
		return "mypage/inquiries";
	}
	@RequestMapping(value = "mypage_changeInfor.do", method = RequestMethod.GET)
	public String home11(Locale locale, Model model) {
		return "mypage/changeInfor";
	}
	@RequestMapping(value = "mypage_changeInforOk.do", method = RequestMethod.GET)
	public String home12(Locale locale, Model model) {
		return "mypage/changeInforOk";
	}
	@RequestMapping(value = "mypage_addressManage.do", method = RequestMethod.GET)
	public String home13(Locale locale, Model model) {
		return "mypage/addressManage";
	}
	@RequestMapping(value = "mypage_noteManage.do", method = RequestMethod.GET)
	public String home14(Locale locale, Model model) {
		return "mypage/noteManage";
	}
	@RequestMapping(value = "mypage_noteManageView.do", method = RequestMethod.GET)
	public String home15(Locale locale, Model model) {
		return "mypage/noteManageView";
	}
	@RequestMapping(value = "mypage_memberSecession.do", method = RequestMethod.GET)
	public String home16(Locale locale, Model model) {
		return "mypage/memberSecession";
	}
	
}
