<%-- 
    Document   : Inscrire
    Created on : 21 juil. 2022, 03:29:54
    Author     : Batou
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./css/styles.css"/>
        <title>Inscription</title>
    </head>
    <body> 
        <div align="center" style="color: red;font-weight: bold;"><h4> ${erreurs}</h4> </div>
    <div align="center" class="formulaire">
        
    <h2>Inscription</h2>
    <img src="./img/men2.jpg" width="150" height="150" alt="Icone"/>
        <form method="post">
        <table>
            <tr>
                <td> <input type="text" name="nom" id="nom" placeholder="NOM"> </td>
                <td> <input type="text" name="prenom" id="prenom" placeholder="PRENOM"> </td>
            </tr>
            <tr>
                <td> <input type="text" name="pseudo" id="pseudo" placeholder="PSEUDO"> </td>
                <td> <input type="email" name="email" id="nom" placeholder="adama@gmail.com"> </td>
            </tr>
            <tr>
                <td> <input type="password" name="passe1" id="nom" placeholder="MOT DE PASSE"> </td>
                <td> <input type="password" name="passe2" id="nom" placeholder="CONFIRMER"> </td>
            </tr>
            <tr> 
                <td><input type="submit" name="envoi" id="envoi" value="Envoyer"> </td>
            </tr>
        </table>
        </form>
        
        </div>
    </body>
</html>
