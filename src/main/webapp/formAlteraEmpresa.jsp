<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<c:url value="/entrada" var="linkEntradaServlet" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="${linkEntradaServlet}" method="post"
		style="display: flex; justify-content: center; margin: 1em; flex-direction: column">
		Nome: <input type="text" name="nome" value="${empresa.nome }" /><br />
		Data Abertura: <input type="text" name="data"
			value="<fmt:formatDate
					value="${empresa.dataAbertura}" pattern="dd/MM/yyyy" />" /><br />
		<input type="hidden" name="id" value="${empresa.id }" />
		<input type="hidden" name="acao" value="AlteraEmpresa" />
		<input type="submit" />

	</form>
</body>
</html>