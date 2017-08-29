package com;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class MathTag01 extends SimpleTagSupport {
	int x = 289;

	public void doTag() throws JspException, IOException {
		getJspContext().getOut().print(
				"The squre root of " + x + " is " + Math.sqrt(x) + ".");
	}
}
