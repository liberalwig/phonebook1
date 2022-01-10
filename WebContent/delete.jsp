<%--2022.01.10(월)자습 중 제작 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javaex.dao.PhoneDao" %>
<%
	//1. 파라미터를 가져와서 변수에 담기: 변수 변환이 필요했음. 이유는 스트링으로 받은 값을 인티저로 받으려고.
	int personId = Integer.parseInt(request.getParameter("id"));


	//2. 폰다오를 메모리에 올리기
	PhoneDao phonedao = new PhoneDao();

	
	
	//3. 폰다오의 Delete 메소드를 사용하기
	phonedao.personDelete(personId);
	
	
	
	//4. list.jsp로 보내기
	response.sendRedirect("./list.jsp");
%>