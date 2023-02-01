<%@page import="java.io.*" %>
<%@page import="java.sql.*" %>
<%@include file="catchFile.jsp" %>
<%
   String Email = (String)session.getAttribute("Email_id");
   if(Email==null){
     response.sendRedirect("login.jsp");
   }
   else{
     String retrive  ="";
     String FirstName="";
     String Lastname = "";
     String Emailid = "";
     String Add = "";
     String Dob = "";
     String Phone = "";
     String IFSC ="";
     String userid ="";
     String AccountNumber = "";
     String State = "";
     String Account_Type = "";
     String pincode = "";
     String country = "";
     String Saving  = "";
     String Amount = "";
    Class.forName("com.mysql.cj.jdbc.Driver");
     Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/bank","root","");
         //Statement 
       try{
     Statement statement = connection.createStatement();
         String string ="SELECT *FROM userdetails,amount WHERE userdetails.Email='"+Email+"' AND amount.Email='"+Email+"'";
         ResultSet resultset = statement.executeQuery(string);
         
        
         while(resultset.next()){
            FirstName = resultset.getString("FirstName").toString();
            Lastname  = resultset.getString("LastName").toString();
            Emailid   = resultset.getString("Email").toString();
            Add       = resultset.getString("Address").toString();
            Dob       = resultset.getString("dob").toString();
            Phone     = resultset.getString("phone").toString();
            userid    = resultset.getString("user_id").toString();
            AccountNumber = resultset.getString("ACNumber").toString();
            IFSC      = resultset.getString("ifsc").toString();
            pincode   = resultset.getString("zip_code").toString();
            country   = resultset.getString("country").toString();
            State     = resultset.getString("State").toString();
            Saving    = resultset.getString("account").toString();
            Amount    = resultset.getString("current_amount").toString();
   
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
      <title>Account settings</title>
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
            <script src="dist.sweetalert.min.js"></script>
            <script src="sweetalert.min.js"></script>
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
                        <li class="menu-item active">
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
                        href="javascript:void(0)"
                        target="_blank"
                        class="menu-link"
                        >
                        <i class="menu-icon tf-icons bx bx-support"></i>
                        <div data-i18n="Support">Support</div>
                     </a>
                  </li>
                  <li class="menu-item">
                     <a
                        href="javascript:void(0)"
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
                           &#8377;<%out.print(Amount);%>
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
                                          <span class="fw-semibold d-block"> <%out.print(FirstName+" "+Lastname);%><br></span>
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
                     <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">Account Settings /</span> Account</h4>
                     <div class="row">
                        <div class="col-md-12">
                           <ul class="nav nav-pills flex-column flex-md-row mb-3">
                              <li class="nav-item">
                                 <a class="nav-link active" href="javascript:void(0);"><i class="bx bx-user me-1"></i> Account</a>
                              </li>
                              <li class="nav-item">
                      <a class="nav-link " href="upi.jsp"
                        ><!-- <i class="bx bx-bell me-1"> --></i> UPI Verification</a
                      >
                    </li>
                           </ul>
                           <div class="card mb-4">
                              <h5 class="card-header">Profile Details</h5>
                              <!-- Account -->
                              <div class="card-body">
                                 <div class="d-flex align-items-start align-items-sm-center gap-4">
                                    <img
                                       src="../assets/img/avatars/1.png"
                                       alt="user-avatar"
                                       class="d-block rounded"
                                       height="100"
                                       width="100"
                                       id="uploadedAvatar"
                                       />
                                    <div class="button-wrapper">
                                       <label for="upload" class="btn btn-primary me-2 mb-4" tabindex="0">
                                       <span class="d-none d-sm-block">Upload new photo</span>
                                       <i class="bx bx-upload d-block d-sm-none"></i>
                                       <input
                                          type="file"
                                          id="upload"
                                          class="account-file-input"
                                          hidden
                                          accept="image/png, image/jpeg"
                                          />
                                       </label>
                                       <button type="button" class="btn btn-outline-secondary account-image-reset mb-4">
                                       <i class="bx bx-reset d-block d-sm-none"></i>
                                       <span class="d-none d-sm-block">Reset</span>
                                       </button>
                                       <p class="text-muted mb-0">Allowed JPG or PNG. Max size of 800K</p>
                                    </div>
                                 </div>
                              </div>
                              <hr class="my-0" />
                              <div class="card-body">
                                 <%-- form  --%>
                                 <form id="formAccountSettings" method="POST" onsubmit="return false">
                                    <div class="row">
                                       <div class="mb-3 col-md-6">
                                          <label class="form-label" for="phoneNumber">Phone Number</label>
                                          <div class="input-group input-group-merge">
                                             <span class="input-group-text">India (+91)</span>
                                             <input
                                                type="text"
                                                id="phoneNumber"
                                                name="phoneNumber"
                                                class="form-control"
                                                disabled
                                                value="<%out.print(Phone);%>"
                                                />
                                          </div>
                                       </div>
                                       <div class="mb-3 col-md-6">
                                          <label for="email" class="form-label">E-mail</label>
                                          <input
                                             class="form-control"
                                             type="text"
                                             id="email"
                                             name="email"
                                             value="<%out.print(Emailid);%>"
                                             disabled
                                             placeholder="kuldeep@example.com"
                                             />
                                       </div>
                                       <div class="mb-3 col-md-6">
                                          <label for="organization" class="form-label">Account Number</label>
                                          <input
                                             type="text"
                                             class="form-control"
                                             id="organization"
                                             name="AccountNumber"
                                             value="<%out.print(AccountNumber);%>"
                                             disabled
                                             />
                                       </div>
                                       <div class="mb-3 col-md-3">
                                          <label for="organization" class="form-label">User id</label>
                                          <input
                                             type="text"
                                             class="form-control"
                                             id="organization"
                                             name="userid"
                                             value="<%out.print(userid);%>"
                                             placeholder="User id"
                                             disabled
                                             />
                                       </div>
                                       <div class="mb-3 col-md-3">
                                          <label for="organization" class="form-label">IFSC Code</label>
                                          <input
                                             type="text"
                                             class="form-control"
                                             id="organization"
                                             name="IFSC"
                                             value="<%out.print("now12345");%>"
                                             placeholder="IFSC"
                                             disabled
                                             />
                                       </div>
                                       <div class="mb-3 col-md-2">
                                          <label for="firstName" class="form-label">Branch</label>
                                          <input
                                             class="form-control"
                                             type="text"
                                             id="Branch"
                                             name="Branch"
                                             value="<%out.print("Nowgong");%>"
                                             disabled
                                             />
                                       </div>
                                       <div class="mb-3 col-md-2">
                                          <label for="dob" class="form-label">Account Type</label>
                                          <input
                                             class="form-control"
                                             type="text"
                                             id="dob"
                                             name="dob"
                                             disabled
                                             value="<%out.print(Saving);%>"
                                             />
                                       </div>
                                       <div class="mb-3 col-md-2">
                                          <label for="firstName" class="form-label">Date of birth</label>
                                          <input
                                             class="form-control"
                                             type="text"
                                             id="dob"
                                             name="dob"
                                             value="<%out.print(Dob);%>"
                                             />
                                       </div>
                                       <div class="mb-4 col-md-3">
                                          <label for="firstName" class="form-label">FirstName</label>
                                          <input
                                             class="form-control"
                                             type="text"
                                             id="firstName"
                                             name="firstName"
                                             value="<%out.print(FirstName);%>"
                                             />
                                       </div>
                                       <div class="mb-4 col-md-3">
                                          <label for="LastName" class="form-label">LastName</label>
                                          <input
                                             class="form-control"
                                             type="text"
                                             id="LastName"
                                             name="LastName"
                                             value="<%out.print(Lastname);%>"
                                             />
                                       </div>
                                       
                                        <div class="mb-3 col-md-3">
                                          <label for="state" class="form-label">State</label>
                                          <input class="form-control" type="text" id="state" name="state" placeholder="Madhya Pradesh"value="<%out.print(State);%>" />
                                       </div>
                                       <div class="mb-3 col-md-3">
                                          <label for="zipCode" class="form-label">Zip Code</label>
                                          <input
                                             type="text"
                                             class="form-control"
                                             id="zipCode"
                                             name="zipCode"
                                             placeholder="471201"
                                             maxlength="6"
                                             value="<%out.print(pincode);%>"
                                             />
                                       </div>
                                       <div class="mb-3 col-md-6">
                                          <label for="address" class="form-label"> Parmanet Address</label>
                                          <textarea rows="1" type="text" class="form-control" id="address" name="address" placeholder="Address" ><%out.print(Add);%></textarea>
                                       </div>
                                        <%-- <div class="mb-3 col-md-6">
                                          <label for="address" class="form-label">Temparory Address</label>
                                          <textarea rows="4" type="text" class="form-control" id="address" name="address" placeholder="Address" ><%out.print(Add);%></textarea>
                                       </div> --%>
                                      
                                    </div>
                                    <div class="mt-2">
                                       <button type="button" class="btn btn-primary me-2" onclick="sendData()">Save changes</button>
                                       <button type="reset" class="btn btn-outline-secondary">Cancel</button>
                                    </div>
                                 </form>
                              </div>
                              <!-- /Account -->
                           </div>
                           <div class="card">
                              <h5 class="card-header">Delete Account</h5>
                              <div class="card-body">
                                 <div class="mb-3 col-12 mb-0">
                                    <div class="alert alert-warning">
                                       <h6 class="alert-heading fw-bold mb-1">Are you sure you want to delete your account?</h6>
                                       <p class="mb-0">Once you delete your account, there is no going back. Please be certain.</p>
                                    </div>
                                 </div>
                                 <form id="formAccountDeactivation" onsubmit="return false">
                                    <div class="form-check mb-3">
                                       <input
                                          class="form-check-input"
                                          type="checkbox"
                                          name="accountActivation"
                                          id="accountActivation"
                                          />
                                       <label class="form-check-label" for="accountActivation"
                                          >I confirm my account deactivation</label
                                          >
                                    </div>
                                    <button type="submit" onclick="deleteData()" class="btn btn-danger deactivate-account">Deactivate Account</button>
                                 </form>
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

      <!-- Page JS -->
      <script src="../assets/js/pages-account-settings-account.js"></script>
      <script type="text/javascript" src="Sweet.cdn.js"></script>
      <script>
         onloadvar = document.getElementById("preloader");
          function onloadFunction(){
                 onloadvar.style.display = "none";      
         }
      </script>
      <script>
         function sendData(){
            
         
               Swal.fire({
         title: 'Do you want to save the changes?',
         showDenyButton: true,
         showCancelButton: false,

         confirmButtonText: 'Save',
         denyButtonText: `Don't save`,
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
                          Swal.fire("Ops something went wrong", '', 'error')
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
                          Swal.fire("Ops something went wrong", '', 'error')
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