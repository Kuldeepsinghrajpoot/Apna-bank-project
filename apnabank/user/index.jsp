<%@page import="java.io.*" %>
<%@page import="java.sql.*" %>
<%@include file="catchFile.jsp" %>

<%
Class.forName("com.mysql.cj.jdbc.Driver");
   String Email = (String)session.getAttribute("Email_id");
   String upi_Owner = (String)session.getAttribute("upi_Owner");

   if((Email==null)&&(upi_Owner==null)){
     response.sendRedirect("login.jsp");
   }
   else{
      String FirstName = "";
      String LastName = "";
      String transaction = "";
      String Amount_user = "";
      // Class.forName method

      // connection 
      Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/bank","root","");
      //Statement  // createStatement
      try{
            Statement statement = connection.createStatement();
            String query = "SELECT FirstName,LastName,current_amount FROM userdetails,amount WHERE userdetails.Email='"+Email+"' AND amount.Email='"+Email+"'";
            // execute query
            ResultSet resultset = statement.executeQuery(query);
          if(resultset.next()){
               FirstName   = resultset.getString("FirstName").toString();
               LastName    = resultset.getString("LastName").toString();
               Amount_user = resultset.getString("current_amount").toString();
            }
      }catch(Exception e){

      }

   %>
<!DOCTYPE html>
<html
   lang="en"
   class="light-style layout-menu-fixed"
   dir="ltr"
   data-theme="theme-default"
   data-assets-path="../assets/"
   data-template="vertical-menu-template-free"
   >
   <head>
      <meta charset="utf-8" />
      <meta
         name="viewport"
         content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0"
         />
      <title>Dashboard</title>
      <meta name="description" content="" />
      <!-- Favicon -->
      <link rel="icon" type="image/x-icon" href="../assets/img/favicon/favicon.ico" />
      <!-- Fonts -->
      <link rel="preconnect" href="https://fonts.googleapis.com" />
      <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
      <link
         href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
         rel="stylesheet"
         />
      <!-- Icons. Uncomment required icon fonts -->
      <link rel="stylesheet" href="../assets/vendor/fonts/boxicons.css" />
      <!-- Core CSS -->
      <link rel="stylesheet" href="../assets/vendor/css/core.css" class="template-customizer-core-css" />
      <link rel="stylesheet" href="../assets/vendor/css/theme-default.css" class="template-customizer-theme-css" />
      <link rel="stylesheet" href="../assets/css/demo.css" />
      <!-- Vendors CSS -->
      <link rel="stylesheet" href="../assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />
      <link rel="stylesheet" href="../assets/vendor/libs/apex-charts/apex-charts.css" />
      <link rel="stylesheet" href="index.css"/>
      <!-- Page CSS -->
      <!-- Helpers -->
      <script src="../assets/vendor/js/helpers.js"></script>
      <script src="back.js" ></script>
      <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
      <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
      <script src="../assets/js/config.js"></script>
      
      <style>
      page-link a{
         background:white;
      }
      a{
         background:white;
      }
      </style>
   </head>
   <body onload="onloadFunction()">
      <div id="preloader">
         <div id="loader"></div>
      </div>
      <div class="layout-wrapper layout-content-navbar">
         <div class="layout-container">
            <!-- Menu -->
            <aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme">
               <div class="app-brand demo">
                  <a href="index.jsp" class="app-brand-link">
                  <span class="app-brand-logo demo">
                  </span>
                  <img src="../assets/img/favicon/favicon.ico" style="width: 50px;" alt="bank">
                  <span class="app-brand-text demo menu-text fw-bolder ms-2">apna bank</span>
                  </a>
                  <a href="javascript:void(0);" class="layout-menu-toggle menu-link text-large ms-auto d-block d-xl-none">
                  <i class="bx bx-chevron-left bx-sm align-middle"></i>
                  </a>
               </div>
               <div class="menu-inner-shadow"></div>
               <ul class="menu-inner py-1">
                  <!-- Dashboard -->
                  <li class="menu-item active">
                     <a href="index.jsp" class="menu-link">
                        <i class="menu-icon tf-icons bx bx-home-circle"></i>
                        <div data-i18n="Analytics">Dashboard</div>
                     </a>
                  </li>
                  <!-- Layouts -->
                  <li class="menu-header small text-uppercase">
                     <span class="menu-header-text">Pages</span>
                  </li>
                  <li class="menu-item">
                     <a href="javascript:void(0);" class="menu-link menu-toggle">
                        <i class="menu-icon tf-icons bx bx-dock-top"></i>
                        <div data-i18n="Account Settings">Account Settings</div>
                     </a>
                     <ul class="menu-sub">
                        <li class="menu-item">
                           <a href="account.jsp" class="menu-link">
                              <div data-i18n="Account">Account</div>
                           </a>
                        </li>
                         <li class="menu-item ">
                  <a href="upi.jsp" class="menu-link">
                    <div data-i18n="Connections">UPI Verification</div>
                  </a>
                </li>
                     </ul>
                  </li>
                  <li class="menu-item">
                     <a href="javascript:void(0);" class="menu-link menu-toggle">
                        <i class="menu-icon tf-icons bx bx-lock-open-alt"></i>
                        <div data-i18n="Authentications">Authentications</div>
                     </a>
                     <ul class="menu-sub">
                        <li class="menu-item">
                           <a href="forgot.jsp" class="menu-link" target="_blank">
                              <div data-i18n="Basic">Forgot Password</div>
                           </a>
                        </li>
                     </ul>
                  </li>
                  <!-- Components -->
                  <li class="menu-header small text-uppercase"><span class="menu-header-text">Components</span></li>
                  <!-- Cards -->
                  <li class="menu-item">
                     <a href="cards.jsp" class="menu-link">
                        <i class="menu-icon tf-icons bx bx-collection"></i>
                        <div data-i18n="Basic">Card</div>
                     </a>
                  </li>
                  <li class="menu-item">
                     <a href="Payment.jsp" class="menu-link">
                        <i class="menu-icon tf-icons bx bx-collection"></i>
                        <div data-i18n="Basic">Payment Interface</div>
                     </a>
                  </li>
                  <!-- Misc -->
                  <li class="menu-header small text-uppercase"><span class="menu-header-text">Misc</span></li>
                  <li class="menu-item">
                     <a
                        href="https://github.com/themeselection/sneat-html-admin-template-free/issues"
                        target="_blank"
                        class="menu-link"
                        >
                        <i class="menu-icon tf-icons bx bx-support"></i>
                        <div data-i18n="Support">Support</div>
                     </a>
                  </li>
                  <li class="menu-item">
                     <a
                        href="https://google.com"
                        target="_blank"
                        class="menu-link"
                        >
                        <i class="menu-icon tf-icons bx bx-file"></i>
                        <div data-i18n="Documentation">Documentation</div>
                     </a>
                  </li>
               </ul>
            </aside>
            <!-- / Menu -->
            <!-- Layout container -->
            <div class="layout-page">
               <!-- Navbar -->
               <nav
                  class="layout-navbar container-xxl navbar navbar-expand-xl navbar-detached align-items-center bg-navbar-theme"
                  id="layout-navbar"
                  >
                  <div class="layout-menu-toggle navbar-nav align-items-xl-center me-3 me-xl-0 d-xl-none">
                     <a class="nav-item nav-link px-0 me-xl-4" href="javascript:void(0)">
                     <i class="bx bx-menu bx-sm"></i>
                     </a>
                  </div>
                  <div class="navbar-nav-right d-flex align-items-center" id="navbar-collapse">
                     <!-- Search -->
                     <div class="navbar-nav align-items-center">
                        <div class="nav-item d-flex align-items-center">
                           <i class="bx bx-search fs-4 lh-0"></i>
                           <input
                              type="text"
                              class="form-control border-0 shadow-none"
                              placeholder="Search..."
                              aria-label="Search..."
                              />
                        </div>
                     </div>
                     <div class="navbar-nav align-items-center">
                        <div class="nav-item d-flex align-items-center">
                        </div>
                     </div>
                     <!-- /Search -->
                     <ul class="navbar-nav flex-row align-items-center ms-auto">
                        <!-- Place this tag where you want the button to render. -->
                        <!-- User -->
                        <li class="nav-item lh-1 me-3">
                           &#8377;<%out.print(Amount_user);%>
                        </li>
                        <li class="nav-item navbar-dropdown dropdown-user dropdown">
                           <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown">
                              <div class="avatar avatar-online">
                                 <img src="../assets/img/avatars/1.png" alt class="w-px-40 h-auto rounded-circle" />
                              </div>
                           </a>
                           <ul class="dropdown-menu dropdown-menu-end">
                              <li>
                                 <a class="dropdown-item" href="#">
                                    <div class="d-flex">
                                       <div class="flex-shrink-0 me-3">
                                          <div class="avatar avatar-online">
                                             <img src="../assets/img/avatars/1.png" alt class="w-px-40 h-auto rounded-circle" />
                                          </div>
                                       </div>
                                       <div class="flex-grow-1">
                                          <span class="fw-semibold d-block"><% out.print(FirstName+" "+LastName);%> </span>
                                          <small class="text-muted">User</small>
                                       </div>
                                    </div>
                                 </a>
                              </li>
                              <li>
                                 <div class="dropdown-divider"></div>
                              </li>
                              <li>
                                 <a class="dropdown-item" href="account.jsp">
                                 <i class="bx bx-user me-2"></i>
                                 <span class="align-middle">My Profile</span>
                                 </a>
                              </li>
                              <li>
                                 <a class="dropdown-item" href="#">
                                 <i class="bx bx-cog me-2"></i>
                                 <span class="align-middle">Settings</span>
                                 </a>
                              </li>
                              <!-- <li>
                                 <a class="dropdown-item" href="#">
                                   <span class="d-flex align-items-center align-middle">
                                     <i class="flex-shrink-0 bx bx-credit-card me-2"></i>
                                     <span class="flex-grow-1 align-middle">Billing</span>
                                     <span class="flex-shrink-0 badge badge-center rounded-pill bg-danger w-px-20 h-px-20">4</span>
                                   </span>
                                 </a>
                                 </li> -->
                              <li>
                                 <div class="dropdown-divider"></div>
                              </li>
                              <li>
                                 <a class="dropdown-item" href="logout.jsp">
                                 <i class="bx bx-power-off me-2"></i>
                                 <span class="align-middle">Log Out</span>
                                 </a>
                              </li>
                           </ul>
                        </li>
                        <!--/ User -->
                     </ul>
                  </div>
               </nav>
               <!-- / Navbar -->
               <!-- Content wrapper -->
               <div class="content-wrapper">
                  <!-- Content -->
                  <div class="container-xxl flex-grow-1 container-p-y">
                     <div class="row">
                        <div class="col-lg- mb- order-0">
                           <div class="d-flex align-items-end row">
                              <div class="col-sm-0">
                                 <div class="card-body">
                                    <div class="card">
                                       <h5 class="card-header">Transactions Details</h5>
                                       <div class="table-responsive text-nowrap">
                                          <table class="table">
                                             <thead class="table-dark">
                                                <tr>
                                                   <th style="color:white">Transactions id</th>
                                                   <th style="color:white">Date</th>
                                                   <th style="color:white">Sender</th>
                                                   <th style="color:white">Reciver</th>

                                                   <th style="color:white">Amount</th>
                                                   <th style="color:white">Status</th>
                                                </tr>
                                             </thead>
                                             <%  
                                             String date = "";
                                             String Amount="";
                                             String username = "";
                                             String sender = "";
                                           
                                             Connection c = DriverManager.getConnection("jdbc:mysql://localhost/bank","root","");
      //Statement  // createStatement
                                       try{
                                          Statement st = c.createStatement();
                                          String sql = "SELECT *FROM transactions WHERE  UPI_reciver='"+upi_Owner+"' OR USERS='"+upi_Owner+"'";
                                          // execute query
                                          ResultSet rt = st.executeQuery(sql);

                                             while(rt.next()){
                                                transaction = rt.getString("TRANSACTIONSID").toString();
                                                date        = rt.getString("DATE").toString();
                                                Amount      = rt.getString("Amount").toString();
                                                username    = rt.getString("UPI_reciver").toString();
                                                sender    = rt.getString("USERS").toString();

                                          %>
                                             <tbody class="table-border-bottom-0">
                                                <tr>
                                                   <td><i class="fab fa-angular fa-lg text-danger me-3"></i><strong><%      out.println(transaction);%></strong></td>
                                                   <td><% out.println(date);%></td>
                                                   <td>
                                                      <ul class="list-unstyled users-list m-0 avatar-group d-flex align-items-center">
                                                         <% out.println(username);%>
                                                      </ul>
                                                   </td>
                                                   <td>
                                                      <ul class="list-unstyled users-list m-0 avatar-group d-flex align-items-center">
                                                         <% out.println(sender);%>
                                                      </ul>
                                                   </td>
                                                   <td><% out.println(Amount);%></td>
                                                   <td>
                                                      <span class="badge bg-label-primary me-1">success</span>
                                                   </td>
                                                </tr>
                                                <%
                                                   }
                                                      }catch(Exception e){
                                                               out.println(e);
                                                            }
                                             %>
                                             </tbody>
                                          </table>
                                          
                                       </div>
                                       
                                    </div>
                                    &nbsp;
                                    <div>
                                     <div class="demo-inline-spacing">
                        <!-- Basic Pagination -->
                        <nav aria-label="Page navigation">
                          <ul class="pagination">
                           
                            <li class="page-item prev">
                              <a class="page-link" href="javascript:void(0);"
                                ><i class="tf-icon bx bx-chevron-left"></i
                              ></a>
                            </li>
                            <li class="page-item">
                              <a class="page-link" href="javascript:void(0);">1</a>
                            </li>
                            <li class="page-item">
                              <a class="page-link" href="javascript:void(0);">2</a>
                            </li>
                            <li class="page-item active">
                              <a class="page-link" href="javascript:void(0);">3</a>
                            </li>
                            <li class="page-item">
                              <a class="page-link" href="javascript:void(0);">4</a>
                            </li>
                            <li class="page-item">
                              <a class="page-link" href="javascript:void(0);">5</a>
                            </li>
                            <li class="page-item next">
                              <a class="page-link" href="javascript:void(0);"
                                ><i class="tf-icon bx bx-chevron-right"></i
                              ></a>
                            </li>
                            <li class="page-item last">
                              <a class="page-link" href="javascript:void(0);"
                                ><i class="tf-icon bx bx-chevrons-right"></i
                              ></a>
                            </li>
                          </ul>
                        </nav>
                        <!--/ Basic Pagination -->
                      </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <!-- Total Revenue -->
                  <!--/ Expense Overview -->
                  <!-- Transactions -->
               </div>
               <!-- / Content -->
               <!-- Footer -->
               <%-- <footer class="content-footer footer bg-footer-theme">
                  <div class="container-xxl d-flex flex-wrap justify-content-between py-2 flex-md-row flex-column">
                     <div class="mb-2 mb-md-0">
                        Copyright &#169;
                        <script>
                           document.write(new Date().getFullYear());
                        </script>
                        , made by apna bank
                     </div>
                     <div>
                        <a href="#" class="footer-link me-4" >License</a>
                        <a href="#"  class="footer-link me-4">More Themes</a>
                        <a
                           href="#"
                           class="footer-link me-4"
                           >Documentation</a
                           >
                        <a
                           href="#"
                           class="footer-link me-4"
                           >Support</a
                           >
                     </div>
                  </div>
                  </footer> --%>
               <section id="basic-footer">
                  <footer class="footer bg-white">
                     <div
                        class="container-fluid d-flex flex-md-row flex-column justify-content-between align-items-md-center gap-4 container-p-xx py-3">
                        <div>
                           <div class="footer-text fw-bolder">
                              Copyright &#169;
                              <script>
                                 document.write(new Date().getFullYear());
                              </script>
                              made by apna bank
                           </div>
                        </div>
                        <div>
                           <a href="https://themeselection.com/license/" class="footer-link me-4" target="_blank">License</a>
                           <a href="javascript:void(0)" class="footer-link me-4">Help</a>
                           <a href="javascript:void(0)" class="footer-link me-4">Contact</a>
                           <a href="javascript:void(0)" class="footer-link">Terms &amp; Conditions</a>
                        </div>
                     </div>
                  </footer>
               </section>
               <!-- / Footer -->
               <div class="content-backdrop fade"></div>
            </div>
            <!-- Content wrapper -->
         </div>
         <!-- / Layout page -->
      </div>
      <!-- Overlay -->
      <div class="layout-overlay layout-menu-toggle"></div>
      </div>
      <!-- / Layout wrapper -->
      <!-- Core JS -->
      <!-- build:js assets/vendor/js/core.js -->
      <script src="../assets/vendor/libs/jquery/jquery.js"></script>
      <script src="../assets/vendor/libs/popper/popper.js"></script>
      <script src="../assets/vendor/js/bootstrap.js"></script>
      <script src="../assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>
      <script src="../assets/vendor/js/menu.js"></script>
      <!-- endbuild -->
      <!-- Vendors JS -->
      <script src="../assets/vendor/libs/apex-charts/apexcharts.js"></script>
      <!-- Main JS -->
      <script src="../assets/js/main.js"></script>
      <!-- Page JS -->
      <script src="../assets/js/dashboards-analytics.js"></script>
      <!-- Place this tag in your head or just before your close body tag. -->
      <script async defer src="https://buttons.github.io/buttons.js"></script>
      <script>
         onloadvar = document.getElementById("preloader");
         
          function onloadFunction(){
            onloadvar.style.display = "none";
          }
          
      </script>
   </body>
</html>
<%

   }
   %>