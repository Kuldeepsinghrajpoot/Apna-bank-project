<%@page import="java.io.*" %>
<%@page import="java.sql.*" %>
<%@include file="catchFile.jsp" %>

<%
   String Email_for_forgott = request.getParameter("email");
%>
<!DOCTYPE html>
<html
  lang="en"
  class="light-style customizer-hide"
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

    <title>Forgot Password</title>

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

    <!-- Page CSS -->
    <!-- Page -->
    <link rel="stylesheet" href="../assets/vendor/css/pages/page-auth.css" />
    <!-- Helpers -->
    <script src="../assets/vendor/js/helpers.js"></script>

    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="../assets/js/config.js"></script>
  </head>

  <body>
    <!-- Content -->

    <div class="container-xxl">
      <div class="authentication-wrapper authentication-basic container-p-y">
        <div class="authentication-inner py-4">
          <!-- Forgot Password -->
          <div class="card">
            <div class="card-body">
              <!-- Logo -->
              <div class="app-brand justify-content-center">
                <a href="index.jsp" class="app-brand-link gap-2">
                  
                  <span class="app-brand-text demo text-body fw-bolder">
                    <img src="../assets/img/favicon/favicon.ico" style="width: 50px;" alt="bank">
                    apna bank</span>
                </a>
              </div>
              <!-- /Logo -->
              <h4 class="mb-2">Forgot Password?  &#x1F512</h4>
             
              <form id="formAuthentication" class="mb-3"  method="POST">
                <input type="text" name="Email_Id" value="<%out.print(Email_for_forgott);%>" hidden>
                <div class="mb-3">
                  <label for="email" class="form-label"> Enter New Password</label>
                  <input
                    type="password"
                    class="form-control"
                    id="new_password"
                    name="New_Password"
                    placeholder="Enter New Password"
                    autofocus
                  />
                </div>
                <div class="mb-3">
                  <label for="email" class="form-label"> Enter Retype New Password</label>
                  <input
                    type="text"
                    class="form-control"
                    id="Retype_new_password"
                    name="Retype_new_password"
                    placeholder="Retype new password"
                    autofocus
                  />
                </div>
                <button class="btn btn-primary d-grid w-100" type="button" onclick="submit_form()">Submit Form </button>
              </form>
              <div class="text-center">
                <a href="login.jsp" class="d-flex align-items-center justify-content-center">
                  <i class="bx bx-chevron-left scaleX-n1-rtl bx-sm"></i>
                  Back to login
                </a>
              </div>
            </div>
          </div>
          <!-- /Forgot Password -->
        </div>
      </div>
    </div>

    <!-- / Content -->

    

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

    <!-- Place this tag in your head or just before your close body tag. -->
    <script async defer src="https://buttons.github.io/buttons.js"></script>
    <script src="dist.sweetalert.min.js"></script>
    <script src="sweetalert.min.js"></script>
    <script type="text/javascript" src="Sweet.cdn.js"></script>
    <script type="text/javascript">

        function submit_form(){
            
         
               Swal.fire({
         title: 'Do you want to Change Password',
         showDenyButton: true,
         showCancelButton: false,

         confirmButtonText: 'Yes',
         denyButtonText: `No`,
         }).then((result) => {
         /* Read more about isConfirmed, isDenied below */
         if (result.isConfirmed) {
          jQuery.ajax({
              url:"forgot_password_user.jsp",
              type:'post',
              data:jQuery("#formAuthentication").serialize(),
                 success: (n) => {
                  if("Succeefully" ==n.trim()){
                          Swal.fire('Successfully updated', '', 'success')
                          $('#formAuthentication').trigger("reset")
                  }else{
                          Swal.fire(n, '', 'error')
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
