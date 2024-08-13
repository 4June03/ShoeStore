<%-- 
    Document   : allproductpage
    Created on : Aug 11, 2024, 4:06:13 PM
    Author     : HUU NGHIA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <jsp:include page="homepagehead.jsp"></jsp:include>
    <jsp:include page="homenavbar.jsp"></jsp:include>
        <body>
            <!-- breadcrumbs -->
            <div class="breadcrumbs">
                <div class="container">
                    <div class="row">
                        <div class="col">
                            <p class="bread"><span><a href="${pageContext.request.contextPath}/home">Home</a></span> / <span>Shopping</span></p>
                    </div>
                </div>
            </div>
        </div>
        <!-- breadcrumbs -->

        <!-- breadcrumbs img -->
        <div class="breadcrumbs-two">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <div class="breadcrumbs-img" style="background-image: url(../assets/img/shopping2.jpg);">
                            <h2 class="text-light">Choose what you want</h2>
                        </div>
                        <div class="menu text-center">
                            <p><a href="#">New Arrivals</a> <a href="#">Best Sellers</a> <a href="#">Extended Widths</a> <a href="#">Sale</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- breadcrumbs img -->

        <!-- products -->
        <div class="colorlib-product">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-xl-3">
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="side border mb-1">
                                    <h3>Brand</h3>
                                    <ul>
                                        <c:forEach items="${requestScope.clist}" var="c">
                                            <li><a href="#">${c.cname}</a></li>
                                            </c:forEach>

                                    </ul>
                                </div>
                            </div>


                            <div class="col-sm-12">
                                <div class="side border mb-1">
                                    <h3>Size</h3>
                                    <div class="block-26 mb-2">                                           
                                        <ul>
                                            <c:forEach items="${requestScope.sizes}" var="s">
                                                <li><a href="#">${s}</a></li>
                                                </c:forEach>                                             
                                        </ul>
                                    </div>

                                </div>
                            </div>


                            <div class="col-sm-12">
                                <div class="side border mb-1">
                                    <h3>Price</h3>
                                    <ul>
                                        <li><a href="#">BioBevel</a></li>
                                        <li><a href="#">Groove</a></li>
                                        <li><a href="#">FlexBevel</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-9 col-xl-9">
                        
                        <div class="row row-pb-md">

                            <c:forEach items="${requestScope.plist}" var="p">
                                <div class="col-lg-3 mb-4 text-center">
                                    <div class="product-entry border">
                                        <a href="${pageContext.request.contextPath}/productdetail?id=${p.id}" class="prod-img">
                                            <img src="../assets/img/${p.image}" class="img-fluid" alt="Free html5 bootstrap 4 template">
                                        </a>
                                        <div class="desc">
                                            <h2><a href="${pageContext.request.contextPath}/productdetail?id=${p.id}">${p.name}</a></h2>
                                            <span class="price">$${p.price}</span>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>

                        </div>
                        <div class="row">
                            <div class="col-md-12 text-center">
                                <div class="block-27">
                                    <ul>
                                        <li><a href="${pageContext.request.contextPath}/shopping?page=${i-1}"><i class="ion-ios-arrow-back"></i></a></li>

                                        <c:forEach begin="1" end="${requestScope.pageN}" var="i">

                                            <li  class="${i == selectedP ? 'active' : ''}"><a href="${pageContext.request.contextPath}/shopping?page=${i}">${i}</a></li>

                                        </c:forEach>
                                        <li><a href="${pageContext.request.contextPath}/shopping?page=${i+1}"><i class="ion-ios-arrow-forward"></i></a></li>    

                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- products -->

        <jsp:include page="homepagefooter.jsp"></jsp:include>   
    </body>
</html>
