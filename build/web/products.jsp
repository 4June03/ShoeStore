<%-- 
    Document   : adminpage
    Created on : Jul 28, 2024, 10:27:23 PM
    Author     : HUU NGHIA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> %>
<!DOCTYPE html>
<html lang="en">

    <jsp:include page="admin/adminhead.jsp"></jsp:include>
        <body>
            <div class="wrapper">
                <!-- Sidebar -->
            <jsp:include page="admin/adminsidebar.jsp"></jsp:include>
                <!-- End Sidebar -->

                <div class="main-panel">
                    <div class="main-header">
                        <div class="main-header-logo">
                            <!-- Logo Header -->
                            <div class="logo-header" data-background-color="dark">
                                <a href="index.html" class="logo">
                                    <img
                                        src="assets/img/kaiadmin/logo_light.svg"
                                        alt="navbar brand"
                                        class="navbar-brand"
                                        height="20"
                                        />
                                </a>

                                <div class="nav-toggle">
                                    <button class="btn btn-toggle toggle-sidebar">
                                        <i class="gg-menu-right"></i>
                                    </button>
                                    <button class="btn btn-toggle sidenav-toggler">
                                        <i class="gg-menu-left"></i>
                                    </button>
                                </div>
                                <button class="topbar-toggler more">
                                    <i class="gg-more-vertical-alt"></i>
                                </button>
                            </div>
                            <!-- End Logo Header -->
                        </div>
                        <!-- Navbar Header -->
                    <jsp:include page="admin/adminnavbarheader.jsp"></jsp:include>
                        <!-- End Navbar -->
                    </div>

                    <div class="container">
                        <div class="page-inner">
                            <div
                                class="d-flex align-items-left align-items-md-center flex-column flex-md-row pt-2 pb-4"
                                >
                                <div>
                                    <h3 class="fw-bold mb-3">Danh sách sản phẩm</h3>

                                    <a href="addProduct" class="btn btn-primary btn-round"> <i class="fas fa-plus-square me-2"></i>thêm sản phẩm</a>
                                </div>

                            </div>

                            <div class="row align-items-center">
                                <div class="col-md-12">
                                    <table class="table table-striped mt-3">
                                        <thead>
                                            <tr>                                              
                                                <th scope="col">ID</th>
                                                <th scope="col">tên sản phẩm</th>
                                                <th scope="col">Mô tả</th>
                                                <th scope="col">Ảnh</th>
                                                <th scope="col">Giá</th>
                                                <th scope="col">Số lượng</th>
                                                <th scope="col">Tên danh mục</th>
                                                <th scope="col">Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>

                                        <c:forEach items="${requestScope.products}" var="p">
                                            <c:set var="id" value="${p.id}" />
                                            <tr>
                                                <td>${id}</td>
                                                <td>${p.name}</td>
                                                <td>${p.description}</td>
                                                <td><img src="assets/img/${p.image}" alt="ảnh sản phẩm" height="80px" width="80px"/></td>
                                                <td>${p.price}$</td>
                                                <td>${p.quantity}</td>
                                                <td>${p.c.cname}</td>

                                                <td>
                                                    <a href="updateProduct?id=${id}" class="btn btn-warning btn-round"><i class="fas fa-edit"></i></a>
                                                    <a href="deleteProduct?id=${id}" class="btn btn-danger btn-round"><i class="fas fa-trash"></i></a>
                                                </td>
                                            </tr>
                                        </c:forEach>



                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="row">
                            <nav aria-label="..." class="d-flex float-right">
                                <ul class="pagination">
                                    <li class="page-item disabled">
                                        <a class="page-link">Previous</a>
                                    </li>
                                    
                                <c:forEach begin="1" end="${requestScope.pageN}" var="o">
                                    <li class="page-item ${o==requestScope.selectedp?'active':''}" aria-current="page">
                                        <a class="page-link" href="product?page=${o}">${o}</a>
                                    </li>
                                </c:forEach>
                                
                                    
                                    <li class="page-item">
                                        <a class="page-link" href="#">Next</a>
                                    </li>
                                </ul>
                            </nav>
                        </div>

                    </div>
                </div>

                <footer class="footer">
                    <div class="container-fluid d-flex justify-content-between">
                        <nav class="pull-left">
                            <ul class="nav">
                                <li class="nav-item">
                                    <a class="nav-link" href="http://www.themekita.com">
                                        ThemeKita
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#"> Help </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#"> Licenses </a>
                                </li>
                            </ul>
                        </nav>
                        <div class="copyright">
                            2024, made with <i class="fa fa-heart heart text-danger"></i> by
                            <a href="http://www.themekita.com">ThemeKita</a>
                        </div>
                        <div>
                            Distributed by
                            <a target="_blank" href="https://themewagon.com/">ThemeWagon</a>.
                        </div>
                    </div>
                </footer>
            </div>


        </div>

    </body>
</html>
