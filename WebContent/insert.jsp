<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.javaex.vo.PersonVo"%>


<%
//PhoneDao를 메모리에 올린다


//저장
phoneDao.personInsert(personVo);

///////////////////////리스트 관련////////////////////////



///////////////////////저장///////////////////////


//파라미터값 가져오기
String name = request.getParameter("name");
String hp = request.getParameter("hp");
String company = request.getParameter("company");

/* 테스트
System.out.println(name);
System.out.println(hp);
System.out.println(company);
*/

// 전송된 값(파라미터)을 VO객체로 만든다
PersonVo personVo = new PersonVo(name, hp, company);
//System.out.pritnln(personVo)









//PhoneDao를 메모리에 올린다
PhoneDao phoneDao = new PhoneDao();
phoneDao personInsert(personVo);

//


//전송된 값을 vo객체로 만든다
PersonVo personVo = new PersonVo(name, hp, company);






%>





<!DOCTYPE html>
<html>
<head>

<%--입력한 정보 저장하는 페이지 --%>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>저장 기능

</body>
</html>