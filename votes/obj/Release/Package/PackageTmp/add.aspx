<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add.aspx.cs" Inherits="votes.add" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <div class="container">
            <div class="row">
                <div class="col">
                    <div class="form-group">
                        <label for="firstname">First Name</label>
                        <input type="text" id="first" class="form-control" />
                    </div>
                </div>
                <div class="col">
                    <div class="form-group">
                        <label for="middlename">Middle Name</label>
                        <input type="text" id="second" class="form-control" />
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col">
                    <div class="form-group">
                        <label for="lastname">Last Name</label>
                        <input type="text" id="third" class="form-control" />
                    </div>
                </div>
                <div class="col">
                    <div class="form-group">
                        <label for="C_ID">C_ID</label>
                        <input type="text" id="cand" class="form-control" />
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col">
                    <div class="form-group">
                        <label for="sogali">Sogali Sawir</label>
                        <input type="file" id="FileUpload1" class="form-control" />
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col">
                    <div class="form-group">
                        <label for="Xilka">Xilka</label>
                        <select id="DropDownList1" class="form-control">
                            <option>gudoomiye</option>
                            <option>ku xigeen</option>
                        </select>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col mt-5">
                    <button type="button" class="btn btn-success" onclick="saveData()">Submit</button>
                </div>
            </div>
        </div>
        </div>
    </form>
      <script src="assets/jquery.min.js"></script>
    <script>
        function saveData() {
            var first = document.getElementById('first').value;
            var second = document.getElementById('second').value;
            var third = document.getElementById('third').value;
            var cand = document.getElementById('cand').value;
            var xilka = document.getElementById('DropDownList1').value;

            var formData = new FormData();
            formData.append('first', first);
            formData.append('second', second);
            formData.append('third', third);
            formData.append('cand', cand);
            formData.append('xilka', xilka);
            formData.append('file', document.getElementById('FileUpload1').files[0]);

            $.ajax({
                type: 'POST',
                url: 'add.aspx/SaveData', // Adjust the URL to match your page and method
                data: formData,
                contentType: false,
                processData: false,
                success: function (response) {
                    console.log(response);
                    alert(response.d);
                    alert("saved")// Display success message
                },
                error: function (error) {
                    alert('Error: ' + error.responseText); // Display error message
                }
            });
        }
    </script>
</body>
</html>
