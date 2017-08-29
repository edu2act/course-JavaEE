package com;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.BodyContent;
import javax.servlet.jsp.tagext.BodyTag;
import javax.servlet.jsp.tagext.Tag;

public class MarkTag implements BodyTag {
	private PageContext pageContext;
	private Tag parentTag;
	private String search = null;
	private BodyContent bodyContent;

	@Override
	public void doInitBody() throws JspException {
		// TODO Auto-generated method stub

	}

	@Override
	public void setBodyContent(BodyContent bodyContent) {
		// TODO Auto-generated method stub
		this.bodyContent = bodyContent;

	}

	@Override
	public int doAfterBody() throws JspException {
		// TODO Auto-generated method stub
		try {
			JspWriter out = bodyContent.getEnclosingWriter();
			String text = bodyContent.getString();
			int len = search.length();
			int oldIndex = 0, newIndex = 0;
			while ((newIndex = text.indexOf(search, oldIndex)) >= 0) {
				if (newIndex < oldIndex) {
					break;
				}
				out.print(text.substring(oldIndex, newIndex));
				out.print("<b>" + search + "</b>");
				oldIndex = newIndex + len;
			}
			out.print(text.substring(oldIndex));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return SKIP_PAGE;
	}

	@Override
	public int doEndTag() throws JspException {
		// TODO Auto-generated method stub
		return EVAL_PAGE;
	}

	@Override
	public int doStartTag() throws JspException {
		// TODO Auto-generated method stub
		return EVAL_BODY_BUFFERED;
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

	public void setSearch(String search) {
		// TODO Auto-generated method stub
		this.search = search;

	}
}
