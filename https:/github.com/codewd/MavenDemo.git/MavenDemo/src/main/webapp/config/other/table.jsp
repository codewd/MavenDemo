<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title></title>
		<meta name="keywords" content="" />
		<meta name="description" content="" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />

		<!-- basic styles -->
		<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="assets/css/font-awesome.min.css" />

		<!--[if IE 7]>
		  <link rel="stylesheet" href="assets/css/font-awesome-ie7.min.css" />
		<![endif]-->

		<!-- page specific plugin styles -->

		<!-- fonts -->

		<!-- ace styles -->

		<link rel="stylesheet" href="assets/css/ace.min.css" />
		<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />
		<link rel="stylesheet" href="assets/css/ace-skins.min.css" />

		<!--[if lte IE 8]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->

		<!-- ace settings handler -->

		<script src="assets/js/ace-extra.min.js"></script>

		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

		<!--[if lt IE 9]>
		<script src="assets/js/html5shiv.js"></script>
		<script src="assets/js/respond.min.js"></script>
		<![endif]-->
        <script src="js/jquery.min.js"></script>
	</head>

	<body>
        <!------------------------HEAD---------------------------------------->

		<div class="main-container" id="main-container">
			<script type="text/javascript">
				try{ace.settings.check('main-container' , 'fixed')}catch(e){}
			</script>
			<div class="main-container-inner">
                <!-----------------------LEFT-------------------------------------------------->
				<div class="sidebar" id="sidebar">
					<script type="text/javascript">
						try{ace.settings.check('sidebar' , 'fixed')}catch(e){}
					</script>

					

					<ul class="nav nav-list" id="left-list">
						<script type="text/javascript" src='/ui/js/jquery.min.js'></script>
						<script type="text/javascript" src='/ui/js/confLeft.js'></script>

					
						<script type="text/javascript">
							leftInit();
						</script>

					</ul><!-- /.nav-list -->

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
								<a href="#">Home</a>
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
						<div class="row">
							<div class="col-xs-12">
								<!-- list head and query content -->
								<div class="widget-box transparent collapsed">
									<div class="widget-header widget-header-flat">
										<h4 class="lighter">
											<i class="icon-bar-chart orange"></i>
											列表内容	</h4>
	
										<div class="widget-toolbar">
											<a href="#" data-action="collapse">
												条件查询
												<i class="icon-chevron-up"></i>													</a>												</div>
									</div>
									<div class="widget-body">
										查询的内容
									</div>
								</div>
								
                                 <table id="sample-table-1" class="table table-striped table-bordered table-hover" style="margin-bottom: 0px;">
                                      <thead>
                                          <tr>
                                              <th class="center">
                                                  <label>
                                                      <input type="checkbox" class="ace" onclick='sall()' id="check-row" />
                                                      <span class="lbl"></span>
                                                  </label>
                                              </th>
                                              <th>内容</th>
                                              <th>完成标准</th>
                                              <th class="hidden-480">开始时间</th>

                                              <th>
                                                  <i class="icon-time bigger-110 hidden-480"></i>
                                                  结束时间
                                              </th>
                                              <th class="hidden-480">顺延天数</th>

                                              <th>操作</th>
                                          </tr>
                                      </thead>
	
	                                                     <tbody id="xx">
	                                                     <s:iterator value="recordList">
	                                                     <tr>
	                                                         <td class="center">
	                                                             <label>
	                                                                 <input type="checkbox" class="ace" />
	                                                                 <span class="lbl"></span>
	                                                             </label>
	                                                         </td>
	                                                         <td style="width:35%">
	                                                             ${content }
	                                                         </td>
	                                                         <td class="hidden-480">完成标准</td>
	                                                         <td class="hidden-480">${stime }</td>
	                                                         <td>结束时间</td>
	
	                                                         <td class="hidden-480">
	                                                             <span class="label label-sm label-warning">顺延天数</span>
	                                                         </td>
	                                                         <td>
	                                                             <div class="visible-md visible-lg hidden-sm hidden-xs btn-group">
	                                                                 <button class="btn btn-xs btn-info" data-rel="tooltip" title="修改">
	                                                                     <i class="icon-edit bigger-120"></i></button>
	                                                                 <button class="btn btn-xs btn-danger del-confirm" data-rel="tooltip" title="删除">
	                                                                     <i class="icon-trash bigger-120"></i></button>
	                                                             </div>
	                                                         </td>
	                                                     </tr>
											       </s:iterator>
												        <tr>
												        		<td></td>
												        		<td colspan="6">
												        		 <button class="btn btn-xs btn-success" data-rel="tooltip" title="增加一行">
	                                                                      <i class="icon-plus-sign bigger-150"></i>
	                                                                  </button>
                                 							 <button id="bootbox-confirm" class="btn btn-xs btn-danger" data-rel="tooltip" title="删除选中行">
	                                                                      <i class="icon-trash bigger-150"></i>
	                                                                  </button>
	                                                                  
	                                                           <span class="pull-right center">共${pageCount}页，${recordCount }条数据</span>
												        		</td>
												        </tr>
	                                                     </tbody>
	                                                 </table>

							<div class="pull-right">
								<ul class="pagination">
									<s:if test="currentPage == 1">
										<li class="disabled"><a href="#">
										<i class="icon-double-angle-left"></i></a></li>
									</s:if>
									<s:else>
										<li class=""><a
											href="javascript:gotoPage(${currentPage - 1})"><i
												class="icon-double-angle-left"></i></a></li>
									</s:else>
									<s:iterator begin="%{beginPageIndex}" end="%{endPageIndex}"
										var="num">
										<s:if test="#num == currentPage">
											<%-- 当前页 --%>
											<li class="active"><a href="#">${num }</a></li>
										</s:if>
										<s:else>
											<%-- 非当前页 --%>
											<li><a href="javascript:gotoPage(${num })">${num }</a></li>
										</s:else>
									</s:iterator>
									
									<s:if test="currentPage == pageCount">
										<li class="disabled"><a href="#">
										<i class="icon-double-angle-right"></i></a></li>
									</s:if>
									<s:else>
										<li class=""><a href="javascript:gotoPage(${currentPage + 1})"><i
												class="icon-double-angle-right"></i></a></li>
									</s:else>
								</ul>
							</div>
						</div><!-- col-xs-12 -->
	                   </div><!-- row -->
					</div><!-- /.page-content -->
					
				</div><!-- /.main-content -->

				<!-- 左边设置栏-->
				<div class="ace-settings-container" id="ace-settings-container">
					<div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">
						<i class="icon-cog bigger-150"></i>
					</div>
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
			window.jQuery || document.write("<script src='assets/js/jquery-2.0.3.min.js'>"+"<"+"/script>");
		</script>
		<!-- <![endif]-->

		<!--[if IE]>
        <script type="text/javascript">
         window.jQuery || document.write("<script src='assets/js/jquery-1.10.2.min.js'>"+"<"+"/script>");
        </script>
		<![endif]-->

		<script type="text/javascript">
			if("ontouchend" in document) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="assets/js/bootstrap.min.js"></script>
		<script src="assets/js/typeahead-bs2.min.js"></script>
		<!-- page specific plugin scripts -->
		<script src="assets/js/bootbox.min.js"></script>
		<!-- ace scripts -->
		<script src="assets/js/ace-elements.min.js"></script>
		<script src="assets/js/ace.min.js"></script>
		<script type="text/javascript">
			function gotoPage( pageNum ){
				window.location.href = "/ui/problem_list.action?pageNum=" + pageNum;
				/* 
				$(document.forms[0]).append("<input type='hidden' name='pageNum' value='" + pageNum +"'>");
				document.forms[0].submit(); */
			}
		</script>
		<script type="text/javascript">
			$(function(){
				 $('[data-rel=tooltip]').tooltip();
				 
				 //alert window
				 $("#bootbox-confirm").on(ace.click_event, function() {
						bootbox.confirm("确定要删除选中行吗?", function(result) {
							if(result) {
								
							}
						});
					});
				 $(".del-confirm").on(ace.click_event, function() {
						bootbox.confirm("确定要删除数据吗?", function(result) {
							if(result) {
								
							}
						});
				});
			});
			function sall(){
				
			}
			
		</script>
</body>
</html>
