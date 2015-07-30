<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<%@ taglib uri="/struts-tags" prefix="s" %>
    <div class="navbar navbar-default" id="navbar">
			<script type="text/javascript">
				try{ace.settings.check('navbar' , 'fixed')}catch(e){}
			</script>
			
			<div class="navbar-container" id="navbar-container">
				<div class="navbar-header pull-left">
					<a href="#" class="navbar-brand">
						<small>
							<i class="icon-leaf"></i>
							Kamama-OA
						</small>
					</a><!-- /.brand -->
				</div><!-- /.navbar-header -->

				<div class="navbar-header pull-right" role="navigation">
					<ul class="nav ace-nav">
						<li class='light-white'>
							<span id='datetime' style='color:white'></span>&nbsp;&nbsp;&nbsp;
						</li>

						<li class="purple">
							<a data-toggle="dropdown" class="dropdown-toggle" href="#">
								<i class="icon-bell-alt icon-animated-bell"></i>
								<span class="badge badge-important">${fn:length(notices)}</span>
							</a>
							
							<ul class="pull-right dropdown-navbar navbar-pink dropdown-menu dropdown-caret dropdown-close">
								<li class="dropdown-header">
									<i class="icon-warning-sign"></i>${fn:length(notices)}条通知
								</li>
								
								<s:iterator value="notices">
									<li><a href="/ui/problem_queryById.htm?nId=${id }&id=${problemId}">
											<div class="clearfix">
												<span class="pull-left"> 
												<i class="btn btn-xs no-hover btn-pink icon-comment"></i> 
												${sendUser }
												<s:if test="flag ==1">发布新任务</s:if>
												<s:if test="flag ==2">完成任务</s:if>
												<s:if test="flag ==3">提示：你有延时任务</s:if>
												<s:if test="flag ==4">评价了你的任务</s:if>
												<s:if test="flag ==5">给你分配了新的任务</s:if>
											</div>
									</a></li>
								</s:iterator>
	
						</ul>
						</li>
				
						<li class="light-red">
							<a data-toggle="dropdown" href="#" class="dropdown-toggle">
								<img class="nav-user-photo" src="/ui/assets/avatars/user.jpg" alt="Jason's Photo" />
								<span class="user-info">
									<small>欢迎光临,</small>
									${user.account }
								</span>

								<i class="icon-caret-down"></i>
							</a>
							<ul class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">

								<li>
									<a href="#">
										<i class="icon-user"></i>
										个人信息
									</a>
								</li>
								<li class="divider"></li>
	
								<li>
									<a href="/ui/user_logout.htm">
										<i class="icon-off"></i>
										注销	
									</a>
								</li>
							</ul>
						</li>
					</ul><!-- /.ace-nav -->
				</div><!-- /.navbar-header -->
			</div><!-- /.container -->
		</div>
