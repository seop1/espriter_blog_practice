<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="processDao" class="pack.business.ProcessDao"/>

<%
String id = request.getParameter("id"); 
boolean b = processDao.deleteData(id);

if(b){
	response.sendRedirect("list.jsp");
}else{
	response.sendRedirect("fail.jsp");		//비밀번호 불일치 또는 에러
}
%>