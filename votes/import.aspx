<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="import.aspx.cs" Inherits="votes.import" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous"/>
     <script/ src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.1/css/bootstrap.css"/>
	<link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css"/>
	<link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.5.2/css/buttons.bootstrap4.min.css"/>
	<link rel="stylesheet" href="https://cdn.datatables.net/responsive/2.2.3/css/responsive.bootstrap4.min.css"/>
           <script src="js/sweetalert2.min.js"></script>
    <link href="css/sweetalert2.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
       <div>
                <div style="color: White;">    
        <h4>    
           
        </h4>    
        <table>    
            <tr>    
                <td>    
                    Select File    
                  
                    <asp:FileUpload ID="FileUpload1" runat="server" class="form-control" />    
                </td>    
                   
                <td>    
                    <asp:Button ID="Button1" runat="server" Text="Upload Excel-file" OnClick="Button1_Click" class="btn btn-success"  />    
                </td>  
                <td>
<%--                      <a href="##" class="btn btn-danger" visible="false" onclick="deletedata1()" id="btndelate" >delete</a>--%>
                 <%--    <button class="btn btn-danger btn-lg px-5" type="button" >Submit</button>--%>
     <%--               <asp:Button ID="Button2" runat="server" Text="Button" OnClick="Button2_Click" />--%>
                   <asp:Button ID="btnDelete" runat="server" Visible="false" Text="Delete" OnClick="btnDelete_Click" />

                    <asp:Button ID="Button2" runat="server" class="btn btn-danger" Text="Reset" OnClick="Button2_Click" />
                </td>
            </tr>   
            
        </table>  
                    
    </div> 
        </div>
             <table class="table table-bordered table-sm" id="tableStudents" style="  width: 100%;">
           
        <thead>
            
<tr  style="background-color:blueviolet;color:white">
   
    <td>std_id</td>
        
   

     <td>
        username
    </td>
     <td>
        password
    </td>
     

</tr>

          </thead> 
             <tbody>  </tbody>
         </table>


    </form>
      <script src="assets/jquery.min.js"></script>
   <script>
       function confirmDelete() {
           Swal.fire({
               title: 'Are you sure?',
               text: 'You won\'t be able to revert this!',
               icon: 'warning',
               showCancelButton: true,
               confirmButtonText: 'Yes, delete it!',
               cancelButtonText: 'No, cancel!',
               reverseButtons: true
           }).then((result) => {
               if (result.value) {
                   var id = document.getElementById("txtid").value
                   $.ajax({
                       url: 'import.aspx/confirmDelet',
                       data: "{ 'id': '" + id + "'} ",

                       dataType: "json",
                       type: 'post',
                       contentType: "application/json",

                       success: function (response) {

                           //// alert("saved")
                           //$("#myModal").modal("hide");
                           DataBind();
                       },
                       error: function (response) {
                           alert(response.responseText);

                       }
                   });
                   __doPostBack('<%= btnDelete.UniqueID %>', '');
            } else if (result.dismiss === Swal.DismissReason.cancel) {
                // If canceled
                Swal.fire('Cancelled', 'Your data is safe :)', 'info');
            }
        });
       }
       function showDeleteSuccess() {
           Swal.fire({
               title: 'Deleted!',
               text: 'Your data has been deleted.',
               icon: 'success',
               confirmButtonText: 'OK'
           });
       }
   </script>
   
    <script>
        DataBind();
        function DataBind() {
            $.ajax({
                url: 'import.aspx/DataBind',
                dataType: "json",
                type: 'POST',
                contentType: "application/json",
                success: function (response) {
                    $("#tableStudents tbody").empty();

                    for (var i = 0; i < response.d.length; i++) {
                        $("#tableStudents tbody").append(

                            "<tr style='cursor:pointer' >"
                            + "<td>" + response.d[i].std_id + "</td>"
                            + "<td>" + response.d[i].username + "</td>"
                            + "<td>" + response.d[i].password + "</td>"

                            + "</tr>")
                    }

                },
                error: function (response) {
                    alert(response.responseText);
                }
            });
        };
        function deletedata1() {

            swal({
                title: "Are you sure?",
                text: "Once deleted, you will not be able to recover this imaginary file!",
                icon: "warning",
                buttons: true,
                dangerMode: true,
            })
                .then((willDelete) => {
                    if (willDelete) {

                        var id = document.getElementById("txtid").value
                        $.ajax({
                            url: 'importstdpass.aspx/delatadata',
                            data: "{ 'id': '" + id + "'} ",

                            dataType: "json",
                            type: 'post',
                            contentType: "application/json",

                            success: function (response) {

                                //// alert("saved")
                                //$("#myModal").modal("hide");
                                DataBind();
                            },
                            error: function (response) {
                                alert(response.responseText);

                            }
                        });
                        swal("Poof! Your imaginary file has been deleted!", {
                            icon: "success",
                        });
                    } else {
                        swal("Your imaginary file is safe!");
                   /*     $("#myModal").modal("hide");*/
                        DataBind();
                    }
                });

        };
    </script>
        <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.bootstrap4.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.html5.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.print.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.colVis.min.js"></script>
    <script src="https://cdn.datatables.net/responsive/2.2.3/js/dataTables.responsive.min.js"></script>
    <script src="https://cdn.datatables.net/responsive/2.2.3/js/responsive.bootstrap4.min.js"></script>
    <script>
        $(document).ready(function () {
            var table = $('#tableStudents').DataTable({
                lengthChange: false,
                buttons: ['copy', 'excel', 'csv', 'pdf', 'colvis']
            });

            table.buttons().container()
                .appendTo('#tableStudents_wrapper .col-md-6:eq(0)');
        });
    </script>

</body>
</html>
