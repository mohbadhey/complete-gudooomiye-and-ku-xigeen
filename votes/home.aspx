
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="votes.home" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="assets/bootstrap.css" rel="stylesheet" />
         <script src="js/sweetalert2.min.js"></script>
    <link href="css/sweetalert2.css" rel="stylesheet" />

    <style>
        /* Add this style to increase the size of the radio buttons */
        .form-check-input {
            transform: scale(2.5); /* Adjust the scale factor as needed */
        }

        .container {
  max-width: 900px;
  margin: 0 auto;
}


/**
  Component
**/

label {
    width: 80%;
}

.card-input-element {
    display: none;
}

.card-input {
    margin: 10px;
    padding: 0px;
}

.card-input:hover {
    cursor: pointer;
}

.card-input-element:checked + .card-input {
     box-shadow: 0 0 1px 5px #ff0033;
}
  .text-bold {
    font-weight: bold;
}

.text-bigger {
    font-size: 1.2em; /* Adjust the size as needed */
}
.text-blue {
    color: blue;
}
.text-green{
        color: springgreen;
}

body {
  background: linear-gradient(
    55deg,
    hsl(240deg 100% 34%) 0%,
    hsl(225deg 100% 41%) 6%,
    hsl(220deg 100% 46%) 10%,
    hsl(216deg 100% 50%) 14%,
    hsl(212deg 100% 50%) 17%,
    hsl(208deg 100% 50%) 20%,
    hsl(204deg 100% 50%) 24%,
    hsl(198deg 100% 47%) 29%,
    hsl(189deg 100% 42%) 36%,
    hsl(177deg 100% 39%) 44%,
    hsl(164deg 100% 41%) 54%,
    hsl(152deg 100% 44%) 67%,
    hsl(141deg 100% 46%) 82%,
    hsl(127deg 95% 49%) 100%
  );
  background-size: 100% 100%;
  background-repeat: no-repeat;
    min-height: 100vh;
}

.card-img {
   background-size: cover;
   background-repeat: no-repeat;
   background-position: center center;
  /* height: 100px;
   width: 150px;*/
}
    </style>

    <link href="hearder.css" rel="stylesheet" />
</head>
<body>

 <div class="row p-0">
        <div class="col-3  ">
              <img class="youtube bg-white" src="img/klogo-removebg-preview.png" />
               <span class="ytex text-white">Kismayo university</span>
       
     
        </div>
        <div class="col-6"></div>
        <div class="col-3 d-flex flex-row  justify-content-around">
            <div>  <span class="ytex text-white" > <asp:Label ID="Label1" runat="server" ></asp:Label> </span>   </div>
            <div>    <span class="ytex text-white" > <asp:Label ID="Label2" runat="server" ></asp:Label> </span></div>
           
        
              
        </div>
     
        
    


    </div>
 



    
    <form id="form1" runat="server">

     


       <div class="row  mt-2">
            <div class="col-12 bg-info ms-8"><h3 class="text-center text-white">Dooro Gudoomiyaasha</h3></div>
        </div>

