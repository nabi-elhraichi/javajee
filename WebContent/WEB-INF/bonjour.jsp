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
    </body>
    
</html>