<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags/"%>
<t:template>
  <jsp:attribute name="header">
    这里的内容显示在头部。
  </jsp:attribute>
  <jsp:attribute name="footer">
    这里的内容显示在尾部。
  </jsp:attribute>
  <jsp:body>
    这里显示正文内容：Hello World！
  </jsp:body>
</t:template>
