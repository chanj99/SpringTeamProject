package com.mycom.teampro.teampage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TeampageController {
	
	@Autowired
	TeampageService teampageService;
	
	//목록 보여주기
	@RequestMapping (value = "/teampage/list", method = RequestMethod.GET)
	public String teampagelist(Model model) {
		model.addAttribute("list", teampageService.getTeampageList());
		return "posts";
	}

	//추가 폼
	@RequestMapping (value = "/teampage/add", method=RequestMethod.GET)
	public String addPost() {
		return "addpostform";
	}
	
	//추가된 데이터 저장 
	@RequestMapping(value = "/teampage/addok", method = RequestMethod.POST)
	public String addPostOK(TeampageVO vo) {
		int i = teampageService.insertTeampage(vo);
		if(i == 0)
			System.out.println("데이터 추가 실패 ");
		else
			System.out.println("데이터 추가 성공!!");
		return "redirect:list";
	}
	
	//수정 폼 
	@RequestMapping(value = "/teampage/editpost/{id}", method = RequestMethod.GET)
	public String editPost(@PathVariable("id") int id, Model model) {
		TeampageVO teampageVO = teampageService.getTeampage(id);
		model.addAttribute("teampageVO", teampageVO);
		return "editform";
	}
	
	//수정데이터 처리
	@RequestMapping(value ="/teampage/editok", method = RequestMethod.POST)
	public String editPostOK(TeampageVO vo) {
		int i = teampageService.updateTeampage(vo);
		if(i == 0)
			System.out.println("데이터 수정 실패");
		else
			System.out.println("데이터 수정 성공!!");
		return "redirect:list";
	}
	
	//삭제처리
	@RequestMapping(value = "teampage/deleteok/{id}", method = RequestMethod.GET)
	public String deletePost(@PathVariable("id") int id) {
		int i = teampageService.deleteTeampage(id);
		if(i == 0)
			System.out.println("데이터 삭제 실패");
		else
			System.out.println("데이터 삭제 성공!!");
		
		return "redirect:../list";
	}
	
}
