<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/novaEmpresa" var="linkServletNovaEmpresa" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<form action="${linkServletNovaEmpresa}" method="post" style="margin: 1em">
		Nome: <input type="text" name="nome" style="margin: 1em"/><br />
		Data Abertura: <input type="text" name="data" style="margin: 1em"/><br />
		<input type="submit" />
	
	</form>
</body>
</html>