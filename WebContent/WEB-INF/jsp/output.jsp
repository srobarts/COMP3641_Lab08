<jsp:include page="/WEB-INF/jsp/header.jsp"></jsp:include>

<%@ page errorPage="/WEB-INF/jsp/errorPage.jsp" %>
<%@ taglib uri="/WEB-INF/lab08_taglib.tld" prefix="lab08" %>

<div id="content">
	<h1>Query Results:</h1>
	<br />
	<em>Your Query: ${requestScope.queryString}</em>
	<br />
	<h3><a href="./index.jsp">Query Again</a></h3>
	
	<div id="tablecontent">
		<lab08:headertags headerNames="${requestScope.columnNames}" backgroundColor="tan"></lab08:headertags>
		<lab08:rowtags rowData="${requestScope.results}" evenRowColor="tan" oddRowColor="white"></lab08:rowtags>
	</div>
</div>

<jsp:include page="/WEB-INF/jsp/footer.jsp"></jsp:include>