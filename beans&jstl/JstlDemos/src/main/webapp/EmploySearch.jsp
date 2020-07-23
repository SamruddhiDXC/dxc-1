<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<sql:setDataSource var="conn"
		driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/dxc"
		user="root"
		password="root" />
<c:set var="empno" value="${param.empno}" />
<sql:query var="employQuery" dataSource="${conn}">
	SELECT * FROM EMPLOY WHERE EMPNO=?
	<sql:param value="${empno}" />
</sql:query>
<c:forEach var="e" items="${employQuery.rows}">
	Employ Name : 
		<c:out value="${e.name}" /> <br/>
		Department : 
		<c:out value="${e.dept}" /> <br/>
		Designation : 
		<c:out value="${e.desig}" /> <br/>
		Basic : 
		<c:out value="${e.basic}" /> <br/><hr/>
</c:forEach>
</body>
</html>