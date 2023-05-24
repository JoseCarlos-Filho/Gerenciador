<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/entrada" var="linkEntradaServlet" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<form action="${linkEntradaServlet}" method="post" style="margin: 1em">
		Nome: <input type="text" name="nome" style="margin: 1em"/><br />
		Data Abertura: <input type="text" name="data" style="margin: 1em"/><br />
		<input type="hidden" name="acao" value="NovaEmpresa" />
		<input type="submit" />
	
	</form>
</body>
</html>