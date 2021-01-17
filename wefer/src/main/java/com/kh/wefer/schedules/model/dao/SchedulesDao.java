
package com.kh.wefer.schedules.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.wefer.schedules.model.domain.Schedules;

@Repository
public class SchedulesDao {

	@Autowired
	private SqlSession sqlSession;

	public int insertSchedules(Schedules schd) {
		return sqlSession.insert("Schedules.insertSchedules",schd);
	}

	public int updateSchedules(Schedules schd) {
		return sqlSession.update("Schedules.updateSchedules",schd);
	}

	public void deleteSchedules(String scid) {
		sqlSession.delete("Schedules.deleteSchedules",scid);
	}

	public List<Schedules> schedulesList() {
		return sqlSession.selectList("Schedules.schedulesList");
	}

	public List<Schedules> schedulesStList(String type) {
		return sqlSession.selectList("Schedules.schedulesStList",type);
	}

	public List<Schedules> schedulesDeptList(String type) {
		return sqlSession.selectList("Schedules.schedulesDeptList",type);
	}
}
