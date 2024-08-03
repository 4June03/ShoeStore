<%-- 
    Document   : adminsidebar
    Created on : Jul 29, 2024, 5:00:17 PM
    Author     : HUU NGHIA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

        <div class="sidebar" data-background-color="dark">
        <div class="sidebar-logo">
          <!-- Logo Header -->
          <div class="logo-header" data-background-color="dark">
            <a href="adminpage.jsp" class="logo">
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
        <div class="sidebar-wrapper scrollbar scrollbar-inner">
          <div class="sidebar-content">
            <ul class="nav nav-secondary">
              
              <li class="nav-section">
                <span class="sidebar-mini-icon">
                  <i class="fa fa-ellipsis-h"></i>
                </span>
                <h4 class="text-section">Danh sách</h4>
              </li>
              
              
              
              <li class="nav-item">
                <a data-bs-toggle="collapse" href="#sidebarLayouts">
                  <i class="fab fa-product-hunt"></i>
                  <p>Quản lí sản phẩm</p>
                  <span class="caret"></span>
                </a>
                <div class="collapse" id="sidebarLayouts">
                  <ul class="nav nav-collapse">
                    <li>
                      <a href="category">
                        <span class="sub-item">Danh mục sản phẩm</span>
                      </a>
                    </li>
                    <li>
                      <a href="product">
                        <span class="sub-item">Sản phẩm</span>
                      </a>
                    </li>
                  </ul>
                </div>
              </li>
              
              
              <li class="nav-item">
                <a data-bs-toggle="collapse" href="#forms">
                  <i class="fas fa-user"></i>
                  <p>Quản lí tài khoản</p>
                  <span class="caret"></span>
                </a>
                <div class="collapse" id="forms">
                  <ul class="nav nav-collapse">
                    <li>
                      <a href="forms/forms.html">
                        <span class="sub-item">Danh sách tài khoản</span>
                      </a>
                    </li>
                  </ul>
                </div>
              </li>
              
              
              <li class="nav-item">
                <a data-bs-toggle="collapse" href="#tables">
                  <i class="fas fa-shopping-cart"></i>
                  <p>Quản lí đơn hàng</p>
                  <span class="caret"></span>
                </a>
                <div class="collapse" id="tables">
                  <ul class="nav nav-collapse">
                    <li>
                      <a href="tables/tables.html">
                        <span class="sub-item">Danh sách đơn hàng</span>
                      </a>
                    </li>
                    <li>
                      <a href="tables/datatables.html">
                        <span class="sub-item">Datatables</span>
                      </a>
                    </li>
                  </ul>
                </div>
              </li>
              
              <li class="nav-item">
                <a data-bs-toggle="collapse" href="#maps">
                  <i class="fas fa-truck"></i>
                  <p>Quản lí vận chuyển</p>
                  <span class="caret"></span>
                </a>
                <div class="collapse" id="maps">
                  <ul class="nav nav-collapse">
                    <li>
                      <a href="maps/googlemaps.html">
                        <span class="sub-item">Danh sách vận chuyển</span>
                      </a>
                    </li>
                    
                  </ul>
                </div>
              </li>
              
            
            
              
            </ul>
          </div>
        </div>
      </div>
    
