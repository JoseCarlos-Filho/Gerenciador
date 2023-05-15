<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<body>
	<h1>
		<c:if test="${ not empty empresa }">
			<h3>Empresa ${empresa.nome} cadastrada com sucesso!</h3>
		</c:if>

		<c:if test="${ empty empresa }">
				Nenhuma empresa cadastrada!
			</c:if>

		<br />
		<!-- contador de 1 a 10 pulando de 2 em dois. -->
		<c:forEach var="i" begin="1" end="10" step="2">
       			${i} <br />
		</c:forEach>
	</h1>
</body>
</html>