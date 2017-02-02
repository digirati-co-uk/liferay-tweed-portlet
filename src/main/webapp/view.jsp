<%@ include file="/WEB-INF/jsp/includes.jsp"%>

<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects />

<%
	String twitterUsername_cfg = GetterUtil.getString(portletPreferences.getValue("twitterUsername", StringPool.BLANK));
%>
<c:set var="twitterUsername" value="<%= HtmlUtil.escape(twitterUsername_cfg) %>"/>
<c:set var="timelineHeight" value="<%= GetterUtil.getInteger(portletPreferences.getValue(\"timelineHeight\", \"500\")) %>"/>
<c:set var="twitterHref" value="<%= HtmlUtil.escapeHREF(\"https://twitter.com/\"+twitterUsername_cfg)%>"/>

<c:choose>
	<c:when test="${not empty twitterUsername}">
		<a 	class="twitter-timeline" 
			data-chrome="noheader nofooter"
			data-height="${timelineHeight}" 
			data-theme="light" 
			href="${twitterHref}" >
			
			<liferay-ui:message key="link_alternate_text" /> ${twitterUsername} 
		</a> 
	</c:when>
	<c:otherwise>
		<liferay-ui:message key="still_to_configure" /> 
	</c:otherwise>
</c:choose>

<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script> 