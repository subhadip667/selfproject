<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="selfregistration.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/login.css" rel="stylesheet" />

    <script src="Scripts/jquery-3.7.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">

       <div class="login-wrapper">

            <div class="login-box">

                <div class="avatar">
                    <span class="glyphicon glyphicon-user"></span>
                </div>

                <div class="login-content">

                    <h3>Member Login</h3>

                    <div class="form-group">
                        <asp:TextBox ID="txtusername"
                            runat="server"
                            CssClass="form-control"
                            placeholder="Username">
                        </asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:TextBox ID="txtpassword"
                            runat="server"
                            CssClass="form-control"
                            TextMode="Password"
                            placeholder="Password">
                        </asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:Button ID="BtnLogin"
                            runat="server"
                            Text="Login"
                            CssClass="btn btn-login btn-block" OnClick="BtnLogin_Click"
                             />
                    </div>

                    <asp:Label ID="lblmsg"
                        runat="server">
                    </asp:Label>

                </div>

                <div class="login-footer">
                    <a href="#">Forgot Password?</a>
                </div>

            </div>

        </div>

    </form>

</body>
</html>
