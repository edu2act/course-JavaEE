package com;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.DynamicAttributes;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class MathTag03 extends SimpleTagSupport implements DynamicAttributes {
	double num = 0;
	String output = "";

	public void setNum(double num) {
		this.num = num;
	}

	@Override
	public void setDynamicAttribute(String uri, String localName, Object value)
			throws JspException {
		double val = Double.parseDouble((String) value);
		if (localName == "min") {
			output = output + "<tr><td>The minnum of " + num + " and " + val
					+ " </td><td>" + Math.min(num, val) + "</td></tr>";
		} else if (localName == "max") {
			output = output + "<tr><td>The maxnum of " + num + " and " + val
					+ " </td><td>" + Math.max(num, val) + "</td></tr>";
		} else if (localName == "pow") {
			output = output + "<tr><td> " + num + " raised to the " + val
					+ " power </td><td>" + Math.pow(num, val) + "</td></tr>";
		}

	}

	public void doTag() throws JspException, IOException {
		getJspContext().getOut().print(output);
		getJspBody().invoke(null);// 需要制定一个JspWrite参数用于接收JspFragment的输出
	}
}
