<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>el-jstl</h1>
	<h2>el</h2>
	<h3>request. attribue 값 사용</h3>
	
	<h4>스트립플릿 사용</h4>
	<%@ page import="com.javaex.vo.UserVo"%>
	<%
		UserVo uservo = (UserVo)request.getAttribute("userVo");
		int i = (int)request.getAttribute("num");
		String str = (String)request.getAttribute("str");
	%>
	
	no= <%=uservo.getNo()%><br>
	name= <%=uservo.getName()%><br>
	email= <%=uservo.getEmail()%><br>
	password = <%=uservo.getPassword()%><br>
	gender = <%=uservo.getGender()%><br>
	<br>
	i= <%=i %><br>
	<br>
	str= <%=str%><br>
	
	<h4>el 사용</h4><!-- getter로 작동한다 -->
	no= ${requestScope.userVo.no}<br><!-- userVo.getNo() -->
	name= ${requestScope.userVo.name}<br>
	email = ${requestScope.userVo.email}<br>
	password = ${requestScope.userVo.password}<br>
	gender = ${requestScope.userVo.gender}<br>
	<br>
	i= ${requestScope.num}<br>
	<br>
	str= ${requestScope.str}
	<br>
</body>
</html>