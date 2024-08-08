<%-- 
    Document   : productdetail
    Created on : Aug 7, 2024, 11:06:31 PM
    Author     : HUU NGHIA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <jsp:include page="homepagehead.jsp"></jsp:include>
    <jsp:include page="homenavbar.jsp"></jsp:include>
        <body>
            <div id="page">
                <div class="breadcrumbs">
                    <div class="container">
                        <div class="row">
                            <div class="col">
                                <p class="bread"><span><a href="${pageContext.request.contextPath}/home">Home</a></span> / <span>Product Details</span></p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="colorlib-product">
                <div class="container">
                    <div class="row row-pb-lg product-detail-wrap">
                        <div class="col-sm-8">
                            <div class="owl-carousel owl-theme owl-loaded">
                                <div class="owl-stage-outer">
                                    <div
                                        class="owl-stage"
                                        style="
                                        transform: translate3d(-1220px, 0px, 0px);
                                        transition: all;
                                        width: 4880px;
                                        "
                                        >
                                       
                                        <div class="owl-item cloned" style="width: 610px; margin-right: 0px">
                                            <div class="item">
                                                <div class="product-entry border">
                                                    <a href="#" class="prod-img">
                                                        <img
                                                            src="../assets/img/airforce1.jpg"
                                                            class="img-fluid"
                                                            alt="Free html5 bootstrap 4 template"
                                                            />
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="owl-item active" style="width: 610px; margin-right: 0px">
                                            <div class="item">
                                                <div class="product-entry border">
                                                    <a href="#" class="prod-img">
                                                        <img
                                                            src="../assets/img/blazer.jpg.jpg"
                                                            class="img-fluid"
                                                            alt="Free html5 bootstrap 4 template"
                                                            />
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="owl-item" style="width: 610px; margin-right: 0px">
                                            <div class="item">
                                                <div class="product-entry border">
                                                    <a href="#" class="prod-img">
                                                        <img
                                                            src="../assets/img/${requestScope.product.image}"
                                                            class="img-fluid"
                                                            alt="Free html5 bootstrap 4 template"
                                                            />
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        
                                        
                                        <div class="owl-item cloned" style="width: 610px; margin-right: 0px">
                                            <div class="item">
                                                <div class="product-entry border">
                                                    <a href="#" class="prod-img">
                                                        <img
                                                            src="../assets/img/airmax270.jpg"
                                                            class="img-fluid"
                                                            alt="Free html5 bootstrap 4 template"
                                                            />
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="owl-controls">
                                    <div class="owl-nav">
                                        <div class="owl-prev" style="display: none">
                                            <i class="icon-chevron-left owl-direction"></i>
                                        </div>
                                        <div class="owl-next" style="display: none">
                                            <i class="icon-chevron-right owl-direction"></i>
                                        </div>
                                    </div>
                                    <div class="owl-dots" style="">
                                        <div class="owl-dot active"><span></span></div>
                                        <div class="owl-dot"><span></span></div>
                                        <div class="owl-dot"><span></span></div>
                                        <div class="owl-dot"><span></span></div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-4">
                            <div class="product-desc">
                                <h3>${requestScope.product.name}</h3>
                                <p class="price">
                                    <span>$${requestScope.product.price}</span> 
                                    <span class="rate">
                                        <i class="icon-star-full"></i>
                                        <i class="icon-star-full"></i>
                                        <i class="icon-star-full"></i>
                                        <i class="icon-star-full"></i>
                                        <i class="icon-star-half"></i>
                                        (74 Rating)
                                    </span>
                                </p>
                                <p>${requestScope.product.description}</p>
                                <div class="size-wrap">
                                    <div class="block-26 mb-2">
                                        <h4>Size</h4>
                                        <ul>
                                            <c:forEach items="${requestScope.sizes}" var="s">
                                                <li><a href="#">${s}</a></li>    
                                            </c:forEach>                                                                            
                                        </ul>
                                    </div>
                                    <div class="block-26 mb-4">
                                        <h4>Width</h4>
                                        <ul>
                                            <li><a href="#">M</a></li>
                                            <li><a href="#">W</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="input-group mb-4">
                                    <span class="input-group-btn">
                                        <button type="button" class="quantity-left-minus btn" data-type="minus" data-field="">
                                            <i class="icon-minus2"></i>
                                        </button>
                                    </span>
                                    <input type="text" id="quantity" name="quantity" class="form-control input-number" value="1" min="1" max="100">
                                    <span class="input-group-btn ml-1">
                                        <button type="button" class="quantity-right-plus btn" data-type="plus" data-field="">
                                            <i class="icon-plus2"></i>
                                        </button>
                                    </span>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12 text-center">
                                        <p class="addtocart"><a href="cart.html" class="btn btn-primary btn-addtocart"><i class="icon-shopping-cart"></i> Add to Cart</a></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                </div>
            </div>           


            <jsp:include page="homepagefooter.jsp"></jsp:include>                 
        </div>                

    </body>
</html>
