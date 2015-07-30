package com.mewin.service;

import java.util.List;

import com.mewin.base.BaseDao;
import com.mewin.entity.User;


public interface UserService extends BaseDao<User> {

	/**
	 * 用户登陆
	 * @param loginName 帐号
	 * @param password 密码
	 * @return
	 */
	public User getByLoginNameAndPassword(String loginName, String password);
	
	public List<User> findAll(long userId);
	
	/**
	 * 获取部门的人
	 * @param userId 登陆人ID
	 * @param part 部门
	 * @return
	 */
	public List<User> underLine(String userId,int part);
	
	/**
	 * 获取领导账号
	 * @param userId
	 * @return
	 */
	public String getLeaderAccount(long userId);
	/**
	 * 获取下属
	 * @param leader
	 * @return
	 */
	public List getUnderLine(String leader);
}
