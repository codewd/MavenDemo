/**
 * Created by wangdong on 14/10/29.
 */

/*
 规则：先配置顶级菜单，然后子菜单,空值需填空字符串
 1.设置菜单级别（必填）
 2.菜单编号
 3.菜单显示的文字（可填）
 4.菜单图标（可填）(可查图标字典)
 5.菜单的URL（可填）
 6.父级菜单的编号（可填）
 7.是否为打开状态（或是选择状态）(true：打开；false：关闭)
 8.是否有子菜单（true:有；false：没有）
 */
var conf = [
  
	['0','1','种羊场','icon-home','#','1','false','true'],
    ['0','2','项目部信息','icon-book','#','2','false','true'],
    ['0','3','屠宰信息','icon-food','#','3','false','true'],
    ['0','4','工程部信息',' icon-desktop','#','4','false','true'],
    ['0','5','运输部信息','icon-truck','#','5','false','true'],
//    ['0','6','收货单位','icon-barcode','#','6','false','true'],
    
    ['1','11','基础母羊信息','','/ui/bsheep_list.htm','1','false','false'],
    ['1','11','种公羊信息','','/ui/gongyang_list.htm','1','false','false'],
    ['1','12','种羊防疫信息','','/ui/fangyi_list.htm','1','false','false'],
    ['1','13','种羊繁育信息','','/ui/fanyu_list.htm','1','false','false'],
    ['1','14','人工受精记录','','/ui/shoujing_list.htm','1','false','false'],
    ['1','15','胚胎移植记录','','/ui/peitai_list.htm','1','false','false'],
    
    
    ['1','21','项目信息添加','','/ui/xiangmu_addUI.htm','2','false','false'],
    ['1','22','项目信息列表','','/ui/xiangmu_list.htm','2','false','false'],

    ['1','31','屠宰信息添加','','/ui/tuzai_addUI.htm','3','false','false'],
    ['1','32','屠宰信息列表','','/ui/tuzai_list.htm','3','false','false'],
  
    ['1','41','工程信息添加','','/ui/gongcheng_addUI.htm','4','false','false'],
    ['1','42','工程信息列表','','/ui/gongcheng_list.htm','4','false','false'],
   
    ['1','41','运输信息添加','','/ui/yunshu_addUI.htm','5','false','false'],
    ['1','42','运输信息列表','','/ui/yunshu_list.htm','5','false','false'],
    
    ['1','41','收货信息添加','','/ui/shouhuo_addUI.htm','6','false','false'],
    ['1','42','收货信息列表','','/ui/tuzai_addUI.htm','6','false','false'],
    

];

function leftInit() {
    $(function(){
        createNode();
    });
}


/**
 * 已表单的方式提交参数
 * @param name 隐藏字段名
 * @param value 值 
 */
function initFORM(){
    var f = document.createElement("form");
    f.id = 'formx1';
    f.method='post';
    f.action='xxx.html';
    f.name='formx1';
    var h = document.createElement("input");
    h.type='hidden';
    h.id = "idX1";
    f.appendChild(h);
    document.body.appendChild(f);
}

function submitFORM(name,value,url){
    var hidden = document.getElementById('idX1');
    document.getElementById("formx1").action = url;
    hidden.name = name;
    hidden.value = value;
    document.formx1.submit();
}

function logout(){
	var b = confirm("您确定要退出系统吗");
	if(b){
		//window.close();
		window.location.href = "user_logout.htm";
	}
}

/**
 * 根据地址跳转
 */
function bHref(href){
	window.location.href = href;
}
/**
 * 确认删除
 */
function del(href){
	if(confirm("确定永久删除数据吗")){
		window.location.href = href;
	}
}

/**
 * 选择全部的选择按钮
 * @param t this对象
 * @param cName checkbox name
 */
function checkedAll(t,cName){
    var a = document.getElementsByName(cName)
    for(var i=0;i< a.length;i++){
        a[i].checked = t.checked;
    }
}

/**
 * 获取多选择按钮的值
 * @param cName 多选择按钮名字
 * @returns {String}
 */
function checkedValue (cName) {
    var v = "";
    var a = document.getElementsByName(cName)
    for(var i=0;i< a.length;i++){

        if(a[i].checked){
            v += a[i].value+",";
        }

    }
   return v;
}


