<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.javaex.vo.PersonVo" %>
<%@ page import="com.javaex.dao.PhoneDao" %>
<%@ page import="java.util.List" %>
<%
	//파라미터값 주소에서 가져오기
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String company = request.getParameter("company");//톰캣이 new request해서 가능해짐

	//테스트
	System.out.println(name);
	System.out.println(hp);
	System.out.println(company);
	
	//전송된 값을 Vo로 만들기
	PersonVo personVo = new PersonVo(name, hp, company);
	
	//PhonDao를 메모리에 올리기
	PhoneDao phoneDao = new PhoneDao();
	
	//저장
	phoneDao.personInsert(personVo);

	//전체 리스트를 가져오기
	List<PersonVo> personList = phoneDao.getPersonList();
	
	//리다이렉트
	response.sendRedirect("./list.jsp");
%>