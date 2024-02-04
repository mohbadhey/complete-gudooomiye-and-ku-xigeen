<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="votes.homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>homepage</title>
    <script src="js/sweetalert2.min.js"></script>
    <link href="css/sweetalert2.css" rel="stylesheet" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous"/>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <style>
        input[type=radio] {
    width: 30px;
    height: 30px;

}

        .card-img-top:hover {
    cursor: pointer;
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
    </style>
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

body{
/*    background: radial-gradient(circle, rgba(238,174,202,1) 7%, rgba(26,190,242,1) 73%);*/

background-image: linear-gradient(
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
}
.card-img {
   background-size: cover;
   background-repeat: no-repeat;
   background-position: center center;
  /* height: 100px;
   width: 150px;*/
}
    </style>

</head>
<body class="bg-success">
    <asp:Label ID="Label1" runat="server" ></asp:Label>
       <asp:Label ID="Label2" runat="server" ></asp:Label>

    <form id="form1" runat="server">
        <div class="row ">
         <div class="col-2"></div>
             <div class="col-8">
                 <h1 class="text-center mt-5"> u codee qofkaa rabtid</h1>
                 <div class="row">
                     <div class="col-4 d-flex p-1">
    

                                    <div data-value="1" id="a" class="card card-default card-input" onclick="submitInfo('a')" style="width: 18rem;">


  <img class="card-img" src="img/carab4k.jpg"  alt="Card image cap"/>
                                   
  <div class="card-body p-3 " style="padding: 10px;">
    <h4 class="p-0">Mohamed Hussein Dhalahow</h4>
  </div>
</div>



                     


               

                       
                     </div>
                        <div class="col-4 d-flex p-1">
          

                                    <div data-value="2" id="b"  onclick="submitInfo('b')"  class="card card-default card-input" style="width: 18rem;">


  <img class="card-img" src="img/oma.png" alt="Card image cap"/>
                                       
  <div class="card-body" style="padding: 10px;">
    <h3>Mohamed Hussein Dhalahow</h3>
  </div>
</div>
                

                       
                     </div>
                        <div class="col-4 d-flex p-1">
          

                                    <div data-value="3" id=""  onclick="submitInfo('b')"  class="card card-default card-input" style="width: 18rem;">


  <img class="card-img" src="img/oma.png" alt="Card image cap"/>
                                       
  <div class="card-body" style="padding: 10px;">
    <h3>Mohamed Hussein Dhalahow</h3>
  </div>
</div>
                

                       
                     </div>
        
                 </div>


             </div>
            <div class="col-2"></div>
        </div>
    </form>
</body>
<script src="js/fastclick.js"></script>
<script src="assets/jquery.min.js"></script>
    <script>

        document.addEventListener('DOMContentLoaded', function () {
            FastClick.attach(document.body);
        }, false);








        function submitInfo(clickedId) {
            //document.getElementById("btnSubmit").style.display = "none";
            //document.getElementById("btnspinner").style.display = "block";
          

            var std = document.getElementById("Label1").innerText;
            var name = document.getElementById("Label2").innerText;
            var selectedId = document.getElementById(clickedId).getAttribute("data-value");
      


            if (selectedId == 1) {
                const swalWithBootstrapButtons = Swal.mixin({
                    customClass: {
                        confirmButton: "btn btn-success  mr-3",
                        cancelButton: "btn  btn-danger",
                        content: 'text-bold text-bigger text-blue ' 
                    },
                    buttonsStyling: false
                });
                swalWithBootstrapButtons.fire({
                    title: "Ma hubtaa ina u codeneyso?",
                    html: '<span class="text-bold text-bigger text-blue ">Mohamed Hussein Dhalahow!</span>', 
                    icon: "warning",
                    showCancelButton: true,
                    confirmButtonText: "HAA!",
                    cancelButtonText: "MAYA!",
                    reverseButtons: true
                }).then((result) => {
                    if (result.isConfirmed) {




                        $.ajax({
                            url: 'homepage.aspx/submitData',
                            data: "{'std':'" + std + "', 'name':'" + name + "',  'selectedId':'" + selectedId + "'} ",
                            dataType: "json",
                            type: 'POST',
                            contentType: "application/json",
                            success: function (response) {
                                swalWithBootstrapButtons.fire({
                                    title: "Waad codeese!",
                                    text: "Mahadsanid",
                                    icon: "success"
                                });
                            },
                            error: function (response) {
                                alert(response.responseText);
                            }
                        });






                    } else if (
                        /* Read more about handling dismissals below */
                        result.dismiss === Swal.DismissReason.cancel
                    ) {
                        swalWithBootstrapButtons.fire({
                            title: "Cancelled",
                            text: "Your imaginary file is safe :)",
                            icon: "error"
                        });
                    }
                });


            } else if (selectedId == 2) {
                const swalWithBootstrapButtons = Swal.mixin({
                    customClass: {
                        confirmButton: "btn btn-success",
                        cancelButton: "btn btn-danger",
                        content: 'text-bold text-bigger text-blue ' 
                    },
                    buttonsStyling: false
                });
                swalWithBootstrapButtons.fire({
                    title: "Ma hubtaa inaa u codeeneyso",
                    html: '<span class="text-bold text-bigger text-blue ">Abdikar muhyadin abdi!</span>', // HTML with custom class
                    icon: "warning",
                    showCancelButton: true,
                    confirmButtonText: "HAA!",
                    cancelButtonText: "MAYA!",
                    reverseButtons: true
                }).then((result) => {
                    if (result.isConfirmed) {




                        $.ajax({
                            url: 'homepage.aspx/submitData',
                            data: "{'std':'" + std + "', 'name':'" + name + "',  'selectedId':'" + selectedId + "'} ",
                            dataType: "json",
                            type: 'POST',
                            contentType: "application/json",
                            success: function (response) {
                                swalWithBootstrapButtons.fire({
                                    title: "Waad codeese!",
                                    text: "Mahadsanid .",
                                    icon: "success"
                                });
                            },
                            error: function (response) {
                                alert(response.responseText);
                            }
                        });






                    } else if (
                        /* Read more about handling dismissals below */
                        result.dismiss === Swal.DismissReason.cancel
                    ) {
                        swalWithBootstrapButtons.fire({
                            title: "Cancelled",
                            text: "Your imaginary file is safe :)",
                            icon: "error"
                        });
                    }
                });


            }


         




        
        };
    </script>
</html>