<%--      <div class="row  ">
           <div class="col-1"></div>
            <div class="col-3">

             <label>
          <input type="radio" name="product"  value="1" class="card-input-element" />

            <div class="card card-default card-input">
            

                <img class="card-img" src="img/oma.png" />

              <div class="card-body" style="padding: 10px;">
                 
                  <h6>mohamed hussein dhalahow</h6>
              </div>
            </div>

        </label>
            </div>


           <div class="col-1"></div>
         <div class="col-3">

             <label>
          <input type="radio" name="product" value="2"  class="card-input-element" />

            <div class="card card-default card-input">
                <img class="card-img"  src="img/carab4k.jpg" />
              <div class="card-body" style="padding: 10px;">
               
                  <h6>abukadur muhyadin mahad</h6>
              </div>
            </div>

        </label>
            </div>
               <div class="col-1"></div>
     <div class="col-3">

             <label>
          <input type="radio" name="product"  value="3" class="card-input-element" />

            <div class="card card-default card-input">
                <img class="card-img"  src="img/mohaa.jpeg" />
              <div class="card-body" style="padding: 10px;">
 
                  <h6>carab mohamed carab</h6>
              </div>
            </div>

        </label>
            </div>
          <div class="col-1"></div>
   </div>--%>

       <div class="row">
        <div class="col-1"></div>
        <div class="col-3">
            <label>
                <input type="radio" name="product" value="1" class="card-input-element" />
                <div class="card card-default card-input">
                    <img class="card-img" id="image1" />
                    <div class="card-body" style="padding: 10px;">
                        <h6 id="name1"></h6>
                    </div>
                </div>
            </label>
        </div>

        <!-- Repeat the above HTML structure for other products -->
        
        <div class="col-1"></div>
        <div class="col-3">
            <label>
                <input type="radio" name="product" value="2"  class="card-input-element" />
                <div class="card card-default card-input">
                    <img class="card-img" id="image2" />
                    <div class="card-body" style="padding: 10px;">
                        <h6 id="name2"></h6>
                    </div>
                </div>
            </label>
        </div>

        <div class="col-1"></div>
        <div class="col-3">
            <label>
                <input type="radio" name="product" value="3"  class="card-input-element" />
                <div class="card card-default card-input">
                    <img class="card-img" id="image3" />
                    <div class="card-body" style="padding: 10px;">
                        <h6 id="name3"></h6>
                    </div>
                </div>
            </label>
        </div>
             </div>



            <div class="row bg-danger">
            <div class="col-12"><h3 class="text-center text-white"> Dooro Ku Xigeenada</h3></div>
        </div>



                <div class="row">
        <div class="col-1"></div>
        <div class="col-3">
               <label>

            


                <input type="radio" name="xigen" value="4" class="card-input-element" />
                <div class="card card-default card-input"   >
                    <img class="card-img" id="image4" />
                    <div class="card-body" style="padding: 10px;">
                        <h6 id="name4"></h6>
                    </div>
                </div>
         
            
                         </label>
        </div>

        <!-- Repeat the above HTML structure for other products -->
        
        <div class="col-1"></div>
        <div class="col-3">
            <label>
                <input type="radio" name="xigen" value="5"  class="card-input-element" />
                <div class="card  card-default card-input" >
                    <img class="card-img" id="image5" />
                    <div class="card-body" style="padding: 10px;">
                        <h6 id="name5"></h6>
                    </div>
                </div>
            </label>
        </div>

        <div class="col-1"></div>
        <div class="col-3">
            <label>
                <input type="radio" name="xigen" value="6"   class="card-input-element"  />
                <div class="card card-default card-input" >
                    <img class="card-img" id="image6" />
                    <div class="card-body" style="padding: 10px;">
                        <h6 id="name6"></h6>
                    </div>
                </div>
            </label>
        </div>
             </div>


       <div class="row">
    <div class="col-12 text-center">
        <button class="btn btn-success btn-lg px-5" type="button" onclick="handleSubmit()">Submit</button>
    </div>
