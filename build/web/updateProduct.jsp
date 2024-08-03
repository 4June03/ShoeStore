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

                    <div class="container d-flex justify-content-center align-items-center min-vh-100">
                        <div class="page-inner w-100" style="max-width: 600px;">
                            <div class="d-flex align-items-center flex-column pt-2 pb-4">
                                <div class="row align-items-center">
                                    <div class="col-md-12">
                                        <form action="updateProduct" method="POST">
                                            
                                            <div class="form-group row mb-3">
                                                <label for="categoryName" class="col-sm-4 col-form-label text-right">Id:</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control" id="categoryName" readonly value="${requestScope.product.id}" required>
                                                <input type="text" class="form-control" id="categoryName" name="id" value="${requestScope.product.id}" hidden="">
                                            </div>
                                            </div>
                                            
                                            
                                            <div class="form-group row mb-3">
                                                <label for="categoryName" class="col-sm-4 col-form-label text-right">Tên sản phẩm:</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control" id="categoryName" name="name" value="${requestScope.product.name}" required>
                                            </div>
                                        </div>

                                        <div class="form-group row mb-3">
                                            <label for="description" class="col-sm-4 col-form-label text-right">Mô tả:</label>
                                            <div class="col-sm-8">
                                                <textarea class="form-control" id="description" name="description" required>${requestScope.product.description}</textarea>
                                            </div>
                                        </div>

                                        <div class="form-group row mb-3">
                                            <label for="image" class="col-sm-4 col-form-label text-right">Ảnh:</label>
                                            <div class="col-sm-8">
                                                <input type="file" class="form-control" id="image" name="image" required>
                                            </div>
                                        </div>

                                        <div class="form-group row mb-3">
                                            <label for="price" class="col-sm-4 col-form-label text-right">Giá:</label>
                                            <div class="col-sm-8">
                                                <input type="number" class="form-control" id="price" name="price" required value="${requestScope.product.price}">
                                            </div>
                                        </div>

                                        <div class="form-group row mb-3">
                                            <label for="quantity" class="col-sm-4 col-form-label text-right">Số lượng:</label>
                                            <div class="col-sm-8">
                                                <input type="number" class="form-control" id="quantity" name="quantity" required value="${requestScope.product.quantity}">
                                            </div>
                                        </div>

                                        <div class="form-group row mb-3">
                                            <label for="categorySelect" class="col-sm-4 col-form-label text-right">Chọn danh mục:</label>
                                            <div class="col-sm-8">
                                                <select class="form-control" id="categorySelect" name="category">
                                                    <c:forEach items="${requestScope.listC}" var="c" >

                                                        <option value="${c.id}" <c:if test="${requestScope.product.c.id == c.id}">
                                                                selected
                                                            </c:if>>${c.cname}</option>

                                                    </c:forEach>


                                                    <!-- Thêm các danh mục khác ở đây -->
                                                </select>
                                            </div>
                                        </div>

                                        <div class="form-group row mb-3">
                                            <div class="col-sm-12 text-center">
                                                <button type="submit" class="btn btn-primary">Cập nhật</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


            </div>

    </body>
</html>
