<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeBehind="ThemUngVien.aspx.cs" Inherits="CPanel.Modules.Admin.ThemUngVien" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-xs-12">
        <div class="col-xs-4">
            <label>Họ và tên</label>
            <asp:TextBox ID="name" runat="server"></asp:TextBox>
        </div>

        <div class="col-xs-4">
            <label>Ngày sinh</label>
            <asp:TextBox ID="date" TextMode="Date" runat="server"></asp:TextBox>
        </div>

        <div class="col-xs-4">
            <label>Email</label>
            <asp:TextBox ID="email" Height="" runat="server"></asp:TextBox>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="col-xs-4">
            <label>Số điện thoại</label>
            <asp:TextBox ID="phone" TextMode="Phone" runat="server"></asp:TextBox>
        </div>

        <div class="col-xs-4">
            <label>Ngày hoàn thành</label>
            <asp:TextBox ID="dayfinish" TextMode="Date" runat="server"></asp:TextBox>
        </div>

        <div class="col-xs-4">
            <label>Vị trí tuyển dụng</label>
            <asp:DropDownList ID="drpViTri" AutoPostBack="false" runat="server"></asp:DropDownList>
        </div>
    </div>

    <div class="col-xs-12 text-center">
        <label>Mã ứng viên: </label>
    </div>

    <div class="col-xs-12">
        <asp:Button ID="btnSaveUV" CssClass="btn btn-primary" OnClick="btnSaveUV_Click" Text="Save" runat="server"></asp:Button>
        <asp:Button ID="btnBack2" CssClass="btn btn-primary" OnClick="btnBack2_Click" Text="Back" runat="server"></asp:Button>
    </div>
</asp:Content>
