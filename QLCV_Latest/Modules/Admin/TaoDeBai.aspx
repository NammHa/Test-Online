<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeBehind="TaoDeBai.aspx.cs" Inherits="CPanel.Modules.Admin.TaoDeBai" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-xs-12">
        <div class="col-xs-6 text-center">
            <label>Loại bài thi: </label>
            <asp:Label ID="lblLoaiBT" runat="server"></asp:Label>
        </div>

        <div class="col-xs-6 text-center">
            <label>Mức độ: </label>
            <asp:Label ID="lblMucDo" runat="server"></asp:Label>
        </div>
    </div>

    <div class="text-center" style="font-weight:bold; font-size:20px">
        <label>ĐỀ BÀI</label>
    </div>

    <div class="text-center">
        <asp:Button ID="btnSave" Text="Save" CssClass="btn btn-success" runat="server"></asp:Button>
    </div>
</asp:Content>
