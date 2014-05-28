<%@ page language="java" isErrorPage="true" pageEncoding="UTF-8"%>
<%@ page import="org.slf4j.Logger" %>
<%@ page import="org.slf4j.LoggerFactory" %>
<!DOCTYPE html PUBLIC "-//WAPFORUM//DTD XHTML Mobile 1.0//EN" "http://www.wapforum.org/DTD/xhtml-mobile10.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>出错了</title>
</head>
<body>
<!-- 顶部 -->
<!-- /顶部 -->
<!-- 头部 -->
<!-- /头部 -->
<div class="spg_bg">
<div class="pport_main">
	<div class="pport_main_hd">
  	<b>访问错误</b> 
  </div>
  <div class="pport_main_bd">
  	<div class="pb_error_tip clearfix">
    	<span class="icon"></span>
    	<div class="txt">
      <p class="fsb fw">很抱歉，您访问的页面不存在</p>
      <p>这可能是由以下原因造成</p>
      <p>· 地址输入存在错误，请核对后再次尝试</p>
      <p>· 所访问的页面已被转移，建议返回<a href="http://user.laohu.com" class="rs">老虎首页</a>重新查阅</p>
      <p class="fsb fw btn">
      	<a href="http://user.laohu.com" class="rs">返回老虎首页</a>
        <a href="#" onclick="history.go(-1);return false;">返回上一页</a>
      </p>
    </div>
    <div style="display:none">
    	<%
    		Logger log = LoggerFactory.getLogger(getClass());
	    	if(exception != null) {
	            log.error("page error", exception);
	        }
    	%>
    </div>
    </div>
  </div>
</div>
</div>

<!-- 底部 -->
<!-- /底部 -->
</body>
</html>