/**
 * 初始化下拉列表
 * @param id select ID
 * @param f 标志 
 */
function initNow(id,f){
	
	var now = new Date();
	var year = now.getFullYear();
	var mouth = now.getMonth()+1;
	var day = now.getDate();
	if(f == "year"){
	 $("#"+id).val(year);	
	}else if(f == 'mouth'){
		$("#"+id).val(mouth);	
	}else{
		$("#"+id).val(day<10?'0'+day:day+'');//
	}
}

/**
 * 
 * @param t
 * @param msg 弹出的消息
 */
function vNum(t){
//    var reg = new RegExp("^[0-9]*$");
//    if(!reg.test(t.value)){
//    	t.value="";
//    	alert("不能有非数字字符！")
//    	t.focus();
//    	return false;
//    }
//    
////    alert(t.value)?
	return true;
}



function setTime(){
    var day="";
    var month="";
    var ampm="";
    var ampmhour="";
    var myweekday="";
    var year="";
    var myHours="";
    var myMinutes="";
    var mySeconds="";
    mydate=new Date();
    myweekday=mydate.getDay();
    mymonth=parseInt(mydate.getMonth()+1)<10?"0"+(mydate.getMonth()+1):mydate.getMonth()+1;
    myday= mydate.getDate();
    myyear= mydate.getYear();
    myHours = mydate.getHours();
    myMinutes = mydate.getMinutes();
    mySeconds = parseInt(mydate.getSeconds())<10?"0"+mydate.getSeconds():mydate.getSeconds();
    year=(myyear > 200) ? myyear : 1900 + myyear;
    if(myweekday == 0)      weekday=" 星期日 ";
    else if(myweekday == 1)      weekday=" 星期一 ";
    else if(myweekday == 2)      weekday=" 星期二 ";
    else if(myweekday == 3)      weekday=" 星期三 ";
    else if(myweekday == 4)      weekday=" 星期四 ";
    else if(myweekday == 5)      weekday=" 星期五 ";
    else if(myweekday == 6)      weekday=" 星期六 ";
    datetime.innerText=year+"年"+mymonth+"月"+myday+"日 "+myHours+":"+myMinutes+":"+mySeconds+" "+weekday;  setTimeout("setTime()",1000);
}
function createNode(){
    var mUl = $("#left-list");
    for(var i = 0;i < conf.length;i++){
        if(conf[i][0] == '0'){

            if(conf[i][7] == 'false'){
                //没有子节点 li a i span
                var li = $("<li class='open'>",{class:conf[i][4],id:"father"+i });
                var a =$('<a>',{href:conf[i][4]});
                var ii = $('<i>',{class:conf[i][3]});

                var span = $('<span>',{class:'menu-text',text:conf[i][2]});
                span.id='span'+i;
                a.append(ii);
                mUl.append(li);
                li.append(a);
                a.append(span);
            }
            else{
                //有子节点 (li a i span b) (ul li a i span)
                var li = $("<li class='open'>",{class:'',id:"father"+i});
                var a =$('<a>',{href:conf[i][4],class:'dropdown-toggle'});
                var ii = $('<i>',{class:conf[i][3]});
                var span = $('<span>',{class:'menu-text',text:conf[i][2]});
                span.id='span'+i;
                var b = $("<b>",{class:'arrow icon-angle-down'});
                mUl.append(li);
                li.append(a);
                a.append(ii);
                a.append(span);
                a.append(b);
                //遍历所有子菜单
                var ul = $('<ul>',{class:'submenu'});
                li.append(ul);

                for(var j=0;j<conf.length;j++){
                  //  alert(conf[j][5]+':'+conf[i][1]);
                	if(conf[j][0] != '0'){
                		 if(conf[j][5] == conf[i][1]){
	                        var subLi = $('<li>',{class:'',id:'subLi'+j});
	                        var subA =$('<a>',{href:conf[j][4]});
	                        var subI = $('<i>',{class:'icon-double-angle-right'});
	                        var subSpan = $('<span>',{class:'xx',text:conf[j][2]});
	                        ul.append(subLi);
	                        subLi.append(subA);
	                        subA.append(subI);
	                        subA.append(subSpan);
	                    }
                	}
                   
                }
            }
        }
    }
}