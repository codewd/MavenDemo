package com.mewin.cfg;

/**
 * @author wangdong
 */
public class Configuration {

	private static int pageSize;
	
	public static String keywords = "羊绒,米真羊绒,米真国际,MEWIN,mewin";
	public static String description = "米真描述";
	
	public static String[] STUDENTLIST = {"姓名","专业","毕业学校","学历","出生年月"};
	public static String[] CLIENTLIST = {"姓名","职位","公司","地址","手机号"
											,"电话","传真","邮箱","QQ号","微信","备注"
										};

	static {
		// TODO 读取配置default.properties文件，并初始化所有配置
		pageSize = 10;
	}

	public static int getPageSize() {
		return pageSize;
	}

}
