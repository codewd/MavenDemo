<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <meta charset="utf-8" />
		<title>Kamama-OA</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />

		<!-- basic styles -->

		<link href="${pageContext.request.contextPath }assets/css/bootstrap.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="${pageContext.request.contextPath }assets/css/font-awesome.min.css" />

		<!--[if IE 7]>
		  <link rel="stylesheet" href="${pageContext.request.contextPath }assets/css/font-awesome-ie7.min.css" />
		<![endif]-->

		<!-- page specific plugin styles -->

		<link rel="stylesheet" href="${pageContext.request.contextPath }assets/css/jquery-ui-1.10.3.custom.min.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath }assets/css/chosen.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath }assets/css/datepicker.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath }assets/css/bootstrap-timepicker.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath }assets/css/daterangepicker.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath }assets/css/colorpicker.css" />

		<!-- fonts -->
 

		<!-- ace styles -->

		<link rel="stylesheet" href="${pageContext.request.contextPath }assets/css/ace.min.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath }assets/css/ace-rtl.min.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath }assets/css/ace-skins.min.css" />

		<!--[if lte IE 8]>
		  <link rel="stylesheet" href="${pageContext.request.contextPath }assets/css/ace-ie.min.css" />
		<![endif]-->

		<!-- inline styles related to this page -->

		<!-- ace settings handler -->

		<script src="${pageContext.request.contextPath }assets/js/ace-extra.min.js"></script>

		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

		<!--[if lt IE 9]>
		<script src="${pageContext.request.contextPath }assets/js/html5shiv.js"></script>
		<script src="${pageContext.request.contextPath }assets/js/respond.min.js"></script>
		<![endif]-->
		 <script type="text/javascript">
		 function onsub(){
	           /*  var a = document.getElementById("a").value;
	            var b = document.getElementById("b").value;
	            var c = document.getElementById("c").value;
	            var d = document.getElementById("d").value;
	            var reg = new RegExp("^[0-9]*$");
	            if(a.length==0)
	            {
	                alert("怀孕日期不能为空");
	                return false;
	            }
	            if(b.length==0)
	            {
	                alert("产胎日期不能为空");
	                return false;
	            }
	            if(c.length==0||c.length>30)
	            {
	                alert("种蓄编号不能超过30个字或着为空");
	                return false;
	            }
	            if(d.length==0||d.length>30)
	            {
	                alert("仔蓄编号不能超过30个字或着为空");
	                return false;
	            } */
	            
	            var s = $('#istime1').val()+"-"+$('#istime2').val()+"-"+$('#istime3').val();
	            var s1 = $('#iftime1').val()+"-"+$('#iftime2').val()+"-"+$('#iftime3').val();
	            
	            $('#istime4').val(s);
	            $('#iftime4').val(s1);
	            
	            return true;
	        }
		</script>
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
				<div class="breadcrumbs" id="breadcrumbs">
					<script type="text/javascript">
						try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
						</script>


						<div class="nav-search" id="nav-search">
							<form class="form-search">
								<span class="input-icon">
									<input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
									<i class="icon-search nav-search-icon"></i>
								</span>
							</form>
						</div><!-- #nav-search -->
					</div>

					<div class="page-content">
						<div class="page-header">
							<h1>
								
								<small>
									<i class="icon-double-angle-right"></i>
								工作内容添加
								</small>
							</h1>
						</div><!-- /.page-header -->

						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->

								<form onsubmit="return onsub()" method="post" action="problem_add1.htm" class="form-horizontal" role="form">
									<input type="hidden" name="userId" value='${user.id }'>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 工作内容</label>
										<div class="col-sm-9">
											<textarea rows="5" cols="50" name="content"></textarea>
										</div></div><div class="space-4"></div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 配合人员</label>
										<div class="col-sm-9" style="font-size: 15px;">
										<s:iterator value="#users" var='u' status="s">
											<input type="checkbox" value="${u.id }"/>${u.account }(${u.name })&nbsp;&nbsp;
													<br>
										</s:iterator>
										</div></div><div class="space-4"></div>
								    <div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 完成标准</label>
										<div class="col-sm-9">
											<input type="text" id="c" placeholder="" class="col-xs-10 col-sm-5" name="fstanderd"/>
										</div></div><div class="space-4"></div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 起始时间</label>
										<div class="col-sm-9">
											<input type='hidden' name="stime" id="istime4">
											<select id="istime1">
												<option>2010</option>
												<option>2011</option>
												<option>2012</option>
												<option>2013</option>
												<option selected>2014</option>
												<option>2015</option>
												<option>2016</option>
												<option>2017</option>
												<option>2018</option>
												<option>2019</option>
												<option>2020</option>
												<option>2021</option>
												<option>2022</option>
											</select>
											<select id="istime2">
												<option>1</option>
												<option>2</option>
												<option>3</option>
												<option>4</option>
												<option>5</option>
												<option>6</option>
												<option>7</option>
												<option>8</option>
												<option>9</option>
												<option>10</option>
												<option>11</option>
												<option selected>12</option>
											</select>
											<select id="istime3">
												<option>01</option><option>02</option><option>03</option>
												<option>04</option><option>05</option><option>06</option>
												<option>07</option><option>08</option><option>09</option>
												<option>10</option><option>11</option><option>12</option>
												<option>13</option><option>14</option><option>15</option>
												<option>16</option><option>17</option><option>18</option>
												<option>19</option><option>20</option><option>21</option>
												<option>22</option><option>23</option><option>24</option>
												<option>25</option><option>26</option><option>27</option>
												<option>28</option><option>29</option><option>30</option>
												<option>31</option>
											</select>
											<!-- <input type="text" id="c" placeholder="" class="col-xs-10 col-sm-5" name="data3"/> -->
										</div>
									</div><div class="space-4"></div>   
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" > 结束时间</label>
										<div class="col-sm-9">
											<input type='hidden' name="ftime" id="iftime4">
											<select id="iftime1">
												<option>2010</option>
												<option>2011</option>
												<option>2012</option>
												<option>2013</option>
												<option selected>2014</option>
												<option>2015</option>
												<option>2016</option>
												<option>2017</option>
												<option>2018</option>
												<option>2019</option>
												<option>2020</option>
												<option>2021</option>
												<option>2022</option>
											</select>
											<select id="iftime2">
												<option>1</option>
												<option>2</option>
												<option>3</option>
												<option>4</option>
												<option>5</option>
												<option>6</option>
												<option>7</option>
												<option>8</option>
												<option>9</option>
												<option>10</option>
												<option>11</option>
												<option selected>12</option>
											</select>
											<select id="iftime3">
												<option>01</option><option>02</option><option>03</option>
												<option>04</option><option>05</option><option>06</option>
												<option>07</option><option>08</option><option>09</option>
												<option>10</option><option>11</option><option>12</option>
												<option>13</option><option>14</option><option>15</option>
												<option>16</option><option>17</option><option>18</option>
												<option>19</option><option>20</option><option>21</option>
												<option>22</option><option>23</option><option>24</option>
												<option>25</option><option>26</option><option>27</option>
												<option>28</option><option>29</option><option>30</option>
												<option>31</option>
											</select>
										</div></div><div class="space-4"></div>   
									   
									   
									<div class="clearfix form-actions">
										<div class="col-md-offset-3 col-md-9">
											<button class="btn btn-info" type="submit">
												<i class="icon-ok bigger-110"></i>
												添加	
											</button>

											&nbsp; &nbsp; &nbsp;
																					&nbsp; &nbsp; &nbsp;
											<button class="btn" type="reset">
												<i class="icon-undo bigger-110"></i>
												编辑
											</button>

										</div>
									</div>
								</form>


									</div>
								</div>
							</div>
						</div><!-- /span -->
					</div><!-- /row -->

									<div class="space-24"></div>
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
			window.jQuery || document.write("<script src='${pageContext.request.contextPath }assets/js/jquery-2.0.3.min.js'>"+"<"+"/script>");
		</script>

		<!-- <![endif]-->

		<!--[if IE]>
