<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>displayProducts</title>
</head>
 <body>
    <h1>JSP 2.0 Examples - Display Products Tag File</h1>
    <hr>
    <p>This JSP page invokes a tag file that displays a listing of 
    products.  The custom tag accepts two fragments that enable
    customization of appearance.  One for when the product is on sale
    and one for normal price.</p>
    <p>The tag is invoked twice, using different styles</p>
    <hr>
    <h2>Products</h2>
    <tags:displayProducts>
      <jsp:attribute name="normalPrice">
	Item: ${name}<br/>
	Price: ${price}
      </jsp:attribute>
      <jsp:attribute name="onSale">
	Item: ${name}<br/>
	<font color="red"><strike>Was: ${origPrice}</strike></font><br/>
	<b>Now: ${salePrice}</b>
      </jsp:attribute>
    </tags:displayProducts>
    <hr>
    <h2>Products (Same tag, alternate style)</h2>
    <tags:displayProducts>
      <jsp:attribute name="normalPrice">
	<b>${name}</b> @ ${price} ea.
      </jsp:attribute>
      <jsp:attribute name="onSale">
	<b>${name}</b> @ ${salePrice} ea. (was: ${origPrice})
      </jsp:attribute>
    </tags:displayProducts>
  </body>
</html>