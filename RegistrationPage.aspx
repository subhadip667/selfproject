<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationPage.aspx.cs" Inherits="selfregistration.RegistrationPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.4.1.js"></script>
    <link href="Content/regisraion.css" rel="stylesheet" />
   
    <script type="text/javascript">
        $(document).ready(function () {
            $("#<%=txtname.ClientID %>,#<%=txtusername.ClientID %> ,#<%=txtaddress.ClientID %>").keypress(function (e) {
                var key = e.which;
                if (!((key >= 65 && key <= 90) || (key >= 97 && key <= 122) || key == 32)) {
                    e.preventDefault();
                }
            });

            $("#<%=txtphone.ClientID %>").keypress(function (e) {
                var key = e.which;
                if (key < 48 || key > 57) {
                    e.preventDefault();
                }
            });
        })

    </script>
</head>
<body>
    <div class="signup-form">
    <form id="form1" runat="server">

        <h2>Sign Up</h2>
        <p>Please fill in this form to create an account!</p>
        <hr />

        <div class="form-group">
            <asp:TextBox ID="txtname" runat="server"
                CssClass="form-control"
                placeholder="Full Name"
                required="required">
            </asp:TextBox>
        </div>

        <div class="form-group">
            <asp:TextBox ID="txtusername" runat="server"
                CssClass="form-control"
                placeholder="User Name"
                required="required">
            </asp:TextBox>
        </div>

        <div class="form-group">
            <asp:TextBox ID="txtaddress" runat="server"
                CssClass="form-control"
                placeholder="Address"
                required="required">
            </asp:TextBox>
        </div>

        <div class="form-group">
            <asp:TextBox ID="txtphone" runat="server"
                CssClass="form-control"
                placeholder="Phone"
                TextMode="Phone"
                required="required">
            </asp:TextBox>
        </div>

        <div class="form-group">
            <asp:TextBox ID="txtpassword" runat="server"
                CssClass="form-control"
                TextMode="Password"
                placeholder="Password"
                required="required">
            </asp:TextBox>
        </div>

        <div class="form-group">
            <asp:Button ID="BtnSave" runat="server"
                Text="Registration"
                CssClass="btn btn-primary btn-lg"
                OnClick="BtnSave_Click" />
        </div>

        <div class="text-center">
            Already have an account?
            <a href="loginpage.aspx">Login here</a>
        </div>

    </form>
    </div>
</body>
</html>
