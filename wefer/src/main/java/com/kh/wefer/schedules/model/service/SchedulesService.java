
package com.kh.wefer.schedules.model.service;

import java.util.List;
import com.kh.wefer.schedules.model.domain.Schedules;

public interface SchedulesService {
	// 일정추가
	int insertSchedules(Schedules schd);
	
	// 일정리스트
	List<Schedules> schedulesList();
	List<Schedules> schedulesstList(String type);
	List<Schedules> schedulesdeptList(String type);


	// 일정 수정
	void updateSchedules(Schedules schd);
	
	// 일정 삭제
	void deleteSchedules(String scid);
}