</div>

    </form>
    <script src="js/fastclick.js"></script>
    <script src="assets/jquery.min.js"></script>
      <script>






          $(document).ready(function () {
              // Make an Ajax request to the WebMethod to fetch data
              $.ajax({
                  type: 'POST',
                  url: 'home.aspx/GetProducts',
                  contentType: 'application/json; charset=utf-8',
                  dataType: 'json',
                  success: function (data) {
                      console.log(data);
                      // Update the content of each card with the fetched data
                      console.log('ID 1:', data.d[0].Id);
                      $('#image1').attr('src', data.d[0].ImageUrl);
                      $('#name1').text(data.d[0].Name);
                      /*    $('input[name="product"][value="1"]').prop('checked', true);*/

                      // Repeat for other products
                      console.log('ID 2:', data.d[1].Id);
                      $('#image2').attr('src', data.d[1].ImageUrl);
                      $('#name2').text(data.d[1].Name);
                      /*  $('input[name="product"][value="2"]').prop('checked', true);*/

                      console.log('ID 3:', data.d[2].Id);
                      $('#image3').attr('src', data.d[2].ImageUrl);
                      $('#name3').text(data.d[2].Name);
                      /* $('input[name="product"][value="3"]').prop('checked', true);*/


                  },
                  error: function (error) {
                      console.log('Error:', error);
                  }
              });
          });

          $(document).ready(function () {
              // Make an Ajax request to the WebMethod to fetch data
              $.ajax({
                  type: 'POST',
                  url: 'home.aspx/getxigeen',
                  contentType: 'application/json; charset=utf-8',
                  dataType: 'json',
                  success: function (data) {
                      console.log(data);
                      // Update the content of each card with the fetched data
                      console.log('ID 1:', data.d[0].Id);
                      $('#image4').attr('src', data.d[0].ImageUrl);
                      $('#name4').text(data.d[0].Name);
                      /*    $('input[name="product"][value="1"]').prop('checked', true);*/

                      // Repeat for other products
                      console.log('ID 2:', data.d[1].Id);
                      $('#image5').attr('src', data.d[1].ImageUrl);
                      $('#name5').text(data.d[1].Name);
                      /*  $('input[name="product"][value="2"]').prop('checked', true);*/

                      console.log('ID 3:', data.d[2].Id);
                      $('#image6').attr('src', data.d[2].ImageUrl);
                      $('#name6').text(data.d[2].Name);
                      /* $('input[name="product"][value="3"]').prop('checked', true);*/


                  },
                  error: function (error) {
                      console.log('Error:', error);
                  }
              });
          });














          var productValue;
          var xigenValue;





          function handleSubmit() {
              productValue = $('input[name="product"]:checked').val();




              xigenValue = document.querySelector('input[name="xigen"]:checked').value;
              var std = document.getElementById("Label1").innerText;
              var name = document.getElementById("Label2").innerText;

        

              // Map productValue and xigenValue to their corresponding names
              var productName = mapProductValueToName(productValue);
              var xigenName = mapXigenValueToName(xigenValue);
            

              // Check if productValue is 1, 2, or 3 AND xigenValue is 4, 5, or 6
              if ((productValue == 1 || productValue == 2 || productValue == 3) &&
                  (xigenValue == 4 || xigenValue == 5 || xigenValue == 6)) {
                  showConfirmationDialog(std, name, productName, xigenName);
                  
              } else {
                  // Handle other cases or show an error message
                  console.log("Invalid selection");
              }
          }



          // Function to map productValue to its corresponding name
          function mapProductValueToName(productValue) {
            
              switch (productValue) {
                  case '1':

                      // Get the element with ID "name1"
                      var name = document.getElementById("name1").innerText;

                   
                      // Display the name in the element with ID "name1"


                      // Return a message or value as needed
                      return name;

                  case '2':
                      // Get the element with ID "name1"
                      var name = document.getElementById("name2").innerText;


                      // Display the name in the element with ID "name1"


                      // Return a message or value as needed
                      return name;

                  case '3':
                      // Get the element with ID "name1"
                      var name = document.getElementById("name3").innerText;


                      // Display the name in the element with ID "name1"


                      // Return a message or value as needed
                      return name;

                  default:
                      return 'Unknown value';
              }
          }

          // Function to map xigenValue to its corresponding name
          function mapXigenValueToName(xigenValue) {
              switch (xigenValue) {
                  case '4':

                      // Get the element with ID "name1"
                      var name = document.getElementById("name4").innerText;


                      // Display the name in the element with ID "name1"


                      // Return a message or value as needed
                      return name;

                  case '5':
                      // Get the element with ID "name1"
                      var name = document.getElementById("name5").innerText;


                      // Display the name in the element with ID "name1"


                      // Return a message or value as needed
                      return name;

                  case '6':
                      // Get the element with ID "name1"
                      var name = document.getElementById("name6").innerText;


                      // Display the name in the element with ID "name1"


                      // Return a message or value as needed
                      return name;

                  default:
                      return 'Unknown value';
              }
          }

          function showConfirmationDialog(std, name, productName, xigenName) {

              const swalWithBootstrapButtons = Swal.mixin({
                  customClass: {
                      confirmButton: "btn btn-success",
                      cancelButton: "btn btn-danger ",
                      content: 'text-bold text-bigger text-blue text-green'
                  },
                  buttonsStyling: false,
                  onOpen: (popup) => {
                      // Add margin to the confirm button
                      const confirmButton = popup.querySelector('.swal2-confirm');
                      if (confirmButton) {
                          confirmButton.style.marginRight = '10px'; // Adjust margin as needed
                      }
                  }
              });

              swalWithBootstrapButtons.fire({
                  title: "Ma hubtaa ina u codeneyso?",
                  html: '<span class="text-bold text-bigger text-blue">  <span class="text-green">GUDOOMIYAHA: <br> ' + productName + '<br></span> GUDOOMIYE KU XIGEEN:<br> ' + xigenName + '</span>',

                  icon: "warning",
                  showCancelButton: true,
                  confirmButtonText: "HAA WAAN HUBAA!",
                  cancelButtonText: "MAYA!",
                  reverseButtons: true
              }).then((result) => {
                  if (result.isConfirmed) {

                      $.ajax({
                          url: 'home.aspx/submitData',
                          data: "{'std':'" + std + "', 'name':'" + name + "',  'productValue':'" + productValue + "','xigenValue':'" + xigenValue + "'} ",
                          dataType: "json",
                          type: 'POST',
                          contentType: "application/json",
                          success: function (response) {
                              console.log(response);
                              swalWithBootstrapButtons.fire({
                                  title: "Waad codeese!",
                                  text: "Mahadsanid.",
                                  icon: "success",
                                  timer: 3000,
                                  showConfirmButton: false
                              }).then(() => {
                                  ;
                                  window.location.href = "login.aspx";

                              });
                          },
                          error: function (response) {
                              swalWithBootstrapButtons.fire({
                                  title: "Error",
                                  text: "An error occurred: " + response.statusText,
                                  icon: "error",
                                  timer: 3000,
                                  showConfirmButton: false
                              });
                          }
                      });
                  } else if (result.dismiss === Swal.DismissReason.cancel) {
                      swalWithBootstrapButtons.fire({
                          title: "Cancelled",
                          text: "Wali Maadan Codeen :",
                          icon: "error",
                          timer: 3000,
                          showConfirmButton: false
                      });
                  }
              });
          }

          window.history.forward();
          function noBack() {
              window.history.forward();
          }

          // Initialize FastClick
          document.addEventListener('DOMContentLoaded', function () {
              if ('addEventListener' in document) {
                  FastClick.attach(document.body);
              }
          }, false);

      </script>



</body>
</html>
