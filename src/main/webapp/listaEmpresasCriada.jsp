
<%@ page
	import="java.util.List,br.com.alura.gerenciador.modelo.Empresa"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<html>
<body>
	<c:if test="${ not empty empresa }">
		<h3>Empresa ${empresa} cadastrada com sucesso!</h3>
	</c:if>
	<br />

	<h1>Lista de Empresas</h1>
	<br />
	<ul>
		<c:forEach items="${empresas}" var="empresa">

			<li>${empresa.nome} -- <fmt:formatDate
					value="${empresa.dataAbertura}" pattern="dd/MM/yyyy" /> <a
				href="/gerenciador/entrada?acao=MostraEmpresa&id=${empresa.id}">edita</a> <a
				href="/gerenciador/entrada?acao=RemoveEmpresa&id=${empresa.id}">remove</a>
			</li>
		</c:forEach>
	</ul>
</body>
</html>
