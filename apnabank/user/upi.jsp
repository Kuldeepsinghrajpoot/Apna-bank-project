<%@page import="java.io.*" %>
<%@page import="java.sql.*" %>
<%@include file="catchFile.jsp" %>
<%
   String Email = (String)session.getAttribute("Email_id");
   if(Email==null){
     response.sendRedirect("login.jsp");
   }
   else{
     String FirstName="";
     String Lastname = "";
     String Emailid = ""; 
     String Phone = "";
     String AccountNumber = "";
     String Unified_payment_interface="";
   
    Class.forName("com.mysql.cj.jdbc.Driver");
     Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/bank","root","");
         //Statement 
       try{
     Statement statement = connection.createStatement();
         //String string ="SELECT *FROM userdetails WHERE Email='"+Email+"'";
         String query ="SELECT FirstName,LastName,upi_id FROM userdetails,upi_verification WHERE userdetails.Email='"+Email+"' AND upi_verification.Email='"+Email+"'";
         ResultSet resultset = statement.executeQuery(query);
         
        
         while(resultset.next()){
            FirstName = resultset.getString("FirstName").toString();
            Lastname  = resultset.getString("LastName").toString();
            Unified_payment_interface = resultset.getString("upi_id").toString();
            
       }
     }catch(Exception e){
               out.println(e);
            }
   %>
<!DOCTYPE html>
<html
   lang="en"
   class="light-style layout-menu-fixed"
   dir="ltr"
   data-theme="theme-default"
   data-assets-path="../assets/"
   data-template="vertical-menu-template-free">
   <head>
      <meta charset="utf-8" />
      <meta
         name="viewport"
         content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0"
         />
      <title>UPI Verification</title>
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
      <link rel="stylesheet" href="index.css"/>
      <style>
         img:before {
         content: ' ';
         background-image: url(../assets/img/avatars/1.png);
         }
      </style>
      <!-- Page CSS -->
      <!-- Helpers -->
      <script src="../assets/vendor/js/helpers.js"></script>
      <script src="back.js" ></script>
      <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
      <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
      <script src="../assets/js/config.js"></script>
   </head>
   <body onload="onloadFunction()">
      <div id="preloader">
         <div id="loader"></div> 
      </div>
      <!-- Layout wrapper -->
      <div class="layout-wrapper layout-content-navbar">
         <div class="layout-container">
            <!-- Menu -->
            <aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme">
               <div class="app-brand demo">
                  <a href="index.jsp" class="app-brand-link">
                  <span class="app-brand-logo demo"></span>
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
                  <li class="menu-item">
                     <a href="index.jsp" class="menu-link">
                        <i class="menu-icon tf-icons bx bx-home-circle"></i>
                        <div data-i18n="Analytics">Dashboard</div>
                     </a>
                  </li>
                  <!-- Layouts -->
                  <li class="menu-header small text-uppercase">
                     <span class="menu-header-text">Pages</span>
                  </li>

                  <li class="menu-item active open">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bx bx-dock-top"></i>
                <div data-i18n="Account Settings">Account Settings</div>
              </a>
              <ul class="menu-sub">
                <li class="menu-item ">
                  <a href="account.jsp" class="menu-link">
                    <div data-i18n="Account">Account</div>
                  </a>
                </li>
                <li class="menu-item active">
                  <a href="upi.jsp" class="menu-link">
                    <div data-i18n="Notifications">UPI Verication</div>
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
                        <div data-i18n="Basic">Cards</div>
                     </a>
                  </li>
                  <li class="menu-item">
                     <a href="Payment.jsp" class="menu-link">
                        <i class="menu-icon tf-icons bx bx-collection"></i>
                        <div data-i18n="Basic">Payment Interface</div>
                     </a>
                  </li>
                  <!-- User interface -->
                  <!-- Extended components -->
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
                        href="https://themeselection.com/demo/sneat-bootstrap-html-admin-template/documentation/"
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
                     <!-- /Search -->
                     <ul class="navbar-nav flex-row align-items-center ms-auto">
                        <!-- User -->
                        <li class="nav-item lh-1 me-3">
                           &#8377;5000
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
                                          <span class="fw-semibold d-block"> <%out.print(FirstName+" "+Lastname);%></span>
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
                              <%-- <li>
                                 <a class="dropdown-item" href="#">
                                   <span class="d-flex align-items-center align-middle">
                                     <i class="flex-shrink-0 bx bx-credit-card me-2"></i>
                                     <span class="flex-grow-1 align-middle">Billing</span>
                                     <span class="flex-shrink-0 badge badge-center rounded-pill bg-danger w-px-20 h-px-20">4</span>
                                   </span>
                                 </a>
                                 </li> --%>
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
                     <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">Account Settings /</span>UPI Verification</h4>
                     <div class="row">
                        <div class="col-md-12">
                            <ul class="nav nav-pills flex-column flex-md-row mb-3">
                              <li class="nav-item">
                                 <a class="nav-link " href="account.jsp"><i class="bx bx-user me-1"></i> Account</a>
                              </li>
                              <li class="nav-item">
                      <a class="nav-link active" href="upi.jsp"
                        ><!-- <i class="bx bx-bell me-1"> --></i> UPI Verification</a
                      >
                    </li>
                           </ul>

                        <!-- cards -->
                        <div class="content-wrapper">

            <!-- Content -->

            <div class="container-xxl flex-grow-1 container-p-y">
              <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light"></span></h4>

              <!-- Basic Layout & Basic with Icons -->
              <div class="row">
                <!-- Basic Layout -->
                <div class="col-xxl">
                  <div class="card mb-4">
                    <div class="card-header d-flex align-items-center justify-content-between">
                      <h5 class="mb-0">Upi verify</h5>
                      <small class="text-muted float-end">upi</small>
                    </div>
                    <div class="card-body">
                      <form method="POST" id="upi_verification">
                        <!--  hidden account number -->
                         <input type="text" name="Email_Id" value="<% out.print(Email);%>" hidden>
                        
                        <div class="row mb-3">
                          <label class="col-sm-2 form-label" for="basic-icon-default-phone">create upi</label>
                          <div class="col-sm-10">
                            <div class="input-group input-group-merge">
                              <span id="basic-icon-default-phone2" class="input-group-text"
                                ><!-- <i class="bx bx-phone"></i -->
                              </span>
                              <!-- upi id of user -->
                              <input
                                type="text"
                                style="color: darkred;"
                                id="basic-icon-default-phone"
                                class="form-control phone-mask"
                                name="upiid"
                                value="<% out.print(Unified_payment_interface);%>";
                                placeholder="upi@apna"     
                              />
                            </div>
                          </div>
                        </div>
                       
                        <div class="row justify-content-end">
                          <div class="col-sm-10">
                            <button type="button" onclick="upi_verify()" class="btn btn-primary" >verify</button>
                            <div style="color:darkred;" class="text-muted float-end" >Verified !</div>
                          </div>
                        </div>
                      </form>
                    </div>
                  </div>
               
                </div>
                <!-- Basic with Icons -->
                <div class="col-xxl">
                <!--  -->
                </div>
              </div>
            </div>
         </div>
      </div>
            </div>
            </div>
                  <!-- / Content -->
                  <!-- Footer -->
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
      <!-- Main JS -->
      <script src="../assets/js/main.js"></script>
      <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
      <!-- Page JS -->
    <script src="dist.sweetalert.min.js"></script>
    <script src="sweetalert.min.js"></script>
    <script type="text/javascript" src="Sweet.cdn.js"></script>
      <script>
         onloadvar = document.getElementById("preloader");
          function onloadFunction(){
                 onloadvar.style.display = "none";      
         }
      </script>
      <script>
         function upi_verify(){
            
         
               Swal.fire({
         title: 'Do you want to create upi',
         showDenyButton: true,
         showCancelButton: false,

         confirmButtonText: 'Yes',
         denyButtonText: `No`,
         }).then((result) => {
         /* Read more about isConfirmed, isDenied below */
         if (result.isConfirmed) {
          jQuery.ajax({
              url:"upi_verify.jsp",
              type:'post',
              data:jQuery("#upi_verification").serialize(),
                 success: (n) => {
                  if("Succeefully" ==n.trim()){
                          Swal.fire('Successfully Created', '', 'success')
                  }else{
                          Swal.fire("Already Created", '', 'error')
                  }
               }
            })
   
         } else if (result.isDenied) {
         Swal.fire('Changes are not saved', '', 'info')
         }
      });
   }
      </script>
      <%-- delete data form database --%>

      <script>
      function deleteData(){

         Swal.fire({
         title: 'Do you want to decativate account ?',
         showDenyButton: true,
         showCancelButton: false,

         confirmButtonText: 'Yes',
         denyButtonText: `no`,
         }).then((result) => {
         /* Read more about isConfirmed, isDenied below */
         if (result.isConfirmed) {
          jQuery.ajax({
              url:"send.jsp",
              type:'post',
              data:jQuery("#formAccountSettings").serialize(),
                 success: (n) => {
                  if("Succeefully" ==n.trim()){
                          Swal.fire('Saved!', '', 'success')

                  }else{
                          Swal.fire("Already Created", '', 'error')
                  }
                 }
               })
   
         } else if (result.isDenied) {
         Swal.fire('Changes are not saved', '', 'info')
         }
         });
          }
            
      </script>
   </body>
</html>
<%}
   %>