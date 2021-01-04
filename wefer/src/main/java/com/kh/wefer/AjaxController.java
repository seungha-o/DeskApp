package com.kh.wefer;

import java.util.ArrayList;
import java.util.List;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.google.gson.Gson;
import com.kh.wefer.member.model.domain.Member;
import com.kh.wefer.member.model.service.MemberService;

@RestController
public class AjaxController {
	@Autowired 
	private MemberService mService; // impl에있는 service호출
	
	@ResponseBody
	@PostMapping("/memeberList")
	public Object restController() {
		
		System.out.println("aaa");
		List<Member> arrList = new ArrayList<Member>();
		arrList= mService.memberList();
		System.out.println(arrList.get(0).getName());
		
//		Gson gson = new Gson();
//		JSONObject.fromObject(gson.toJson(arrList).toString());
		
		return arrList;
	}
}
