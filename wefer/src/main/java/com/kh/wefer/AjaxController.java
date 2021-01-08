package com.kh.wefer;

import java.util.ArrayList;
import java.util.List;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.google.gson.Gson;
import com.kh.wefer.member.model.domain.Member;
import com.kh.wefer.member.model.service.MemberService;

@RestController
public class AjaxController {
	@Autowired 
	private MemberService mService;
	@ResponseBody
	@PostMapping("/memeberList")
	public Object restController() {
		List<Member> arrList = new ArrayList<Member>();
		arrList= mService.memberList();
		return arrList;
	}
	
	@ResponseBody
	@RequestMapping(value="/deptmemberlist.do")
	public Object deptlist(@RequestParam(name="dept" ,defaultValue = "") String dept_no) {
		List<Member> list = new ArrayList<Member>();

		if(dept_no==null||dept_no.equals("")) {	
			try {
				list = mService.memberAllList();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else{
			try {
				list = mService.deptmemberlist(dept_no);				
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		System.out.println(list);
		return list;
	}
	
	@ResponseBody
	@RequestMapping(value="/searchmemberlist.do")
	public Object searchmemberlist(
			@RequestParam(name="keyword" ,defaultValue = "") String keyword) {
		System.out.println(keyword);
		List<Member> list = new ArrayList<Member>();
		if(keyword==null||keyword.equals("")) {	
			try {
				list = mService.memberAllList();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else{
			try {
				list = mService.searchmemberlist(keyword);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		System.out.println(list);
		return list;
	}
}
