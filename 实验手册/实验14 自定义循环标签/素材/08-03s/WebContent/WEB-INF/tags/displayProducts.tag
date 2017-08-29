<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ attribute name="normalPrice" fragment="true" %>
<%@ attribute name="onSale" fragment="true" %>
<%@ variable name-given="name" %>
<%@ variable name-given="price" %>
<%@ variable name-given="origPrice" %>
<%@ variable name-given="salePrice" %>
<table border="1">
  <tr>
    <td> 
      <c:set var="name" value="Hand-held Color PDA"/>
      <c:set var="price" value="$298.86"/>
      <jsp:invoke fragment="normalPrice"/>
    </td>
    <td> 
      <c:set var="name" value="4-Pack 150 Watt Light Bulbs"/>
      <c:set var="origPrice" value="$2.98"/>
      <c:set var="salePrice" value="$2.32"/>
      <jsp:invoke fragment="onSale"/>
    </td>
    <td> 
      <c:set var="name" value="Digital Cellular Phone"/>
      <c:set var="price" value="$68.74"/>
      <jsp:invoke fragment="normalPrice"/>
    </td>
    <td> 
      <c:set var="name" value="Baby Grand Piano"/>
      <c:set var="price" value="$10,800.00"/>
      <jsp:invoke fragment="normalPrice"/>
    </td>
    <td> 
      <c:set var="name" value="Luxury Car w/ Leather Seats"/>
      <c:set var="origPrice" value="$23,980.00"/>
      <c:set var="salePrice" value="$21,070.00"/>
      <jsp:invoke fragment="onSale"/>
    </td>
  </tr>
</table>
