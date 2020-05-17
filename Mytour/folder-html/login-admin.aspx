<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login-admin.aspx.cs" Inherits="Mytour.folder_html.login_admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login-Admin</title>
    <link href="../image/avatar.jpg" rel="shortcut icon" type="image/x-icon" />
    <link href="../../folder-css/login-admin.css" rel="stylesheet" />
    <link href="../folder-css/font-awesome/CSS/font-awesome.min.css" rel="stylesheet" />
    <link href="../bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../folder-css/admin.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container" id="form-login-admin">
                <%--  <asp:Panel runat="server" class="panel panel-primary">
                    <div class="panel-heading" id="heading-form-login">
                        <div class="title-form col-md-11">
                            <h4>Đăng nhập hệ thống quản lý</h4>
                        </div>
                        <span class="close-form">X</span>
                    </div>
                    <div class="panel-body">
                        <form action="login-admin.aspx" method="post">
                            <div class="form-group">
                                <label>User name:</label>
                                <asp:TextBox runat="server" ID="txtUserName" class="form-control" placeholder="User name"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label>Password:</label>
                                <asp:TextBox runat="server" TextMode="Password" class="form-control" ID="txtPass" placeholder="Password"></asp:TextBox>
                            </div>
                            <div class="checkbox">
                                <asp:Label runat="server" AssociatedControlID="checkRemember">
                                    <asp:CheckBox runat="server" ID="checkRemember" />Remember me
                                </asp:Label>
                            </div>
                            <asp:Button runat ="server" type="submit" class="btn btn-primary" Text="Log In"></asp:Button>
                        </form>
                      
                    </div>
                </asp:Panel>--%>
                <div class="row">
                    <asp:Panel runat="server" GroupingText="Đăng nhập hệ thống" ID="pnLogin" DefaultButton="btnDangNhap" CssClass="panel panel-default col-lg-4">
                        <div class="form-group">
                            <asp:Label runat="server" CssClass="control-label" ID="lbTaiKhoan" AssociatedControlID="txtTaiKhoan">Tài khoản:</asp:Label>
                            <asp:TextBox runat="server" class="form-control" ID="txtTaiKhoan" ClientIDMode="Static"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Label runat="server" ID="lbMatKhau" AssociatedControlID="txtMatKhau">Mật khẩu:</asp:Label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="txtMatKhau" TextMode="Password"></asp:TextBox>

                        </div>
                        <div>
                            <asp:Label runat="server" ID="lbError" ForeColor="Red"></asp:Label>
                        </div>
                        <div>
                            <asp:Button runat="server" Text="Đăng Nhập" CssClass="btn btn-primary" ID="btnDangNhap" OnClientClick="return valid();" OnClick="btnDangNhap_Click" />
                        </div>
                    </asp:Panel>
                </div>
            </div>
        </div>
    </form>
    <script src="../folder-js/jquery-3.4.1.min.js"></script>
    <script src="../bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <script src="../folder-js/login-pageAdmin.js"></script>
</body>
</html>
