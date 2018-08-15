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
     Name: <%= request.getAttribute("name") %> - JSP Expression
 </p>


 <p>LOGICAL EXPRESSIONS</p>
 <p> 2 + 2 = <%= 2 + 2 %> </p>
 <p> 1 < 2 T/F --> <%= 1 < 2 %> </p>


 <p>LOOPS</p>
 <%
 for(int i = 0; i < 5; i++){
     out.print("<p>Value of i = " + i + "</p>");
 }

 %>

 <br/>
 <br/>

 <p>

     Name: <%

    String fullname =  request.getAttribute("name").toString();
    out.println(fullname);

     %> - JSP Scriplets

 </p>

<br/>
<br/>

 <p>JSP Declarations "!"</p>

 <%!

     int calLenght(String s){
         return s.length();
     }
 %>

 <p>The length of the String =  <%= calLenght("Hello JSP Expression")%></p>

</body>
</html>