<script type="text/javascript">
 window.jQuery || document.write("<script src='${pageContext.request.contextPath }assets/js/jquery-1.10.2.min.js'>"+"<"+"/script>");
</script>
<![endif]-->

		<script type="text/javascript">
			if("ontouchend" in document) document.write("<script src='${pageContext.request.contextPath }assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="${pageContext.request.contextPath }assets/js/bootstrap.min.js"></script>
		<script src="${pageContext.request.contextPath }assets/js/typeahead-bs2.min.js"></script>

		<!-- page specific plugin scripts -->

		<!--[if lte IE 8]>
		  <script src="${pageContext.request.contextPath }assets/js/excanvas.min.js"></script>
		<![endif]-->

		<script src="${pageContext.request.contextPath }assets/js/jquery-ui-1.10.3.custom.min.js"></script>
		<script src="${pageContext.request.contextPath }assets/js/jquery.ui.touch-punch.min.js"></script>
		<script src="${pageContext.request.contextPath }assets/js/chosen.jquery.min.js"></script>
		<script src="${pageContext.request.contextPath }assets/js/fuelux/fuelux.spinner.min.js"></script>
		<script src="${pageContext.request.contextPath }assets/js/date-time/bootstrap-datepicker.min.js"></script>
		<script src="${pageContext.request.contextPath }assets/js/date-time/bootstrap-timepicker.min.js"></script>
		<script src="${pageContext.request.contextPath }assets/js/date-time/moment.min.js"></script>
		<script src="${pageContext.request.contextPath }assets/js/date-time/daterangepicker.min.js"></script>
		<script src="${pageContext.request.contextPath }assets/js/bootstrap-colorpicker.min.js"></script>
		<script src="${pageContext.request.contextPath }assets/js/jquery.knob.min.js"></script>
		<script src="${pageContext.request.contextPath }assets/js/jquery.autosize.min.js"></script>
		<script src="${pageContext.request.contextPath }assets/js/jquery.inputlimiter.1.3.1.min.js"></script>
		<script src="${pageContext.request.contextPath }assets/js/jquery.maskedinput.min.js"></script>
		<script src="${pageContext.request.contextPath }assets/js/bootstrap-tag.min.js"></script>

		<!-- ace scripts -->

		<script src="${pageContext.request.contextPath }assets/js/ace-elements.min.js"></script>
		<script src="${pageContext.request.contextPath }assets/js/ace.min.js"></script>

		<!-- inline scripts related to this page -->

		<script type="text/javascript">
		
			
			
		
		
			jQuery(function($) {
			
					$( "#datepicker" ).datepicker({
					showOtherMonths: true,
					selectOtherMonths: false,
					//isRTL:true,
					
					/*
					changeMonth: true,
					changeYear: true,
					
					showButtonPanel: true,
					beforeShow: function() {
						//change button colors
						var datepicker = $(this).datepicker( "widget" );
						setTimeout(function(){
							var buttons = datepicker.find('.ui-datepicker-buttonpane')
							.find('button');
							buttons.eq(0).addClass('btn btn-xs');
							buttons.eq(1).addClass('btn btn-xs btn-success');
							buttons.wrapInner('<span class="bigger-110" />');
						}, 0);
					}
			*/
				});
					$( "#datepicker1" ).datepicker({
					showOtherMonths: true,
					selectOtherMonths: false,
					//isRTL:true,
			
					
					/*
					changeMonth: true,
					changeYear: true,
					
					showButtonPanel: true,
					beforeShow: function() {
						//change button colors
						var datepicker = $(this).datepicker( "widget" );
						setTimeout(function(){
							var buttons = datepicker.find('.ui-datepicker-buttonpane')
							.find('button');
							buttons.eq(0).addClass('btn btn-xs');
							buttons.eq(1).addClass('btn btn-xs btn-success');
							buttons.wrapInner('<span class="bigger-110" />');
						}, 0);
					}
			*/
				});
			
			
			
				$('#id-disable-check').on('click', function() {
					var inp = $('#form-input-readonly').get(0);
					if(inp.hasAttribute('disabled')) {
						inp.setAttribute('readonly' , 'true');
						inp.removeAttribute('disabled');
						inp.value="This text field is readonly!";
					}
					else {
						inp.setAttribute('disabled' , 'disabled');
						inp.removeAttribute('readonly');
						inp.value="This text field is disabled!";
					}
				});
			
			
				$(".chosen-select").chosen(); 
				$('#chosen-multiple-style').on('click', function(e){
					var target = $(e.target).find('input[type=radio]');
					var which = parseInt(target.val());
					if(which == 2) $('#form-field-select-4').addClass('tag-input-style');
					 else $('#form-field-select-4').removeClass('tag-input-style');
				});
			
			
				$('[data-rel=tooltip]').tooltip({container:'body'});
				$('[data-rel=popover]').popover({container:'body'});
				
				$('textarea[class*=autosize]').autosize({append: "\n"});
				$('textarea.limited').inputlimiter({
					remText: '%n character%s remaining...',
					limitText: 'max allowed : %n.'
				});
			
				$.mask.definitions['~']='[+-]';
				$('.input-mask-date').mask('99/99/9999');
				$('.input-mask-phone').mask('(999) 999-9999');
				$('.input-mask-eyescript').mask('~9.99 ~9.99 999');
				$(".input-mask-product").mask("a*-999-a999",{placeholder:" ",completed:function(){alert("You typed the following: "+this.val());}});
			
			
			
				$( "#input-size-slider" ).css('width','200px').slider({
					value:1,
					range: "min",
					min: 1,
					max: 8,
					step: 1,
					slide: function( event, ui ) {
						var sizing = ['', 'input-sm', 'input-lg', 'input-mini', 'input-small', 'input-medium', 'input-large', 'input-xlarge', 'input-xxlarge'];
						var val = parseInt(ui.value);
						$('#form-field-4').attr('class', sizing[val]).val('.'+sizing[val]);
					}
				});
			
				$( "#input-span-slider" ).slider({
					value:1,
					range: "min",
					min: 1,
					max: 12,
					step: 1,
					slide: function( event, ui ) {
						var val = parseInt(ui.value);
						$('#form-field-5').attr('class', 'col-xs-'+val).val('.col-xs-'+val);
					}
				});
				
				
				$( "#slider-range" ).css('height','200px').slider({
					orientation: "vertical",
					range: true,
					min: 0,
					max: 100,
					values: [ 17, 67 ],
					slide: function( event, ui ) {
						var val = ui.values[$(ui.handle).index()-1]+"";
			
						if(! ui.handle.firstChild ) {
							$(ui.handle).append("<div class='tooltip right in' style='display:none;left:16px;top:-6px;'><div class='tooltip-arrow'></div><div class='tooltip-inner'></div></div>");
						}
						$(ui.handle.firstChild).show().children().eq(1).text(val);
					}
				}).find('a').on('blur', function(){
					$(this.firstChild).hide();
				});
				
				$( "#slider-range-max" ).slider({
					range: "max",
					min: 1,
					max: 10,
					value: 2
				});
				
				$( "#eq > span" ).css({width:'90%', 'float':'left', margin:'15px'}).each(function() {
					// read initial values from markup and remove that
					var value = parseInt( $( this ).text(), 10 );
					$( this ).empty().slider({
						value: value,
						range: "min",
						animate: true
						
					});
				});
			
				
				$('#id-input-file-1 , #id-input-file-2').ace_file_input({
					no_file:'No File ...',
					btn_choose:'Choose',
					btn_change:'Change',
					droppable:false,
					onchange:null,
					thumbnail:false //| true | large
					//whitelist:'gif|png|jpg|jpeg'
					//blacklist:'exe|php'
					//onchange:''
					//
				});
				
				$('#id-input-file-3').ace_file_input({
					style:'well',
					btn_choose:'Drop files here or click to choose',
					btn_change:null,
					no_icon:'icon-cloud-upload',
					droppable:true,
					thumbnail:'small'//large | fit
					//,icon_remove:null//set null, to hide remove/reset button
					/**,before_change:function(files, dropped) {
						//Check an example below
						//or examples/file-upload.html
						return true;
					}*/
					/**,before_remove : function() {
						return true;
					}*/
					,
					preview_error : function(filename, error_code) {
						//name of the file that failed
						//error_code values
						//1 = 'FILE_LOAD_FAILED',
						//2 = 'IMAGE_LOAD_FAILED',
						//3 = 'THUMBNAIL_FAILED'
						//alert(error_code);
					}
			
				}).on('change', function(){
					//console.log($(this).data('ace_input_files'));
					//console.log($(this).data('ace_input_method'));
				});
				
			
				//dynamically change allowed formats by changing before_change callback function
				$('#id-file-format').removeAttr('checked').on('change', function() {
					var before_change
					var btn_choose
					var no_icon
					if(this.checked) {
						btn_choose = "Drop images here or click to choose";
						no_icon = "icon-picture";
						before_change = function(files, dropped) {
							var allowed_files = [];
							for(var i = 0 ; i < files.length; i++) {
								var file = files[i];
								if(typeof file === "string") {
									//IE8 and browsers that don't support File Object
									if(! (/\.(jpe?g|png|gif|bmp)$/i).test(file) ) return false;
								}
								else {
									var type = $.trim(file.type);
									if( ( type.length > 0 && ! (/^image\/(jpe?g|png|gif|bmp)$/i).test(type) )
											|| ( type.length == 0 && ! (/\.(jpe?g|png|gif|bmp)$/i).test(file.name) )//for android's default browser which gives an empty string for file.type
										) continue;//not an image so don't keep this file
								}
								
								allowed_files.push(file);
							}
							if(allowed_files.length == 0) return false;
			
							return allowed_files;
						}
					}
					else {
						btn_choose = "Drop files here or click to choose";
						no_icon = "icon-cloud-upload";
						before_change = function(files, dropped) {
							return files;
						}
					}
					var file_input = $('#id-input-file-3');
					file_input.ace_file_input('update_settings', {'before_change':before_change, 'btn_choose': btn_choose, 'no_icon':no_icon})
					file_input.ace_file_input('reset_input');
				});
			
			
			
			
				$('#spinner1').ace_spinner({value:0,min:0,max:200,step:10, btn_up_class:'btn-info' , btn_down_class:'btn-info'})
				.on('change', function(){
					//alert(this.value)
				});
				$('#spinner2').ace_spinner({value:0,min:0,max:10000,step:100, touch_spinner: true, icon_up:'icon-caret-up', icon_down:'icon-caret-down'});
				$('#spinner3').ace_spinner({value:0,min:-100,max:100,step:10, on_sides: true, icon_up:'icon-plus smaller-75', icon_down:'icon-minus smaller-75', btn_up_class:'btn-success' , btn_down_class:'btn-danger'});
			
			
				
				$('.date-picker').datepicker({autoclose:true}).next().on(ace.click_event, function(){
					$(this).prev().focus();
				});
				$('input[name=date-range-picker]').daterangepicker().prev().on(ace.click_event, function(){
					$(this).next().focus();
				});
				
				$('#timepicker1').timepicker({
					minuteStep: 1,
					showSeconds: true,
					showMeridian: false
				}).next().on(ace.click_event, function(){
					$(this).prev().focus();
				});
				
				$('#colorpicker1').colorpicker();
				$('#simple-colorpicker-1').ace_colorpicker();
			
				
				$(".knob").knob();
				
				
				//we could just set the data-provide="tag" of the element inside HTML, but IE8 fails!
				var tag_input = $('#form-field-tags');
				if(! ( /msie\s*(8|7|6)/.test(navigator.userAgent.toLowerCase())) ) 
				{
					tag_input.tag(
					  {
						placeholder:tag_input.attr('placeholder'),
						//enable typeahead by specifying the source array
						source: ace.variable_US_STATES,//defined in ace.js >> ace.enable_search_ahead
					  }
					);
				}
				else {
					//display a textarea for old IE, because it doesn't support this plugin or another one I tried!
					tag_input.after('<textarea id="'+tag_input.attr('id')+'" name="'+tag_input.attr('name')+'" rows="3">'+tag_input.val()+'</textarea>').remove();
					//$('#form-field-tags').autosize({append: "\n"});
				}
				
				
				
			
				/////////
				$('#modal-form input[type=file]').ace_file_input({
					style:'well',
					btn_choose:'Drop files here or click to choose',
					btn_change:null,
					no_icon:'icon-cloud-upload',
					droppable:true,
					thumbnail:'large'
				})
				
				//chosen plugin inside a modal will have a zero width because the select element is originally hidden
				//and its width cannot be determined.
				//so we set the width after modal is show
				$('#modal-form').on('shown.bs.modal', function () {
					$(this).find('.chosen-container').each(function(){
						$(this).find('a:first-child').css('width' , '210px');
						$(this).find('.chosen-drop').css('width' , '210px');
						$(this).find('.chosen-search input').css('width' , '200px');
					});
				})
				/**
				//or you can activate the chosen plugin after modal is shown
				//this way select element becomes visible with dimensions and chosen works as expected
				$('#modal-form').on('shown', function () {
					$(this).find('.modal-chosen').chosen();
				})
				*/
			
			});
		</script>
  </body>
</html>
