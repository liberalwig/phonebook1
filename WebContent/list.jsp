<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.util.List"%>
<%@ page import="com.javaex.dao.PhoneDao"%>
<%@ page import="com.javaex.vo.PersonVo"%>

<%
PhoneDao phoneDao = new PhoneDao(); //여기에 있는 거 쓰면 스캐너 쓰듯 그냥 메커니즘 모르고 쓰는 건데 괜찮음.
phoneDao.getPersonList();
List<PersonVo> personList = new PersonVo();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
	<h1>[phonebook1]</h1>

	<h2>전화번호 리스트</h2>

	<p>입력한 정보 내역입니다.</p>
	<%
	for (int i = 0; i < personList.size(); i++)
	%>

	<table border="1">
		<tr>
			<td>이름</td>
			<td>
				<%
				personList.get(i).getName();
				%>
			</td>
		</tr>

		<tr>
			<td>휴대전화</td>
			<td>
				<%
				personList.get(i).getHP();
				%>
			</td>
		</tr>

		<tr>
			<td>회사(company)</td>
			<td>
				<%
				personList.get(i).getCompany();
				%>
			</td>
		</tr>


	</table>
	<br>

	<% } %>

	<a href="./writeForm.jsp">리스트 바로 가기</a>

</body>

</html>