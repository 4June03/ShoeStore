<%-- 
    Document   : adminpage
    Created on : Jul 28, 2024, 10:27:23 PM
    Author     : HUU NGHIA
--%>

<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
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
                            
                            <div class="row align-items-center">
                                <div class="col-md-12">
                                    <form action="addCategory" method="POST">
                                        <div class="form-group row mb-3">
                                            <label for="categoryName" class="col-sm-4 col-form-label ">Tên danh mục:</label>
                                            <div class="col-sm-8">
                                                <input type="text" class="form-control" id="categoryName" name="cname" required>
                                            </div>
                                        </div>
                                       
                                        <button type="submit" class="btn btn-primary">Thêm danh mục</button>
                                    </form>
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
