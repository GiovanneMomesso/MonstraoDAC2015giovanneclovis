<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:choose>
    <c:when test="${sessionScope.user == null}">            
        <div class="box search 	">
            <h2> Login <span></span></h2>
            <div class="box-content">

                <form action="LoginServlet?action=login" method="post">                                            
                    <label>Nome de Usu&aacute;rio</label>
                    <input type="text" class="field" name="campoLogin" />

                    <label>Senha</label>
                    <input type="password" class="field" name="campoSenha"/>						
                    <br>
                    <input type="submit" class="search-submit" value="Login" />
                    <a href="cadastro.jsp"><input type="button" class="search-submit" value="Cadastre-se" /></a>
            </div>
        </div>
    
</c:when>           
<c:otherwise >
    <div class="box ">
        <h2><c:out value="Olá ${sessionScope.user.nome}"/><span></span></h2>
        <div class="box-content"> 	
            <p><a href="LoginServlet?action=logout" class="bul">Logout</a><br /></p>
            
        </div>
    </div>
</c:otherwise>
</c:choose>