<%@tag description="template" pageEncoding="UTF-8"%>
<%@attribute name="header" fragment="false" %>
<%@attribute name="footer" fragment="true" %>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  </head>

  <body>
    <jsp:invoke fragment="header"/>
    <jsp:doBody/>
    <jsp:invoke fragment="footer"/>
  </body>
</html>