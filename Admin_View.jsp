<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <sql:setDataSource
	var="dbconnection"
	driver="oracle.jdbc.OracleDriver"
	url="jdbc:oracle:thin:@localhost:1521:xe"
	user="hr"
	password="hr"/>
	<h1>Connected Successfully</h1>
                               
                              
        
                                           
                                           
                   <sql:query dataSource="${dbconnection}" var="rs">
                         select * from train
                    </sql:query>
    
    <table border="1">
        <c:forEach var="row" items="${rs.rows}">
                   <tr>
                       <td> <c:out value="${row.train_no}"/></td>
                       <td> <c:out value="${row.train_name}"/></td>
                       <td> <c:out value="${row.source_name}"/></td>
                       <td> <c:out value="${row.destination_name}"/></td>
                       <td> <c:out value="${row.start_time}"/></td>
                       <td> <c:out value="${row.end_time}"/></td>
                       <td> <c:out value="${row.fare}"/></td>
                       <td> <c:out value="${row.train_day}"/></td>
                       </tr>
        </c:forEach>>
</table>
    </body>
</html>