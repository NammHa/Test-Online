<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeBehind="TaoCauHoiTuLuan.aspx.cs" Inherits="CPanel.Modules.QuanLyBaiThi.TaoCauHoiTuLuan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="main_contain_css main_contain_css_1">
        <div class="page-header">
            <h1 class="panel-title"><%=CPanel.Commons.TitleConst.getTitleConst("TẠO CÂU HỎI TỰ LUẬN") %></h1>
        </div>

        <div class="control_css">
            <asp:Button ID="btnCancel" runat="server" CssClass="btn btn-default"></asp:Button>
            <input type="button" class="btn btn-warning btn_Validation_Save_CSS" />
        </div>

        <div class="bg_100pecents_css">
            <div class="col-xs-3">
                <label class="control-label"><%=CPanel.Commons.TitleConst.getTitleConst("Loại câu hỏi") %></label>
                <asp:DropDownList ID="drpLoaiCauHoi" AutoPostBack="false" CssClass="form-control element_tab_css required_css" runat="server"></asp:DropDownList>
                <span class="validation_css" id="<%=drpLoaiCauHoi.ClientID %>_errorMsg"><%=CPanel.Commons.TitleConst.getTitleConst("MSG_NHAP_TEN_NHIEM_VU") %></span>
            </div>
        </div>

        <div class="bg_100pecents_css row_css">
            <div class="col-xs-12">
                <label class="control-label"><%=CPanel.Commons.TitleConst.getTitleConst("Mức độ") %></label>
                <%--<asp:DropDownList ID="drpHeThong" AutoPostBack="false" Enabled="false" CssClass="form-control element_tab_css" runat ="server"></asp:DropDownList>--%>
                <asp:CheckBox ID="CheckBox1" runat="server" Text="Dễ"></asp:CheckBox>
                <asp:CheckBox ID="CheckBox2" runat="server" Text="Trung bình"></asp:CheckBox>
                <asp:CheckBox ID="CheckBox3" runat="server" Text="Khó"></asp:CheckBox>
            </div>
        </div>

        <div class="bg_100pecents_css row_css">
            <div class="col-xs-12">
                <label class="control-label"><%=CPanel.Commons.TitleConst.getTitleConst("Nội dung câu hỏi") %></label>
                <asp:TextBox ID="TextBox1" TextMode="MultiLine" CssClass="form-control element_tab_css" Rows="10" runat="server"></asp:TextBox>
            </div>
        </div>

        <!-------------------------------BEGIN: display Message Box-------------------------------------------------------->
        <div id="DIV_MESSAGE" visible="false" runat="server">
            <div class="pop_up_background_css"></div>
            <div class="pop_up_info_css pop_up_message_css" runat="server">
                <asp:Button ID="btlClosePopUp" Text="X" CssClass="btn btn-danger close_css" runat="server" />
                <span class="message_box_css">
                    <asp:Literal ID="ltMessageContent" runat="server"></asp:Literal></span>
            </div>
        </div>
        <!-------------------------------END: display Message Box-------------------------------------------------------->

        <!--BEGIN: hidden tag-->
        <div class="hidden_css">
            <asp:TextBox ID="txtObjectID" runat="server"></asp:TextBox>
            <asp:TextBox ID="txtParentObjectID" runat="server"></asp:TextBox>
            <asp:TextBox ID="txtHeThongID" runat="server"></asp:TextBox>
            <asp:Button ID="btnSave" runat="server"></asp:Button>


        </div>
        <!--END: hidden tag-->
    </div>

    <script>
        //***********************************BEGIN: Set button title***************************************
        $("#<%=btnCancel.ClientID%>").val('<%=CPanel.Commons.TitleConst.getTitleConst("BUTTON_CANCEL")%>');
        $(".btn_Validation_Save_CSS").val('<%=CPanel.Commons.TitleConst.getTitleConst("BUTTON_SUBMIT")%>');
        //***********************************END: Set button title*****************************************

        $(".btn_Validation_Save_CSS").click(function () {
            if (validateForm()) {

                __doPostBack("<%=btnSave.UniqueID%>", "OnClick");
            }
        });
    </script>
</asp:Content>
