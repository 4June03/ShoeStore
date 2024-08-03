<%-- 
    Document   : adminpage
    Created on : Jul 28, 2024, 10:27:23 PM
    Author     : HUU NGHIA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                                <h3 class="fw-bold mb-3">Danh sách danh mục</h3>
                               
                                <a href="addCategory" class="btn btn-primary btn-round"> <i class="fas fa-plus-square me-2"></i>thêm danh mục</a>
                            </div>
                            
                        </div>

                        <div class="row align-items-center">
                            <div class="col-md-12">
                                <table class="table table-striped mt-3">
                                    <thead>
                                        <tr>
                                            <th scope="col">STT</th>
                                            <th scope="col">ID</th>
                                            <th scope="col">Tên danh mục</th>
                                            <th scope="col">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        
                                    <c:set var="i" value="0"/>    
                                    <c:forEach items="${requestScope.data}" var="c">
                                        <tr>
                                            <c:set var="i" value="${i+1}"/>
                                            <td>${i}</td>
                                            <td>${c.id}</td>
                                            <td>${c.cname}</td>
                                            <td>
                                                <a href="updateCategory?id=${c.id}" class="btn btn-warning btn-round"><i class="fas fa-edit"></i></a>
                                                <a href="deleteCategory?id=${c.id}" class="btn btn-danger btn-round"><i class="fas fa-trash"></i></a>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                        
                                       
                                        
                                    </tbody>
                                </table>
                            </div>
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
