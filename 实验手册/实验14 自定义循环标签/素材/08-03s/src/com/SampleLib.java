package com;

import java.io.IOException;

import javax.servlet.jsp.JspContext;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.DynamicAttributes;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.JspTag;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class SampleLib extends SimpleTagSupport implements DynamicAttributes {
	String user = "";
	String output = "";

	public void setUser(String user) {
		this.user = user;
	}

	@Override
	public void doTag() throws JspException, IOException {
		// TODO Auto-generated method stub
		getJspContext().getOut().print(output);

	}

	@Override
	public JspTag getParent() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setJspBody(JspFragment arg0) {
		// TODO Auto-generated method stub

	}

	@Override
	public void setJspContext(JspContext arg0) {
		// TODO Auto-generated method stub

	}

	@Override
	public void setParent(JspTag arg0) {
		// TODO Auto-generated method stub

	}

	@Override
	public void setDynamicAttribute(String arg0, String arg1, Object arg2)
			throws JspException {
		// TODO Auto-generated method stub
		output = "hello" + user;

	}

}
