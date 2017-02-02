<%@ include file="/WEB-INF/jsp/includes.jsp"%>

<liferay-portlet:actionURL portletConfiguration="true"
	var="configurationURL" />

<%
 String twitterUsername_cfg = HtmlUtil.escape(GetterUtil.getString(portletPreferences.getValue("twitterUsername", StringPool.BLANK)));
 Integer timelineHeight_cfg = GetterUtil.getInteger(portletPreferences.getValue("timelineHeight", "500"));
%>


<aui:form action="<%= configurationURL %>" method="post" name="twitterConfigurationForm">
	<aui:input name="<%= Constants.CMD %>" type="hidden"
		value="<%= Constants.UPDATE %>" />
	<aui:input label="screen_name_label" name="preferences--twitterUsername--" type="text"
		value="<%= twitterUsername_cfg %>" />
	<aui:input label="timeline_height_label"  name="preferences--timelineHeight--" type="number" min="1" max="1000"
		value="<%= timelineHeight_cfg %>" />

	<aui:button-row>
		<aui:button type="submit" />
	</aui:button-row>
</aui:form>
