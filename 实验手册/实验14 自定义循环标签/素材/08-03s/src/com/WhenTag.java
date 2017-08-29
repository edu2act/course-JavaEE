package com;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.JspTag;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class WhenTag extends SimpleTagSupport {
	private boolean test;

	@Override
	public void doTag() throws JspException, IOException {
		// TODO Auto-generated method stub

		JspTag parent = getParent();
		if(!(parent instanceof ChooseTag))
		{
			throw new JspTagException("need in chooseTag!");
		}
		ChooseTag choose = (ChooseTag)(parent);
		if(!choose.isMatched() && test){
			choose.setMatched(true);
			this.getJspBody().invoke(null);
		}
	}

	public void setTest(boolean test) {
		this.test = test;
	}
}
