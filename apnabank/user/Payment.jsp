<%@page import="java.io.*" %>
<%@page import="java.sql.*" %>
<%@include file="catchFile.jsp" %>
<%
   String Email = (String)session.getAttribute("Email_id");
   if(Email==null){
     response.sendRedirect("login.jsp");
   }
   else{
   String FirstName = "";
   String LastName = "";
   String Amount = "";
   String Upi_sender ="";  
   // Class.forName method
    Class.forName("com.mysql.cj.jdbc.Driver");
   
   // connection 
   Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/bank","root","");
   //Statement  // createStatement
   try{
   Statement statement = connection.createStatement();
   String query = "SELECT FirstName,LastName,current_amount,upi_id FROM userdetails,amount,upi_verification WHERE userdetails.Email='"+Email+"' AND amount.Email='"+Email+"' AND upi_verification.Email='"+Email+"'";
   // execute query
   ResultSet resultset = statement.executeQuery(query);
   while(resultset.next()){
   FirstName   = resultset.getString("FirstName").toString();
   LastName    = resultset.getString("LastName").toString();
   Amount      = resultset.getString("current_amount").toString();
   Upi_sender = resultset.getString("upi_id").toString();

   }
   }catch(Exception e){
   				out.println(e);
   			}

             Connection co = DriverManager.getConnection("jdbc:mysql://localhost/bank","root","");
            
            int counter = 0;
            while(counter<1){
            try{
               Statement st = co.createStatement();
               String update_Query  = "INSERT INTO `amount`(`Email`, `current_amount`) VALUES ('"+Email+"','"+0+"')";
               st.executeUpdate(update_Query);
                if(counter==1) {
               out.println("Went someting worng");
            }else{
               out.print("Succeefully query executed");
            }
            }catch(Exception e){
               //out.println(e);
            } 
            counter++;
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
      <title>Payment Interface</title>
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
                  <li class="menu-item active">
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
                         &#8377;
                        <li class="nav-item lh-1 me-3" id="retirve">
                          <%out.print(Amount);%>
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
                                    <div class="card mb-4">
                <h5 class="card-header">Payment Interface</h5>
                <div class="card-body">
                  <div class="row gy-3">
                    <!-- Default Modal -->
                    <div class="col-lg-4 col-md-6">
                      <small class="text-light fw-semibold">upi </small>
                      <div class="mt-3">
                        <!-- Button trigger modal -->
                        <button
                          type="button"
                          class="btn btn-primary"
                          data-bs-toggle="modal"
                          data-bs-target="#basicModal"
                        >
                          Launch modal
                        </button>

                        <!-- Modal -->
                        <div class="modal fade" id="basicModal" tabindex="-1" aria-hidden="true">
                          <div class="modal-dialog modal-dialog-centered" role="document">
                            <div class="modal-content">
                              <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel1">upi Interface</h5>
                                <button
                                  type="button"
                                  class="btn-close"
                                  data-bs-dismiss="modal"
                                  aria-label="Close"
                                ></button>
                              </div>
                              <form id="payment_method" method="post">
                              <div class="modal-body">
                                <div class="row">
                                  <div class="col mb-3">
                                    <input type="text" name="upi_sender"   value="<% out.print(Upi_sender);%>"hidden>
                                    <input type="text" name="Total_amount" value="<% out.print(Amount);%>"hidden>
                                    <!-- <label for="nameBasic" class="form-label" id="upi_id">Upi Interface</label> -->
                                    
                                    <input type="text" id="paymentuser" id="nameBasic" class="form-control" id="upi_id"  name="upi_id" placeholder="Enter upi id"  onkeyup="checkinput()" />
                                  </div>
                                </div>
                                <div class="row g-4">
                                  <div class="col mb-5">
                                    <label for="emailBasic" class="form-label" id="payAmount" value="0">Amount </label>
                                    <input type="number" id="emailBasic" class="form-control" name="amount" placeholder="Amount"/>
                                  </div>
                                 
                                </div>
                              </div>
                              <div class="modal-footer">
                                <button class="btn btn-outline-secondary" type="button"  data-bs-dismiss="modal">
                                  Close
                                </button>
                                <button type="button" class="btn btn-primary" id="disabled" data-bs-dismiss="modal" disabled onclick="payAmount()">Pay</button>
                              </div>
                            </div>
                         </form>
                          </div>
                        </div>
                      </div>
                    </div>

                    <!-- Vertically Centered Modal -->
                    <div class="col-lg-4 col-md-6">
                      <small class="text-light fw-semibold">Card Interface</small>
                      <div class="mt-3">
                        <!-- Button trigger modal -->
                        <button
                          type="button"
                          class="btn btn-primary"
                          data-bs-toggle="modal"
                          data-bs-target="#modalCenter"
                        >
                          Launch modal
                        </button>

                        <!-- Modal -->
                        <div class="modal fade" id="modalCenter" tabindex="-1" aria-hidden="true">
                          <div class="modal-dialog modal-dialog-centered" role="document">
                           <div class="modal-content">
                              <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel1">Debit Card</h5>
                                <button
                                  type="button"
                                  class="btn-close"
                                  data-bs-dismiss="modal"
                                  aria-label="Close"
                                ></button>
                              </div>
                              <div class="modal-body">
                                <div class="row">
                                  <div class="col mb-3">
                                    <label for="nameBasic" class="form-label">Debit Card Number</label>
                                    <input type="text" id="nameBasic" class="form-control" placeholder="Card Number" />
                                  </div>
                                </div>
                                <div class="row g-2">
                                  <div class="col mb-4">
                                    <label for="emailBasic" class="form-label">Expiry Date</label>
                                    <input type="text" id="emailBasic" class="form-control" placeholder="DD / MM / YY" />
                                  </div>
                                  <div class="col mb-0">
                                    <label for="dobBasic" class="form-label">CV</label>
                                    <input type="text" id="dobBasic" class="form-control" placeholder="DD / MM / YY" />
                                  </div>
                                </div>
                              </div>
                              <div class="modal-footer">
                                <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">
                                  Close
                                </button>
                                <button type="button" class="btn btn-primary">Pay</button>
                              </div>
                            </div>
                          </div>
                        </div>
                     
                                                </div>
                                             </div>
                                          </div>
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
     <!--  <script src="../assets/js/dashboards-analytics.js"></script> -->
      <!-- Place this tag in your head or just before your close body tag. -->
      <!-- swal -->
      <script src="dist.sweetalert.min.js"></script>
    <script src="sweetalert.min.js"></script>
    <script type="text/javascript" src="Sweet.cdn.js"></script>
      <!-- end swal  -->
      <script async defer src="https://buttons.github.io/buttons.js"></script>
      <script>
         onloadvar = document.getElementById("preloader");
         
          function onloadFunction(){
            onloadvar.style.display = "none";
          }

          // function upi_verification(){
          //  var input = document.getElementById("nameBasic");
          //  alert(input.value)

          //  console.log(input.value)
          // }

          
      </script>
      <script type="text/javascript">


            function checkinput(argument) {

          // var payment_reciver=window.document.getElementById("paymentuser").value;
          //   var id = '<% out.print(Upi_sender);%>';

          //   id = id.toUpperCase();
          //   payment_reciver = payment_reciver.toUpperCase();

          //   var result =payment_reciver.localeCompare(id);

          //   if (result==0) {
          //      console.log("right");
          //   }else{
          //      console.log("Wrong");
          //   }


          jQuery.ajax({
            url:'upi_checker.jsp',
            type:'post',
            data:jQuery("#payment_method").serialize(),
            success:(n)=>{
               console.log(n);

               var disalbed = document.getElementById("disabled").disabled=false;
             }
          })

 
         }
         function payAmount(argument) {
            Swal.fire({
         title: 'Do you want to create upi',
         showDenyButton: true,
         showCancelButton: false,
         confirmButtonText: 'Yes',
         denyButtonText: `No`,
         }).then((result) => {
         /* Read more about isConfirmed, isDenied below */
         if (result.isConfirmed){
          jQuery.ajax({
              url:"payAmount.jsp",
              type:'post',
              data:jQuery("#payment_method").serialize(),
                 success: (n) => {
                  var value = Number(n);
                  if(Number.isNaN(value)==false){
                     //window .location.reload("payAmount.jsp");
                     const audioContext = new AudioContext();
                          const audio   = new Audio("Transaction Complete.m4r");
                          const source  = audioContext.createMediaElementSource(audio);
                          source.connect(audioContext.destination);
                          audio.play();
                          Swal.fire("Paid", '', 'success')
                          $("#retirve").html(n);
                          document.getElementById("payment_method").reset();

                          
                             
                  }else{
                          Swal.fire(n, '', 'error')
                  }
               }
            })
   
         } else if (result.isDenied) {
         Swal.fire('Unsuccessfull', '', 'error')
         }
      });

        
    }
         
       
      </script>
   </body>
</html>
<%
   }
   %>