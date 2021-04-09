<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeBehind="ChonBaiThi.aspx.cs" Inherits="CPanel.Modules.Admin.ChonBaiThi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-xs-12">
        <div class="col-xs-6 text-center">
            <label>Loại bài thi</label>
            <asp:DropDownList ID="drpLoai" runat="server"></asp:DropDownList>
        </div>

        <div class="col-xs-6 text-center">
            <label>Mức độ bài thi</label>
            <asp:DropDownList ID="drpMucDo" runat="server"></asp:DropDownList>
        </div>
    </div>

    <div class="col-xs-12 text-center">
        <label>Bài thi</label>
        <asp:DropDownList ID="drpBaiThi" runat="server"></asp:DropDownList>
    </div>

    <div class="col-xs-12 text-center">
        <asp:Button ID="btnSave" Text="Save" OnClick="btnSave_Click" CssClass="btn btn-success" Font-Size="Small" runat="server"></asp:Button>
        <asp:Button ID="btnBack" Text="Back" OnClick="btnBack_Click" CssClass="btn btn-success" Font-Size="Small" runat="server"></asp:Button>
    </div>
</asp:Content>
