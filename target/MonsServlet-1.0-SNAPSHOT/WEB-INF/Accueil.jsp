<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="baseDeDonne.Utilisateurs"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./css/styles.css"/>
        <title>Accueil</title>
    </head>
    <body>
        <main>
            
            <div class="main row">
                <div class="menu"> 
                    <table>
                        <tr>
                         <h2> Bienvenue : ${nom}  ${prenom} <a href="monServlet2"><h2>Deconnexion</h2></a></h2>
                       
                    </tr>
                    </table>
                    
                </div>
               
                <div class="matable col-lg-8" align="center">
                    <table class="table" id="table">
                        <thead class="color-blue">
                        <th>Nom</th> <th> Prénom </th> <th> Pseudo </th> <th> Email </th>  
                        </thead>
                        <tbody>
                        <%
                            List<Utilisateurs> users = (ArrayList <Utilisateurs>)session.getAttribute("liste");
                            
                            for(Utilisateurs user : users)
                            {
                        %>
                            
                                  <tr>
                                 <td> <% out.print(user.getNom()); %></td>
                                   <td><% out.print(user.getPrenom()); %></td>
                                  <td><% out.print(user.getPseudo()); %></td>
                                  <td> <% out.print(user.getEmail()); %></td>
                                </tr>
                          

                        <%
                            } 
                        %>
                  </tbody>
                    </table>
                </div>
                
             
            </div>
        </main>

                
                
                
                
                
                <style>
                    .main
                    {
                        border: 2px solid blue;
                        margin: 45px auto; width: 70%;
                    }
                    .menu
                    {
                        border-bottom: 2px solid green;
                    }
                   
                    
                    .matable table,td
                    {
                        border: 1px solid;
                        border-collapse: collapse;
                        
                    }
                    .matable table
                    {
                        width: 65%;margin: 10px auto;
                    }
                </style>
    </body>
</html>
