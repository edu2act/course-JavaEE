<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>

<c:forTokens items="0 1 1 2 3 5 " delims="" var="fibNum">
<c:out value="${fibNum}"></c:out>
</c:forTokens>