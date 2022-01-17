<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String col = request.getParameter("c");
	String row = request.getParameter("r");

	int nCol = Integer.parseInt(col);
	int nRow = Integer.parseInt(row);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1px" cellspacing="0" cellpadding="10">
		<%
			for(int i = 0; i < nRow; i++) {
		%>
			<tr>
				<%
					for(int j = 0; j < nCol; j++) {
				%>
					<td>cell(<%=i %>, <%=j %>)</td>
				<%
					}
				%>
			</tr>
		<%
			}
		%>
	</table>
</body>
</html>