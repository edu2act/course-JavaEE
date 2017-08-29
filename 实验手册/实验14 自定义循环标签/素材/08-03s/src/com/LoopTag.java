package com;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.IterationTag;
import javax.servlet.jsp.tagext.Tag;

public class LoopTag implements IterationTag {
	private PageContext pageContext;
	private Tag parentTag;
	private int count = 0;

	@Override
	public int doAfterBody() throws JspException {
		// TODO Auto-generated method stub
		if (--count > 0)
			return EVAL_BODY_AGAIN;
		else
			return SKIP_BODY;
	}

	@Override
	public int doEndTag() throws JspException {
		// TODO Auto-generated method stub
		return EVAL_PAGE;
	}

	@Override
	public int doStartTag() throws JspException {
		// TODO Auto-generated method stub
		if (count > 0)
			return EVAL_BODY_INCLUDE;
		else
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

	public void setCount(int count) {
		this.count = count;
	}

}
