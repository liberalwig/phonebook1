<%--2022.01.10(월)자습 중 제작  --%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.util.List" %>
<%@ page import="com.javaex.dao.PhoneDao" %>
<%@ page import="com.javaex.vo.PersonVo" %>
<%
	PhoneDao phoneDao = new PhoneDao();
	List<PersonVo> personList = phoneDao.getPersonList();
%>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
		
	<body>
		<h1>[PhoneBook3]</h1>	
		<h2>전화번호 리스트</h2>
		<p>입력한 정보 내역입니다.</p>
		
		<% for(int i=0; i<personList.size(); i++) { %>
		<table border = 1>
			<tr>
				<td>이름(name)</td>
				<td><%= personList.get(i).getName() %></td>
			</tr>
				
			<tr>
				<td>핸드폰(hp)</td>
				<td><%= personList.get(i).getHp() %></td>
			</tr>
			
			<tr>
				<td>회사(company)</td>
				<td><%= personList.get(i).getCompany() %></td>
			</tr>
			<tr>
				<td>[수정]</td>
				<td><a herf="./delete.jsp?id=<%= personList.get(i).getPersonId() %>">[삭제]</a></td>
			</tr>
		</table>
		<br>
		<% } %>
		<a href = ".writeForm.jsp">전화번호 등록 폼</a> 
		
		
		
		


	</body>
</html>