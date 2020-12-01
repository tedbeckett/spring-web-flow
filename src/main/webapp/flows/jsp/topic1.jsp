<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored ="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Successful</title>
</head>
<body>

<h3>Topic 1</h3>

<form method="post" action="${flowExecutionUrl}">

    <input type="hidden" name="_flowExecutionKey" value="${flowExecutionKey}" />

    <input type="submit" name="_eventId" value="subtopic1" />

</form>

</body>

</html>