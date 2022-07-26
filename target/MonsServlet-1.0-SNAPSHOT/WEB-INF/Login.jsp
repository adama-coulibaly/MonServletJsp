<%-- 
    Document   : Login
    Created on : 21 juil. 2022, 14:20:00
    Author     : Batou
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./css/styles.css"/>
        <title>Login</title>
    </head>
    <body>
       
        
         <h4>${erreurs}</h4>
         <div align="center" class="formulaire">
             <h2>Login</h2>
             <img src="./img/inconnu1.jpg" width="150" height="150" alt="Icone"/>
        <form method="post">
        <table>
           
            <tr>
                <td> <input type="text" name="pseudo" id="pseudo" placeholder="PSEUDO"> </td>
                <td> <input type="password" name="passe1" id="nom" placeholder="MOT DE PASSE"> </td>
            </tr>
            <tr> 
                <td><input type="submit" name="envoi" id="envoi" value="Envoyer"> </td>
            </tr>
        </table>
        </form>
            <h3>Pas de compte ?    <a href="Monservlet1"> <button>Inscription</button></a></h3>
         </div>
        
         
    </body>
</html>
