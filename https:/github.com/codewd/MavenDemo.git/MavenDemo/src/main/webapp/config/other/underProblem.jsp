<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<title>Kamama-OA</title>
		
		<!-- basic styles -->
		<link href="/ui/assets/css/bootstrap.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="/ui/assets/css/font-awesome.min.css" />
		
		<link rel="stylesheet" href="/ui/assets/css/ui.jqgrid.css" />

		<link rel="stylesheet" href="/ui/assets/css/ace.min.css" />
		<link rel="stylesheet" href="/ui/assets/css/ace-rtl.min.css" />
		<link rel="stylesheet" href="/ui/assets/css/ace-skins.min.css" />

		<script src="/ui/assets/js/ace-extra.min.js"></script>
   
  </head>
  <body>
		<jsp:include page="/ui/head.jsp"></jsp:include>
		
		<div class="main-container" id="main-container">
			<script type="text/javascript">
				try{ace.settings.check('main-container' , 'fixed')}catch(e){}
			</script>

			<div class="main-container-inner">
				<a class="menu-toggler" id="menu-toggler" href="#">
					<span class="menu-text"></span>
				</a>

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
					
<div class="breadcrumbs" id="breadcrumbs">
						<script type="text/javascript">
							try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
						</script>

						<ul class="breadcrumb">
							

						</ul><!-- .breadcrumb -->

					</div>
					<div class="page-content">
						
						<div class="row">
							<div class="col-xs-12">
								<s:if test="msg != null">
									<div class="alert alert-info">
										<i class="icon-hand-right"></i>
										${msg }
										<button class="close" data-dismiss="alert">
											<i class="icon-remove"></i>
										</button>
									</div>
								</s:if>
								
								<!-- PAGE CONTENT BEGINS -->
								<s:iterator value="#users">
								<button class="btn btn-danger"
										onclick="bHref('problem_queryByUserId.htm?underUserId=${id}&part=${part }')">${account
										}(${name })</button>
								</s:iterator>
								<font color=red>${msg }</font>
								<table id="grid-table"></table>

								<div id="grid-pager"></div>

								<script type="text/javascript">
									var $path_base = "/";//this will be used in gritter alerts containing images
								</script>
								<div id="dialog-message" class="hide">
									<form action=""></form>
									<center
										<p>
											<input type="radio" name='pj' value='A' id='pj1'>创新工作 &nbsp;&nbsp;
											<input type="radio" name='pj' value='B' id='pj1'>日常工作&nbsp;&nbsp;
											<input type="radio" name='pj' value='C' id='pj1'>收尾工作
										</p></center>
	
									<div class="hr hr-12 hr-double"></div>
	
									<p>
										<textarea rows="2" style="width: 100%" name='comment' id='pComment'></textarea>
									</p>
								</div>
								<!-- PAGE CONTENT ENDS -->
							</div><!-- /.col 
						</div><!-- /.row -->
					</div><!-- /.page-content -->
				</div><!-- /.main-content -->

				
			</div><!-- /.main-container-inner -->

			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="icon-double-angle-up icon-only bigger-110"></i>
			</a>
		</div><!-- /.main-container -->

		<!-- basic scripts -->

		<!--[if !IE]> -->


		<!-- <![endif]-->

		<!--[if IE]>

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
		<script src="/ui/assets/js/bootstrap.min.js"></script>
		<script src="/ui/assets/js/typeahead-bs2.min.js"></script>

		<!-- page specific plugin scripts -->

		<script src="/ui/assets/js/date-time/bootstrap-datepicker.min.js"></script>
		<script src="/ui/assets/js/jqGrid/jquery.jqGrid.min.js"></script>
		<script src="/ui/assets/js/jqGrid/i18n/grid.locale-en.js"></script>
		<script src="/ui/assets/js/jquery-ui-1.10.3.full.min.js"></script>
		<script src="/ui/assets/js/jquery.ui.touch-punch.min.js"></script>

		<!-- ace scripts -->
		
		<form action="problem_submit.htm" name="pSubmit">
			<input type="hidden" name="pId" value="" id="pId">
		</form>
		
		<script type="text/javascript">
			function s(pId){
				document.getElementById("pId").value = pId;
				document.pSubmit.submit();
			}
			
		</script>

		<script src="/ui/assets/js/ace-elements.min.js"></script>
		<script src="/ui/assets/js/ace.min.js"></script>
		
		<!-- inline scripts related to this page -->
		<script type="text/javascript">
			var s1 = "<font color='green'>未完成</font>";
			var s2 = "<button class='btn-dialog' >评价</button>";
			
			var grid_data = 
			[ 
				<s:iterator value="#list" var="l">
						{ids:"${l.id}",content:'${content}',fstanderd:"${fstanderd}",stime:"${stime}",ftime:"${ftime}",days:"0",
							submit:<s:if test="#l.flag == 0">s1</s:if><s:else>"<button onclick='bOncilck(${l.id})' >评价</button>"</s:else>
							,comment:"${comment}",
						},
				</s:iterator>
			];	
			
			jQuery(function($) {
				var grid_selector = "#grid-table";
				var pager_selector = "#grid-pager";
			
				jQuery(grid_selector).jqGrid({
					//direction: "rtl",
					
					data: grid_data, 
					datatype: "local",
					height: 500,//内容	完成标准	完成时间	完成情况	顺延天数	工作提交
					colNames:[' ','id','内容','完成标准','开始时间','结束时间','顺延天数','工作状态','领导评价'],

					colModel:[
						{name:'myac',index:'', width:80, fixed:true, sortable:false, resize:false,
							formatter:'actions', 
							formatoptions:{ 
								keys:true,
								delOptions:{recreateForm: true, beforeShowForm:beforeDeleteCallback},
								//editformbutton:true, editOptions:{recreateForm: true, beforeShowForm:beforeEditCallback}
							}
						},
						//<!--{name:'id',index:'id', width:60, sorttype:"int", editable: true},-->
						
						{name:'ids',index:'ids',width:350, editable:false,key:true,hidden:true},
						{name:'content',index:'content',width:350, editable:true, editoptions:{size:"20",maxlength:"30"}},
						{name:'fstanderd',index:'fstanderd',width:180, editable:true, sorttype:"date",unformat: pickDate},
						{name:'stime',index:'stime', width:90,editable: true,sorttype:"date",unformat: pickDate},
						{name:'ftime',index:'ftime', width:90,editable: true,sorttype:"date",unformat: pickDate},
						{name:'days',index:'days', width:60,editable: true,editoptions:{size:"20",maxlength:"30"}},
						{name:'submit',index:'submit', width:75,editable: false,editoptions:{size:"20",maxlength:"30"}},
						{name:'comment',index:'comment', width:200,editable: false,editoptions:{size:"20",maxlength:"30"}},
					], 
			
					viewrecords : true,
					rowNum:20,
					rowList:[10,20,30],
					pager : pager_selector,
					altRows: true,
					//toppager: true,
					
					multiselect: true,
					//multikey: "ctrlKey",
			        multiboxonly: true,
			
					loadComplete : function() {
						var table = this;
						setTimeout(function(){
							styleCheckbox(table);
							
							updateActionIcons(table);
							updatePagerIcons(table);
							enableTooltips(table);
						}, 0);
					},
			
					editurl: "/ui/problem_jqgrid.action",//nothing is saved
					caption: "工作内容列表:",
					//autowidth: true
			
				});
			
				//enable search/filter toolbar
				//jQuery(grid_selector).jqGrid('filterToolbar',{defaultSearch:true,stringResult:true})
			
				//switch element when editing inline
				function aceSwitch( cellvalue, options, cell ) {
					setTimeout(function(){
						$(cell) .find('input[type=checkbox]')
								.wrap('<label class="inline" />')
							.addClass('ace ace-switch ace-switch-5')
							.after('<span class="lbl"></span>');
					}, 0);
				}
				//enable datepicker
				function pickDate( cellvalue, options, cell ) {
					setTimeout(function(){
						$(cell) .find('input[type=text]')
								.datepicker({format:'yyyy-mm-dd' , autoclose:true}); 
					}, 0);
				}
			
			
				//navButtons
				jQuery(grid_selector).jqGrid('navGrid',pager_selector,
					{ 	//navbar options
						edit: true,
						editicon : 'icon-pencil blue',
						add: true,
						addicon : 'icon-plus-sign purple',
						del: true,
						delicon : 'icon-trash red',
						search: true,
						searchicon : 'icon-search orange',
						refresh: true,
						refreshicon : 'icon-refresh green',
						view: true,
						viewicon : 'icon-zoom-in grey',
					},
					{
						//edit record form
						//closeAfterEdit: true,
						recreateForm: true,
						beforeShowForm : function(e) {
							alert("kkk")
							var form = $(e[0]);
							form.closest('.ui-jqdialog').find('.ui-jqdialog-titlebar').wrapInner('<div class="widget-header" />')
							style_edit_form(form);
						}
					},
					{
						//new record form
						closeAfterAdd: true,
						recreateForm: true,
						viewPagerButtons: false,
						beforeShowForm : function(e) {
							var form = $(e[0]);
							form.closest('.ui-jqdialog').find('.ui-jqdialog-titlebar').wrapInner('<div class="widget-header" />')
							style_edit_form(form);
						}
					},
					{
						//delete record form
						recreateForm: true,
						beforeShowForm : function(e) {
							var form = $(e[0]);
							if(form.data('styled')) return false;
							
							form.closest('.ui-jqdialog').find('.ui-jqdialog-titlebar').wrapInner('<div class="widget-header" />')
							style_delete_form(form);
							
							form.data('styled', true);
						},
						onClick : function(e) {
						}
					},
					{
						//search form
						recreateForm: true,
						afterShowSearch: function(e){
							var form = $(e[0]);
							form.closest('.ui-jqdialog').find('.ui-jqdialog-title').wrap('<div class="widget-header" />')
							style_search_form(form);
						},
						afterRedraw: function(){
							style_search_filters($(this));
						}
						,
						multipleSearch: true,
						/**
						multipleGroup:true,
						showQuery: true
						*/
					},
					{
						//view record form
						recreateForm: true,
						beforeShowForm: function(e){
							var form = $(e[0]);
							form.closest('.ui-jqdialog').find('.ui-jqdialog-title').wrap('<div class="widget-header" />')
						}
					}
				)
			
			
				
				function style_edit_form(form) {
					//enable datepicker on "sdate" field and switches for "stock" field
					form.find('input[name=sdate]').datepicker({format:'yyyy-mm-dd' , autoclose:true})
						.end().find('input[name=stock]')
							  .addClass('ace ace-switch ace-switch-5').wrap('<label class="inline" />').after('<span class="lbl"></span>');
			
					//update buttons classes
					var buttons = form.next().find('.EditButton .fm-button');
					buttons.addClass('btn btn-sm').find('[class*="-icon"]').remove();//ui-icon, s-icon
					buttons.eq(0).addClass('btn-primary').prepend('<i class="icon-ok"></i>');
					buttons.eq(1).prepend('<i class="icon-remove"></i>')
					
					buttons = form.next().find('.navButton a');
					buttons.find('.ui-icon').remove();
					buttons.eq(0).append('<i class="icon-chevron-left"></i>');
					buttons.eq(1).append('<i class="icon-chevron-right"></i>');		
				}
			
				function style_delete_form(form) {
					var buttons = form.next().find('.EditButton .fm-button');
					buttons.addClass('btn btn-sm').find('[class*="-icon"]').remove();//ui-icon, s-icon
					buttons.eq(0).addClass('btn-danger').prepend('<i class="icon-trash"></i>');
					buttons.eq(1).prepend('<i class="icon-remove"></i>')
				}
				
				function style_search_filters(form) {
					form.find('.delete-rule').val('X');
					form.find('.add-rule').addClass('btn btn-xs btn-primary');
					form.find('.add-group').addClass('btn btn-xs btn-success');
					form.find('.delete-group').addClass('btn btn-xs btn-danger');
				}
				function style_search_form(form) {
					var dialog = form.closest('.ui-jqdialog');
					var buttons = dialog.find('.EditTable')
					buttons.find('.EditButton a[id*="_reset"]').addClass('btn btn-sm btn-info').find('.ui-icon').attr('class', 'icon-retweet');
					buttons.find('.EditButton a[id*="_query"]').addClass('btn btn-sm btn-inverse').find('.ui-icon').attr('class', 'icon-comment-alt');
					buttons.find('.EditButton a[id*="_search"]').addClass('btn btn-sm btn-purple').find('.ui-icon').attr('class', 'icon-search');
				}
				
				function beforeDeleteCallback(e) {
					var form = $(e[0]);
					if(form.data('styled')) return false;
					
					form.closest('.ui-jqdialog').find('.ui-jqdialog-titlebar').wrapInner('<div class="widget-header" />')
					style_delete_form(form);
					
					form.data('styled', true);
				}
				
				function beforeEditCallback(e) {
					alert("edit ,ddd")
					var form = $(e[0]);
					form.closest('.ui-jqdialog').find('.ui-jqdialog-titlebar').wrapInner('<div class="widget-header" />')
					style_edit_form(form);
				}
			
			
				
				//it causes some flicker when reloading or navigating grid
				//it may be possible to have some custom formatter to do this as the grid is being created to prevent this
				//or go back to default browser checkbox styles for the grid
				function styleCheckbox(table) {
				/**
					$(table).find('input:checkbox').addClass('ace')
					.wrap('<label />')
					.after('<span class="lbl align-top" />')
			
			
					$('.ui-jqgrid-labels th[id*="_cb"]:first-child')
					.find('input.cbox[type=checkbox]').addClass('ace')
					.wrap('<label />').after('<span class="lbl align-top" />');
				*/
				}
				
			
				//unlike navButtons icons, action icons in rows seem to be hard-coded
				//you can change them like this in here if you want
				function updateActionIcons(table) {
					/**
					var replacement = 
					{
						'ui-icon-pencil' : 'icon-pencil blue',
						'ui-icon-trash' : 'icon-trash red',
						'ui-icon-disk' : 'icon-ok green',
						'ui-icon-cancel' : 'icon-remove red'
					};
					$(table).find('.ui-pg-div span.ui-icon').each(function(){
						var icon = $(this);
						var $class = $.trim(icon.attr('class').replace('ui-icon', ''));
						if($class in replacement) icon.attr('class', 'ui-icon '+replacement[$class]);
					})
					*/
				}
				
				//replace icons with FontAwesome icons like above
				function updatePagerIcons(table) {
					var replacement = 
					{
						'ui-icon-seek-first' : 'icon-double-angle-left bigger-140',
						'ui-icon-seek-prev' : 'icon-angle-left bigger-140',
						'ui-icon-seek-next' : 'icon-angle-right bigger-140',
						'ui-icon-seek-end' : 'icon-double-angle-right bigger-140'
					};
					$('.ui-pg-table:not(.navtable) > tbody > tr > .ui-pg-button > .ui-icon').each(function(){
						var icon = $(this);
						var $class = $.trim(icon.attr('class').replace('ui-icon', ''));
						
						if($class in replacement) icon.attr('class', 'ui-icon '+replacement[$class]);
					})
				}
			
				function enableTooltips(table) {
					$('.navtable .ui-pg-button').tooltip({container:'body'});
					$(table).find('.ui-pg-div').tooltip({container:'body'});
				}
			
				//var selr = jQuery(grid_selector).jqGrid('getGridParam','selrow');
			
			
			});
		</script>
		<script type="text/javascript">
		
		$(function(){
			
			$.widget("ui.dialog", $.extend({}, $.ui.dialog.prototype, {
				_title: function(title) {
					var $title = this.options.title || '&nbsp;'
					if( ("title_html" in this.options) && this.options.title_html == true )
						title.html($title);
					else title.text($title);
				}
			}));
			
			$( ".btn-dialog" ).on('click', function(e) {

			});
		})
		function bOncilck(id){
			var dialog = $( "#dialog-message" ).removeClass('hide').dialog({
				modal: true,
				title: "<div class='widget-header widget-header-small'><h4 class='smaller'>工作评价</h4></div>",
				title_html: true,
				buttons: [
				{
				text: "取消",
				"class" : "btn btn-xs",
				click: function() {
				$( this ).dialog( "close" );
				}
				},
				{
				text: "提交",
				"class" : "btn btn-primary btn-xs",
				click: function() {
					
					$( this ).dialog( "close" );
					subComment(id);
				}
				}
				]
				});
			//alert(id);
		}
		function subComment(pId){
			$.post("/ui/problem_addComment.htm",{id:pId,comment:$("input[name='pj']:checked").val()+'|'+$('#pComment').val()},function(result){
				alert("评价成功");
				location.reload(true);
			});
		}
		</script>
  </body>
</html>
