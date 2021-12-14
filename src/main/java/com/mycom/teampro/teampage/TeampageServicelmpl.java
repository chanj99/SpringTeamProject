package com.mycom.teampro.teampage;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TeampageServicelmpl implements TeampageService{
	
	@Autowired
	TeampageDAO teampageDAO;
	
	@Override
	public int insertTeampage(TeampageVO vo) {
		 return teampageDAO.insertTeampage(vo);
	}
	@Override
	public int deleteTeampage(int id) {
		return teampageDAO.deleteTeampage(id);
	}
	@Override
	public int updateTeampage(TeampageVO vo) {
		return teampageDAO.updateTeampage(vo);
	}
	@Override
	public TeampageVO getTeampage(int seq) {
		return teampageDAO.getTeampage(seq);
	}
	
	@Override
	public List<TeampageVO> getTeampageList() {
		return teampageDAO.getTeampageList();	
	}
	
}
