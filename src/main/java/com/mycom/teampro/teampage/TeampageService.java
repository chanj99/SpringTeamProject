package com.mycom.teampro.teampage;

import java.util.List;

public interface TeampageService {
	public int insertTeampage(TeampageVO vo);
	public int deleteTeampage(int id);
	public int updateTeampage(TeampageVO vo);
	public TeampageVO getTeampage(int seq);
	public List<TeampageVO> getTeampageList();
}
