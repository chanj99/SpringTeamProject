package com.mycom.teampro.teampage;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class TeampageDAO {

	@Autowired
	SqlSession sqlSession;
	
	public int insertTeampage(TeampageVO vo) {
		int result = sqlSession.insert("Teampage.insertTeampage", vo);
		return result;
	}	
	public int updateTeampage(TeampageVO vo) {
		int result = sqlSession.update("Teampage.updateTeampage", vo);
		return result;
	}
	public int deleteTeampage(int id) {
		int one = sqlSession.delete("Teampage.deleteTeampage", id);
		return one;
	}
	public TeampageVO getTeampage(int seq) {
		TeampageVO one = sqlSession.selectOne("Teampage.getTeampage", seq);
		return one;
	}
	public List<TeampageVO> getTeampageList(){
		List<TeampageVO> list = sqlSession.selectList("Teampage.getTeampageList");
		return list;	
	}
	

}
