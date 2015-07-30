<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title></title>
		<meta name="keywords" content="" />
		<meta name="description" content="" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />

		<!-- basic styles -->

		<link href="/ui/assets/css/bootstrap.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="/ui/assets/css/font-awesome.min.css" />

		<!--[if IE 7]>
		  <link rel="stylesheet" href="/ui/assets/css/font-awesome-ie7.min.css" />
		<![endif]-->

		<!-- page specific plugin styles -->

		<!-- fonts -->

		<!-- ace styles -->

		<link rel="stylesheet" href="/ui/assets/css/ace.min.css" />
		<link rel="stylesheet" href="/ui/assets/css/ace-rtl.min.css" />
		<link rel="stylesheet" href="/ui/assets/css/ace-skins.min.css" />

		<!--[if lte IE 8]>
		  <link rel="stylesheet" href="/ui/assets/css/ace-ie.min.css" />
		<![endif]-->

		<!-- inline styles related to this page -->

		<style>
			.center {
	text-align:center;
}
.center [class*="col-"] {
	margin-top:2px;
	margin-bottom:2px;
	padding-top:4px;
	padding-bottom:4px;

	position:relative;
	text-overflow:ellipsis;
}
.center [class*="col-"]  span{
  position:relative;
  z-index:2;
	
  display: inline-block;
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;

  width: 100%;
}
.center [class*="col-"]:before {
	position:absolute;
	top:0; bottom:0;
	left:2px; right:2px;
	content:"";
	display:block;
	border:1px solid #DDD;
	z-index: 1;
}

