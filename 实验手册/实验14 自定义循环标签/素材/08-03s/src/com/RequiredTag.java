package com;

import java.io.IOException;

import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;

public class RequiredTag implements Tag {
	private PageContext pageContext;
	private Tag parentTag;

	@Override
	public int doEndTag() throws JspException {
		// TODO Auto-generated method stub
		return EVAL_PAGE;
	}

	@Override
	public int doStartTag() throws JspException {
		// TODO Auto-generated method stub
		try {
			JspWriter out = pageContext.getOut();
			out.print("<font color='#ff0000'>*Hello you have used HTML taglib</font>");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return SKIP_BODY;
	}

	@Override
	public Tag getParent() {
		// TODO Auto-generated method stub
		return this.parentTag;
	}

	@Override
	public void release() {
		// TODO Auto-generated method stub

	}

	@Override
	public void setPageContext(PageContext pageContext) {
		// TODO Auto-generated method stub
		this.pageContext = pageContext;

	}

	@Override
	public void setParent(Tag parentTag) {
		// TODO Auto-generated method stub
		this.parentTag = parentTag;

	}

}
