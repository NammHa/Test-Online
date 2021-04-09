<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeBehind="ChonLoaiCauHoi.aspx.cs" Inherits="CPanel.Modules.QuanLyBaiThi.ChonLoaiCauHoi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-xs-12">
        <label>Loại câu hỏi</label>
        <asp:Button ID="btnTracNghiem" OnClick="btnTracNghiem_Click" runat="server" CssClass="btn btn-primary" Text="Trắc nghiệm"></asp:Button>
        <asp:Button ID="btnTuLuan" OnClick="btnTuLuan_Click" runat="server" CssClass="btn btn-primary" Text="Tự luận"></asp:Button>
    </div>

    <div class="col-xs-12">
        Import file
        <input type="file" name="file" />
    </div>

    <div class="col-xs-12">
        <asp:Button ID="btnSave" OnClick="btnSave_Click" runat="server" CssClass="btn btn-success" Text="Save"></asp:Button>
        <asp:Button ID="btnBack" OnClick="btnBack_Click" runat="server" CssClass="btn btn-warning" Text="Back"></asp:Button>
    </div>
    <style>

    </style>
</asp:Content>
