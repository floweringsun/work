<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <jsp:useBean class="cuug.BookBean" id="book" scope="page"></jsp:useBean>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CUUG Book Store On Line -member:<%= session.getValue("memberID") %></title>
</HEAD>
<BODY BGCOLOR="#FFFFFF">
<H1 align="center">CUUG 网上书店</H1>
<ul class = "nav" >
	<li><a href = "user/default.html">用户登陆</a></li>
	<li><a href = "user/addUser.html">用户注册</a></li>
	<li><a href = "manager/m-login.html">管理员登陆</a></li>
</ul>
<table  border="1" cellspacing="0" bordercolor="#9999FF" align = center>
<%
    ResultSet rs = book.getBookList();
    while(rs.next()){
     	String ISBN = rs.getString("bookISBN");
%> 
  <tr> 
    <td algin =  center><a style = "text-decoration :none;" href="book/bookinfo1.jsp?isbn=
<%=ISBN%>"><img width = 100px; height = 100px; alt = "1" src = "upload/images/<%=rs.getString("bookName")%>.jpg"> <br>
<%= rs.getString("bookName")%></A></td>
  </tr>
  <%
   }   
%>  
</table> 
</BODY>
</HTML>