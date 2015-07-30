package com.mewin.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.mewin.base.BaseDaoImpl;
import com.mewin.entity.User;
import com.mewin.service.UserService;


@Service
public class UserServiceImpl extends BaseDaoImpl<User> implements UserService {

	public User getByLoginNameAndPassword(String loginName, String password) {
		return (User) getSession().createQuery(//
				"FROM User u WHERE u.account=? AND u.psd=?")//
				.setParameter(0, loginName)//
				.setParameter(1, password)
				//.setParameter(1, DigestUtils.md5Hex(password))// 要使用MD5的摘要
				.uniqueResult();
	}

	@Override
	public List<User> findAll(long userId) {
		return getSession().createQuery(//
				"FROM User" + " o where o.id!=? and o.visable=1  order by o.id asc")//
				.setParameter(0,userId)
				.list();
	}

	@Override
	public List<User> underLine(String userId, int part) {
		if (userId.equals("k2")||userId.equals("k3")){
			return getSession().createQuery(//
					"FROM User" + " o where o.visable=1 and o.part=? order by o.id asc")//
					.setParameter(0, part)
					.list();
		}
		return getSession().createQuery(//
				"FROM User" + " o where o.leader=? and o.visable=1 and o.part=? order by o.id asc")//
				.setParameter(0,userId)
				.setParameter(1, part)
				.list();
	}

	public String getLeaderAccount(long userId) {
		return getById(userId).getLeader();
	}

	@Override
	public List getUnderLine(String leader) {
		
		return getSession().createQuery("From User u where u.leader=?")
				.setParameter(0, leader)
				.list();
	}
}
