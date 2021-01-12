
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

	public List<Schedules> schedulesList(String test1) {
		return sqlSession.selectList("Schedules.schedulesList",test1);
	}
}
