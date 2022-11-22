package com.test.test1;

import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import VO.TestVO;
import dao.TestDAO;
import util.Comm;
@Controller
public class TestController {
@Autowired
ServletContext app;

@Autowired
HttpServletRequest request;
TestDAO test_dao;
public void setTest_dao(TestDAO test_dao) {
	this.test_dao = test_dao;
}
@RequestMapping (value= {"/","test.do"})
public String test() {
//public String test(Model model) {
//	List<TestVO> list=test_dao.selectList();
//	model.addAttribute("abcd",list);
	return Comm.VIEW_PATH+"test_list.jsp";
}
@RequestMapping ("/result.do")
	public String result(Model model) {
		List<TestVO> list=test_dao.selectList();
		model.addAttribute("list",list);
		return Comm.VIEW_PATH+"result.jsp";
	
}
@RequestMapping("/insert.do")
public String insert(TestVO vo){
	test_dao.insert(vo);
	return "redirect:test.do";
}
//@RequestMapping(value = "/spendAdminCheck") // 응답 url
//public @ResponseBody int adminCheck(String shopCode, String memberBirth, String adminPw) {
//        
//    int result = spendService.spendAdminCheck(shopCode, memberBirth, adminPw); // DB 조회
//    System.out.println(result + " <-- result adminCheck() SpendController.java"); // 결과 2
//        
//    return result;
//}

}