.center [class*="col-"]:hover:before {
	background-color:#FCE6A6;
	border-color:#EFD27A;
}
		</style>

		<!-- ace settings handler -->

		<script src="/ui/assets/js/ace-extra.min.js"></script>

		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

		<!--[if lt IE 9]>
		<script src="/ui/assets/js/html5shiv.js"></script>
		<script src="/ui/assets/js/respond.min.js"></script>
		<![endif]-->
        <script src="js/jquery.min.js"></script>
	</head>

	<body>


        <!------------------------HEAD---------------------------------------->
		<jsp:include page="head.jsp"></jsp:include>
		<div class="main-container" id="main-container">
			<script type="text/javascript">
				try{ace.settings.check('main-container' , 'fixed')}catch(e){}
			</script>

			<div class="main-container-inner">
                <!-----------------------LEFT-------------------------------------------------->
					<a class="menu-toggler" id="menu-toggler" href="#">
						<span class="menu-text"></span>
					</a>

					<div class="sidebar" id="sidebar">
						<script type="text/javascript">
							try{ace.settings.check('sidebar' , 'fixed')}catch(e){}
							</script>

							<ul class="nav nav-list" id="left-list">
							<script type="text/javascript" src='${pageContext.request.contextPath}js/jquery.min.js'></script>
							<script type="text/javascript" src='${pageContext.request.contextPath}js/confLeft.js'></script>
	
						
							<script type="text/javascript">
								leftInit();
							</script>
	
						</ul><!-- /.nav-list -->


							<!-- left and head-->


						<div class="sidebar-collapse" id="sidebar-collapse">
							<i class="icon-double-angle-left" data-icon1="icon-double-angle-left" data-icon2="icon-double-angle-right"></i>
						</div>
			
						<script type="text/javascript">
							try{ace.settings.check('sidebar' , 'collapsed')}catch(e){}
						</script>
					</div>


				<div class="main-content">
                    <!---------------------------------TITLE---------------------------------------->
					<div class="breadcrumbs" id="breadcrumbs">
						<script type="text/javascript">
							try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
						</script>

						<ul class="breadcrumb">
							<li>
								<i class="icon-home home-icon"></i>
								<a href="#">控制台</a>
							</li>
							<!--<li class="active">Grid</li>-->
						</ul><!-- .breadcrumb -->

						<div class="nav-search" id="nav-search">
							<form class="form-search">
								<span class="input-icon">
									<input type="text" placeholder="搜索 ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
									<i class="icon-search nav-search-icon"></i>
								</span>
							</form>
						</div><!-- #nav-search -->
					</div>

                    <!------------------------------CONTENT------------------------------------------->
					<div class="page-content">
						<!--<div class="page-header">-->
							<!--<h1>-->
								<!--Grid-->
								<!--<small>-->
									<!--<i class="icon-double-angle-right"></i>-->
									<!--bootstrap grid sizing-->
								<!--</small>-->
							<!--</h1>-->
						<!--</div>&lt;!&ndash; /.page-header &ndash;&gt;-->

						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->

                                <div class="row">
                                <div class="col-xs-12">
                                <!-- PAGE CONTENT BEGINS -->

                                <div class="alert alert-block alert-success">
                                    <button type="button" class="close" data-dismiss="alert">
                                        <i class="icon-remove"></i>									</button>

                                    <i class="icon-ok green"></i>

                                    欢迎使用
                                    <strong class="green">
                                        Kamamama OA 办公系统
                                        <small>(v1.0.0)</small>									</strong>
                                    ,真诚做人，认真做事.							</div>
                                <h4 class="header blue">统计数据</h4>
                                <div class="row">
                                <div class="space-6"></div>

                                <div class="col-sm-7 infobox-container">
                                    <a href="/ui/problem_queryRecord.htm?flag=1">
	                                    <div class="infobox infobox-green  ">
	                                        <div class="infobox-icon">
	                                            <i class="icon-comments"></i>											</div>
	
	                                        <div class="infobox-data">
	                                            <span class="infobox-data-number">${list[0] }</span>
	                                            <div class="infobox-content">今日任务</div>
	                                        </div>
	                                    </div></a>
									<a href="/ui/problem_queryRecord.htm?flag=2">
	                                    <div class="infobox infobox-red  ">
	                                        <div class="infobox-icon">
	                                            <i class="icon-warning-sign"></i>											</div>
	
	                                        <div class="infobox-data">
	                                            <span class="infobox-data-number">${list[1] }</span>
	                                            <div class="infobox-content">到期任务</div>
	                                        </div>
	                                        <div class="badge badge-success">
	                                        <fmt:formatNumber value="${list[1]/list[9]}" maxFractionDigits="0"/>
	                                            %
	                                            <!-- <i class="icon-arrow-up"></i> -->
	                                        </div>
	                                    </div></a>
									<a href="/ui/problem_queryRecord.htm?flag=3">
	                                    <div class="infobox infobox-pink  ">
	                                        <div class="infobox-icon">
	                                            <i class="icon-shopping-cart"></i>											</div>
	
	                                        <div class="infobox-data">
	                                            <span class="infobox-data-number">${list[2] }</span>
	                                            <div class="infobox-content">自发任务</div>
	
	                                        </div>
	                                        <div class="badge badge-success">
	                                            <fmt:formatNumber value="${ (list[9])/list[2]}" maxFractionDigits="0"/>%
	                                            <!-- <i class="icon-arrow-up"></i> -->
	                                        </div>
	                                    </div></a>
									<a href="/ui/problem_queryRecord.htm?flag=4">
	                                    <div class="infobox infobox-blue3  ">
	                                        <div class="infobox-icon">
	                                            <i class="icon-beaker"></i>											</div>
	
	                                        <div class="infobox-data">
	                                            <span class="infobox-data-number">${list[3] }</span>
	                                            <div class="infobox-content">领导分配</div>
	
	                                        </div>
	                                        <div class="badge badge-success">
	                                            <fmt:formatNumber value="${ (list[9])/list[3]}" maxFractionDigits="0"/>%
	                                        </div>
	                                    </div></a>
									<a href="/ui/problem_queryRecord.htm?flag=5">
	                                    <div class="infobox infobox-orange2  ">
	
	                                        <div class="infobox-icon">
	                                            <i class="icon-th"></i></div>
	                                            <div class="infobox-data">
	                                            <span class="infobox-data-number">${list[4] }</span>
	                                            <div class="infobox-content">总共完成的任务</div>
	                                        </div>
	                                        <div class="badge badge-success">
	                                            <fmt:formatNumber value="${ (list[9])/list[4]}" maxFractionDigits="0"/>%
	                                        </div>
	
	                                    </div></a>
									<a href="/ui/problem_queryRecord.htm?flag=6">
	                                    <div class="infobox infobox-grey  ">
	
	                                        <div class="infobox-icon">
	                                            <i class="icon-flag"></i></div>
	                                        <div class="infobox-data">
	                                            <span class="infobox-data-number">${list[5] }</span>
	
	                                            <div class="infobox-content">
	                                                未完成</div>
	                                        </div>
	                                        <div class="badge badge-success">
	                                            <fmt:formatNumber value="${ (list[9])/list[5]}" maxFractionDigits="0"/>%
	                                        </div>
	                                    </div></a>

                                    <div class="space-6"></div>
									<a href="/ui/problem_queryRecord.htm?flag=7">
	                                    <div class="infobox infobox-orange infobox-small infobox-dark">
	                                        <div class="infobox-progress">
	                                            <div class="easy-pie-chart percentage" data-percent="61" data-size="39">
	                                                <span class="percent">${list[6] }个</span>												</div>
	                                        </div>
	
	                                        <div class="infobox-data">
	                                            <div class="infobox-content">获得</div>
	                                            <div class="infobox-content">A评分</div>
	                                        </div>
	                                    </div></a>
									<a href="/ui/problem_queryRecord.htm?flag=8">
	                                    <div class="infobox infobox-blue infobox-small infobox-dark">
	                                        <div class="infobox-progress">
	                                            <div class="easy-pie-chart percentage" data-percent="61" data-size="39">
	                                                <span class="percent">${list[7] }个</span>												</div>
	                                        </div>
	                                        <div class="infobox-data">
	                                            <div class="infobox-content">获得</div>
	                                            <div class="infobox-content">B评分</div>
	                                        </div>
	                                    </div></a>
									<a href="/ui/problem_queryRecord.htm?flag=9">
	                                    <div class="infobox infobox-grey infobox-small infobox-dark">
	                                        <div class="infobox-progress">
	                                            <div class="easy-pie-chart percentage" data-percent="61" data-size="39">
	                                                <span class="percent">${list[8] }个</span>
	                                            </div>
	                                        </div>
	
	                                        <div class="infobox-data">
	                                            <div class="infobox-content">获得</div>
	                                            <div class="infobox-content">C评分</div>
	                                        </div>
	                                    </div></a>
                                </div>

                                <div class="vspace-sm"></div>


                                <div class="row">
                                    <div class="col-sm-5">
                                        <div class="widget-box transparent">
                                            <div class="widget-header widget-header-flat">
                                                <h4 class="lighter">
                                                    <i class="icon-star orange"></i>
                                                    最近登陆											</h4>

                                                <div class="widget-toolbar">
                                                    <a href="#" data-action="collapse">
                                                        <i class="icon-chevron-up"></i>													</a>												</div>
                                            </div>

                                            <div class="widget-body">
                                                <div class="widget-main no-padding">
                                                    <table class="table table-bordered table-striped">
                                                        <thead class="thin-border-bottom">
                                                        <tr>
                                                            <th>
                                                                <i class="icon-caret-right blue"></i>
                                                                花名																</th>

                                                            <th>
                                                                <i class="icon-caret-right blue"></i>
                                                                时间																</th>

                                                            <th class="hidden-480">
                                                                <i class="icon-caret-right blue"></i>
                                                                状态																</th>
                                                        </tr>
                                                        </thead>

                                                        <tbody>
                                                        <tr>
                                                            <td>K2</td>

                                                            <td>
                                                                <b class="green">14-02－05</b>
                                                            </td>

                                                            <td class="hidden-480">
                                                                <span class="label label-info arrowed-right arrowed-in">在线</span>																</td>
                                                        </tr>

                                                        <tr>
                                                            <td>K3</td>

                                                            <td>
                                                                <b class="green">14-02－05</b>
                                                            </td>
                                                            <td class="hidden-480">
																	<span class="label arrowed">
																	离线	</span></td>
                                                        </tr>
                                                        <tr>
                                                            <td>K4</td>

                                                            <td>
                                                                <b class="green">14-02－05</b>
                                                            </td>
                                                            <td class="hidden-480">
																	<span class="label arrowed">
																	离线	</span></td>
                                                        </tr>
                                                        <tr>
                                                            <td>K5</td>

                                                            <td>
                                                                <b class="green">14-02－05</b>
                                                            </td>
                                                            <td class="hidden-480">
																	<span class="label arrowed">
																	离线	</span></td>
                                                        </tr>
                                                        <tr>
                                                            <td>K6</td>

                                                            <td>
                                                                <b class="green">14-02－05</b>
                                                            </td>
                                                            <td class="hidden-480">
																	<span class="label arrowed">
																	离线	</span></td>
                                                        </tr>

                                                     
                                                        </tbody>
                                                    </table>
                                                </div><!-- /widget-main -->
                                            </div><!-- /widget-body -->
                                        </div><!-- /widget-box -->
                                    </div>

                                </div>


                                <h4 class="header green">快捷按钮</h4>
                                <div class="row">
                                    <div class="col-sm-10">
                                        <button class="btn btn-warning" onclick="location.href='/ui/problem_addMyUI.htm'">给自己添加任务</button>
                                        <button class="btn btn-primary" onclick="location.href='/ui/problem_addMyUI.htm'">给下属添加任务</button>
                                        <button class="btn btn-info" onclick="location.href='/ui/problem_queryProblem.htm?flag=0'">我的工作计划</button>
                                        <button class="btn btn-pink" onclick="location.href='/ui/fileUp_query.htm'">网络硬盘</button>
                                    </div>
                                </div>
                                <!-- PAGE CONTENT ENDS -->
                                </div><!-- /.col -->
                                </div><!-- /.row -->
                                </div><!-- /.page-content -->
								<!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div><!-- /.row -->
					</div><!-- /.page-content -->
				</div><!-- /.main-content -->

				<div class="ace-settings-container" id="ace-settings-container">
					<div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">
						<i class="icon-cog bigger-150"></i>
					</div>

                    <!-- 左边设置栏-->
					<div class="ace-settings-box" id="ace-settings-box">
						<div>
							<div class="pull-left">
								<select id="skin-colorpicker" class="hide">
									<option data-skin="default" value="#438EB9">#438EB9</option>
									<option data-skin="skin-1" value="#222A2D">#222A2D</option>
									<option data-skin="skin-2" value="#C6487E">#C6487E</option>
									<option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
								</select>
							</div>
							<span>&nbsp; Choose Skin</span>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-navbar" />
							<label class="lbl" for="ace-settings-navbar"> Fixed Navbar</label>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-sidebar" />
							<label class="lbl" for="ace-settings-sidebar"> Fixed Sidebar</label>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-breadcrumbs" />
							<label class="lbl" for="ace-settings-breadcrumbs"> Fixed Breadcrumbs</label>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl" />
							<label class="lbl" for="ace-settings-rtl"> Right To Left (rtl)</label>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-add-container" />
							<label class="lbl" for="ace-settings-add-container">
								Inside
								<b>.container</b>
							</label>
						</div>
					</div>
				</div><!-- /#ace-settings-container -->
			</div><!-- /.main-container-inner -->

			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="icon-double-angle-up icon-only bigger-110"></i>
			</a>
		</div><!-- /.main-container -->

		<!-- basic scripts -->

		<!--[if !IE]> -->

		<script src="js/jquery.min.js"></script>

		<!-- <![endif]-->

		<!--[if IE]>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
        <![endif]-->

		<!--[if !IE]> -->

		<script type="text/javascript">
			window.jQuery || document.write("<script src='/ui/assets/js/jquery-2.0.3.min.js'>"+"<"+"/script>");
		</script>

		<!-- <![endif]-->

		<!--[if IE]>
        <script type="text/javascript">
         window.jQuery || document.write("<script src='/ui/assets/js/jquery-1.10.2.min.js'>"+"<"+"/script>");
        </script>
<![endif]-->

		<script type="text/javascript">
			if("ontouchend" in document) document.write("<script src='/ui/assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="/ui/assets/js/bootstrap.min.js"></script>
		<script src="/ui/assets/js/typeahead-bs2.min.js"></script>

		<!-- page specific plugin scripts -->

		<!-- ace scripts -->

		<script src="/ui/assets/js/ace-elements.min.js"></script>
		<script src="/ui/assets/js/ace.min.js"></script>
</body>
</html>