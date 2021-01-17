
package com.kh.wefer.schedules.model.service;

import java.util.List;
import com.kh.wefer.schedules.model.domain.Schedules;

public interface SchedulesService {
	
	// 일정추가
	int insertSchedules(Schedules schd);
	
	// 일정리스트 조회
	List<Schedules> schedulesList();
	List<Schedules> schedulesStList(String type);
	List<Schedules> schedulesDeptList(String type);

	// 일정수정
	void updateSchedules(Schedules schd);
	
	// 일정삭제
	void deleteSchedules(String scid);
}
