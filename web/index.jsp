<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<jsp:include page = "layout/head.html" />  
<body>
                            
<!-- Shell -->	
<div class="shell">
	
	<!-- Header -->	
	<div id="header">
		<jsp:include page = "layout/header.html" /> 	
		
		<!-- Cart -->
                    <jsp:include page = "funcionalidades/carrinho.jsp" /> 
		<!-- End Cart -->
		
		<!-- Navigation -->
                    <jsp:include page = "layout/menu_cliente.html" /> 
		<!-- End Navigation -->
	</div>
	<!-- End Header -->
        
        
	
	<!-- Main -->
	<div id="main">
		<div class="cl">&nbsp;</div>
		
		<!-- Content -->
		<div id="content">
			
			<!-- Content Slider -->
			<div id="slider" class="box">
				<div id="slider-holder">
					<ul>
					    <li><a href="promo.jsp"><img src="css/images/slide1.jpg" alt="" /></a></li>
					    <li><a href="promo.jsp"><img src="css/images/slide1.jpg" alt="" /></a></li>
					    <li><a href="promo.jsp"><img src="css/images/slide1.jpg" alt="" /></a></li>
					    <li><a href="promo.jsp"><img src="css/images/slide1.jpg" alt="" /></a></li>
					</ul>
				</div>
				<div id="slider-nav">
					<a href="#" class="active">1</a>
					<a href="#">2</a>
					<a href="#">3</a>
					<a href="#">4</a>
				</div>
			</div>
			<!-- End Content Slider -->
			
                        <div class="products">
                    <div class="cl">&nbsp;</div>
                    <c:forEach var="produto" items="${produtoDao.listar()}">
                        <ul>
                            <li>
                                <img src="${produto.img}"/>
                                <div class="product-info">
                                    <h3>${produto.categoria} | ${produto.descricaoBasica}</h3>
                                    <div class="product-desc">
                                        <p>${produto.nome}</p>
                                        <strong class="price"><fmt:formatNumber value="${produto.valor}" type="currency"/></strong>
                                        <table class='ex1'>
                                            <tr>                                                
                                                <td><a href="ControladoraProduto?action=detalhes&idproduto=${produto.idProduto}" class='search-submit'>Detalhes</a> 
                                                <a href="ControladoraCarrinho?action=adicionar&produto=${produto.idProduto}" class='search-submit' onclick="return verificar()">Comprar</a></td>                                                
                                                                      
                                            </tr>
                                        </table>	
                                    </div>
                                </div>
                            </li>
                          
                        </c:forEach>
                        <div class="cl">&nbsp;</div>

                </div>
			<!-- End Products -->
			
		</div>
		<!-- End Content -->
		
		<!-- Sidebar -->
		<div id="sidebar">
		
			<!-- Login -->
                            <jsp:include page = "funcionalidades/login.jsp" />
			<!-- End Login -->		
			
			<!-- Search -->
                            <jsp:include page = "funcionalidades/search.jsp" />
			<!-- End Search -->
			
			<!-- Categories -->
                            <jsp:include page = "funcionalidades/categorias.jsp" />
			<!-- End Categories -->
			
		</div>
		<!-- End Sidebar -->
		
		<div class="cl">&nbsp;</div>
	</div>
	<!-- End Main -->
        
        
	
	<!-- Side Full -->
          <jsp:include page = "layout/sidefull.html" /> 
	<!-- End Side Full -->
	
	<!-- Footer -->
            <jsp:include page = "layout/footer.html" />
	<!-- End Footer -->
	
</div>	
<!-- End Shell -->
	
	
</body>
</html>