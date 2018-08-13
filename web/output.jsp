<%--
  Created by IntelliJ IDEA.
  User: wickedwitch
  Date: 13/08/2018
  Time: 17:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSP Page</title>
</head>
<body>

 <h2>JSP output file</h2>
 <p>
     Name: <%= request.getAttribute("name")%>
 </p>

</body>
</html>
