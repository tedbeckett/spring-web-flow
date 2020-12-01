<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored ="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Successful</title>
</head>

<style>
    input[type=submit] {
      background: none!important;
      border: none;
      padding: 0!important;
      /*optional*/
      font-family: arial, sans-serif;
      /*input has OS specific font-family*/
      text-decoration: underline;
      cursor: pointer;
      margin-right: 16px;
    }
</style

<body>

<div>
${loginBean.userName}'s dashboard
</div>

<div>
	<form method="post" action="${flowExecutionUrl}">

		<input type="hidden" name="_flowExecutionKey" value="${flowExecutionKey}" />

        <input type="submit" name="_eventId" value="topic1">
		<input type="submit" name="_eventId" value="topic2">

	</form>
</div>

</body>
</html>