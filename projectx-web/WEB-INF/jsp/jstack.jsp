<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.Set" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta property="qc:admins" content="145631071661736375" />
<title>服务器线程信息</title>
</head>
<body>
<pre>
	<%
		Map<Thread, StackTraceElement[]> threadMap = Thread.getAllStackTraces();
		Set<Map.Entry<Thread, StackTraceElement[]>> set = threadMap.entrySet();
		out.print("\n总线程数："+set.size()+"\n");
		for(Map.Entry<Thread, StackTraceElement[]> stackTrace : threadMap.entrySet()){
			Thread thread = stackTrace.getKey();
			StackTraceElement[] stack = stackTrace.getValue();
			if(thread.equals(Thread.currentThread())){
				continue;
			}
			out.print("\n线程："+thread.getName()+"\n");
			for(StackTraceElement element : stack){
				out.print("\t"+element+"\n");
			}
		}
	%>
</pre>
</body>
</html>