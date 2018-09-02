<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebDiaDiemAnUong.DangNhap.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Tieude" runat="server">
    Đăng nhập
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="card card-register">
        <center>
        <h4 class="text-center"><h1>Đăng nhập</h1></h4>
        
        <br>
        <br>
        <form action="" class="register-form" method="post" role="form" defaultfocus="txtTen">
            <label>Tên đăng nhập<span id="required">*</span></label><br />
            <asp:TextBox ID="txtTen" runat="server"></asp:TextBox>
            <br />
            <label>Mật khẩu<span id="required">*</span></label><br />
            <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <br />

            <asp:Button ID="Submit" runat="server" onclick="Submit_Click" Text="Đăng Nhập" />
        </form>
        <div class="forgot">
            <a href="" class="btn btn-link btn-danger">Quên mật khẩu</a>
        </div>

            </center>

    </div>
</asp:Content>
