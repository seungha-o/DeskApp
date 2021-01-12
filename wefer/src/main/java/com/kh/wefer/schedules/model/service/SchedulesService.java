
  package com.kh.wefer.schedules.model.service;
  
  import java.util.List;
  
  import com.kh.wefer.schedules.model.domain.Schedules;
  
  public interface SchedulesService {
  
  int insertSchedules(Schedules schd);
  
  List<Schedules> schedulesList(String test1);
  
  }
 