package com.homepage.web.services;

import java.util.List;

import com.homepage.web.beans.MemberBean;

public interface MemberService {
	public int join(MemberBean bean);
	public List<MemberBean> getList();
	/*void join(String id, String password, String name, String age,
			String address);*/
	String login(String id, String password);
}
