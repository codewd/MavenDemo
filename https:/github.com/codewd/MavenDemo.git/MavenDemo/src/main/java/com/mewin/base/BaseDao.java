package com.mewin.base;

import java.util.List;

import com.mewin.util.HqlHelper;
import com.mewin.entity.PageBean;

public interface BaseDao<T> {

	/**
	 * 保存实体
	 * 
	 * @param entity
	 */
	void save(T entity);

	/**
	 * 删除实体
	 * 
	 * @param id
	 */
	void delete(Long id);

	/**
	 * 更新实体
	 * 
	 * @param entity
	 */
	void update(T entity);

	/**
	 * 查询实体，如果id为null，则返回null，并不会抛异常。
	 * 
	 * @param id
	 * @return
	 */
	T getById(Long id);
	/**
	 * 按某个字段查询实体
	 * @param param 参数
	 * @param filed  字段名
	 * @return
	 */
	T getByFiled(Object param,String filed);
	
	List getBySQL(String sql);

	/**
	 * 查询实体
	 * 
	 * @param ids
	 * @return
	 */
	List<T> getByIds(Long[] ids);
	List<T> getByIds(Object[] ids);
	List<T> getByFileds(Object[] ids,String filed);
	List<T> getByFileds(Object[] params,String[] filed);
	
	/**
	 * 查询所有
	 * 
	 * @return
	 */
	List<T> findAll();

	/**
	 * 公共的查询分页信息的方法
	 * 
	 * @param pageNum
	 * @param queryListHQL
	 *            查询数据列表的HQL语句，如果在前面加上“select count(*) ”就变成了查询总数量的HQL语句了
	 * 
	 * @param parameters
	 *            参数列表，顺序与HQL中的'?'的顺序一一对应。
	 * @return
	 */
	@Deprecated
	PageBean getPageBean(int pageNum, String queryListHQL, Object[] parameters);

	/**
	 * 公共的查询分页信息的方法
	 * 
	 * @param pageNum
	 * @param hqlHelper
	 *            查询条件（HQL语句与参数列表）
	 * @return
	 */
	PageBean getPageBean(int pageNum, HqlHelper hqlHelper);
}
