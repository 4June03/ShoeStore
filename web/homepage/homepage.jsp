<%-- 
    Document   : homepage
    Created on : Aug 5, 2024, 10:03:31 PM
    Author     : HUU NGHIA
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="homepagehead.jsp"></jsp:include>  
        <body>

            <div id="page">
                <!-- navbar -->   
            <jsp:include page="homenavbar.jsp"></jsp:include>
                <!-- end navbar -->   
                <!-- slide -->
                <aside id="colorlib-hero">
                    <div class="flexslider">
                        <ul class="slides">
                            <li style="background-image: url(../assets/img/AdidasSlide.jpg);">
                                <div class="overlay"></div>
                                <div class="container-fluid">
                                    <div class="row">
                                        <div class="col-sm-6 offset-sm-3 text-center slider-text">
                                            <div class="slider-text-inner">
                                                <div class="desc">
                                                    <h1 class="head-1">Adidas</h1>
                                                    <h2 class="head-2">Shoes</h2>
                                                    <p class="category"><span>New trending shoes</span></p>
                                                    <p><a href="#" class="btn btn-primary">Shop Collection</a></p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li style="background-image: url(../assets/img/NikeSlide.jpg);">
                                <div class="overlay"></div>
                                <div class="container-fluid">
                                    <div class="row">
                                        <div class="col-sm-6 offset-sm-3 text-center slider-text">
                                            <div class="slider-text-inner">
                                                <div class="desc">
                                                    <h1 class="head-1">Nike</h1>
                                                    <h2 class="head-2">shoes</h2>                                             
                                                    <p class="category"><span>Big sale sandals</span></p>
                                                    <p><a href="#" class="btn btn-primary">Shop Collection</a></p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li style="background-image: url(../assets/img/Slide3.jpg);">
                                <div class="overlay"></div>
                                <div class="container-fluid">
                                    <div class="row">
                                        <div class="col-sm-6 offset-sm-3 text-center slider-text">
                                            <div class="slider-text-inner">
                                                <div class="desc">
                                                    <h1 class="head-1">Dr.Martens</h1>
                                                    <h2 class="head-2">Shoes</h2>                                     
                                                    <p class="category"><span>New stylish shoes for men</span></p>
                                                    <p><a href="#" class="btn btn-primary">Shop Collection</a></p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </aside>
                <!-- end slide -->

                <!-- products -->
                <div class="colorlib-product">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-8 offset-sm-2 text-center colorlib-heading">
                                <h2>Sản phẩm mới</h2>
                            </div>
                        </div>


                        <div class="row row-pb-md">

                        <c:forEach items="${requestScope.list}" var="p">

                            <div class="col-lg-3 mb-4 text-center">
                                <div class="product-entry border">
                                    <a href="${pageContext.request.contextPath}/productdetail?id=${p.id}" class="prod-img">
                                        <img src="../assets/img/${p.image}" class="img-fluid" alt="product image">
                                    </a>
                                    <div class="desc">
                                        <h2><a href="${pageContext.request.contextPath}/productdetail?id=${p.id}">${p.name}</a></h2>
                                        <span class="price">${p.price}$</span>
                                    </div>
                                </div>
                            </div>

                        </c:forEach>

                    </div>


                </div>    
            </div>
            <div class="row">
                <div class="col-md-12 text-center">
                    <p><a href="${pageContext.request.contextPath}/shopping" class="btn btn-primary btn-lg">Tất cả sản phẩm</a></p>
                </div>
            </div>

            <!-- end product -->

            <!-- footer -->
            <jsp:include page="homepagefooter.jsp"></jsp:include>
            <!-- end footer -->
        </div>
    </body>
</html>
