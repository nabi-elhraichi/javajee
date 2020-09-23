<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Test</title>
    </head>
    <body>
    	<%@ include file="menu.jsp" %>
        <p>Bonjour ${ auteur['nom'] } votre prénom est ${ auteur['prenom'] } et vous êtes ${ auteur['actif'] ? "actif" : "non actif" }
        </p>
        <p>
        ${ noms[2] }
        </p>
        <!--   Cette balise donne la valeur au "variable" et definit le porteur	 -->
        <c:set var="variable" value="Mateo21" scope="page" />
        <!--   Cette balise affiche la valeur de "variable" et si ce dernier et vide elle affiche "Valeur par défaut" -->
        <p><c:out value="${ variable }">Valeur par défaut</c:out></p>
        <!--   Cette balise permet de modifier une propriété du beans -->
        <c:set target="${ auteur }" property="prenom" value="Mathieu" />
		<p><c:out value="${ auteur.prenom }" /></p>
		<!--   test en JSTL le probleme de cette balise est qu'on peut pas faire des tests multiple ( if else ....) -->
		<!-- <c:if test="${ 50 > 10 }" var="variable">
    		C'est vrai !
		</c:if> -->
		
		<!-- Un test multiple en JSTL : -->
		<!-- <c:choose>
		    <c:when test="${ variable }">Du texte</c:when>
		    <c:when test="${ autreVariable }">Du texte</c:when>
		    <c:when test="${ encoreUneAutreVariable }">Du texte</c:when>
		    <c:otherwise></c:otherwise>
		</c:choose> -->
		<!-- Une boucle qui s'exécute un certain nombre de fois en JSTL : -->
		<c:forEach var="i" begin="0" end="10" step="1">
			<p>Message N° <c:out value="${i}"/></p>
		</c:forEach>
		<!-- Une boucle sur un array (tableau) : -->
		<c:forEach items="${titres}"  var="titre">
			<p><c:out value="${titre}"/></p>
		</c:forEach>
    </body> 
    
</html>