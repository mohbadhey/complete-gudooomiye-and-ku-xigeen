<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="insertcandi.aspx.cs" Inherits="votes.insertcandi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <link href="assets/bootstrap.css" rel="stylesheet" />

    <link href="hearder.css" rel="stylesheet" />
</head>
<body>
          <form id="form1" runat="server">
              <asp:Label ID="Label1" runat="server" Visible="false" Text="Label"></asp:Label>
       <div  class="row" >
             <div class="col-lg-5"  >
          <div class="card mb-4"> 
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <a >tartamayaasha  diwanglin</a>
                </div>
                <div class="card-body">

                  
            
                                 <div class="row">
                          <div class="col">
                                   <div class="form-group">
                      <label for="exampleInputEmail1">firstname</label>
                        <asp:TextBox ID="first" runat="server"  class="form-control"></asp:TextBox>
                   
                    </div>
                          </div>
                           <div class="col"> 
                                    <div class="form-group">
                      <label for="exampleInputPassword1">middlename</label> 
                  <asp:TextBox ID="second" runat="server"  class="form-control"></asp:TextBox>

                    </div>
                           </div>
                      </div>
               
                   <div class="row">
                          <div class="col">
                                   <div class="form-group">
                      <label for="exampleInputEmail1">lastname</label>
                        <asp:TextBox ID="third" runat="server"  class="form-control"></asp:TextBox>
                   
                    </div>
                          </div>
                           <div class="col"> 
                                    <div class="form-group">
                      <label for="exampleInputPassword1">C_ID</label> 
                  <asp:TextBox ID="cand" runat="server"  class="form-control"></asp:TextBox>

                    </div>
                           </div>
                      </div>
                     

                       <div class="row">
                               <div class="col">
                                   <div class="form-group">
                      <label for="exampleInputEmail1">sogali sawir</label>
                                       <asp:FileUpload ID="FileUpload1" runat="server" class="form-control"/>
                   
                    </div>
                               
                          </div>
                           </div>
                                 <div class="col">
                                   <div class="form-group">
                      <label for="exampleInputEmail1">Xilka</label>
                          <%--              <asp:TextBox ID="TextBox1" runat="server"  class="form-control"  TextMode="MultiLine"></asp:TextBox>--%>

                                        <%--   <select class="form-control" id="Select1">
                                                <option> Dooro </option>
                                       <option> gudoomiyaha </option>
                                                 <option> gudoomiye ku xigeen </option>--%>

                                  <asp:DropDownList Class="form-control" ID="DropDownList1" runat="server">
                                           <asp:ListItem>gudoomiye</asp:ListItem>
                                           <asp:ListItem>ku xigeen</asp:ListItem>
                                       </asp:DropDownList>
                   
                    </div>
                          </div>
                                
                <%--      <asp:TextBox ID="id" runat="server" Visible="False"></asp:TextBox>--%>




                 <div class="row">
                     <div class="col">

                  
                  </div>
                       <div class="col mt-5"><asp:Button ID="Button1" runat="server" Text="submit" class="btn btn-success" OnClick="Button1_Click" type="submit" />
        </div>
                       <div class="col">
                       <%--   <asp:Button ID="Button3" runat="server" Text="Delete" class="btn btn-danger"  Visible="true" OnClick="Button3_Click" />--%>
                     </div>
                 </div>
                    
                      </div></div></div>
           </div>
     </form>
</body>
</html>
