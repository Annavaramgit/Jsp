<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","SYSTEM");

PreparedStatement pst = con.prepareStatement("insert into mrg(name,email,adress) values(?,?,?)");
pst.setString(1,"mahi");
pst.setString(2,"mahi@gmail.com");
pst.setString(3,"hyderbad");

int i = pst.executeUpdate();

if(i!=-1){
	

%>

<script>

alert("Congrts");
window.location="sus.jsp";
</script>
<%} %>
</body>
</html>