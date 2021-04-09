<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeBehind="TaoBaiThi.aspx.cs" Inherits="CPanel.Modules.QuanLyBaiThi.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="col-xs-12">
        <label>Loại bài thi</label>
        <select style="width: 200px"></select>
        <label>Mức độ bài thi</label>
        <select style="width: 200px"></select>
    </div>

    <div class="col-xs-12">
        <div id="debai-text">
            <label>ĐỀ BÀI</label>
        </div>
    </div>

    <div class="col-xs-12">
        <div class ="col-xs-6" id="tracnghiem">
            <label>TRẮC NGHIỆM</label>
        </div>
        <div class ="col-xs-6" id="tuluan">
            <label>TỰ LUẬN</label>
        </div>
    </div>

   <div class="col-xs-12">
       <div class="col-xs-3" id="socauhoide1">
           <label>Số câu hỏi dễ:</label>
       </div>
       <div class="col-xs-3"id="txt_socauhoide1">
           <asp:TextBox runat="server"  placeholder ="Nhập số lượng"></asp:TextBox>
       </div>
       <div class="col-xs-3" id="socauhoide2">
           <label>Số câu hỏi dễ:</label>
       </div> 
       <div class="col-xs-3"id="txt_socauhoide2">
            <asp:TextBox runat="server"  placeholder ="Nhập số lượng"></asp:TextBox>
        </div>
   </div>

    <div class="col-xs-12">
       <div class="col-xs-3" id="socauhoibthg1">
           <label>Số câu hỏi trung bình: </label>
       </div>
        <div class="col-xs-3" id="txt_socauhoibthg1">
             <asp:TextBox runat="server"  placeholder ="Nhập số lượng"></asp:TextBox>
        </div>
        <div class="col-xs-3" id="socauhoibthg2">
           <label>Số câu hỏi trung bình: </label>
           </div>
         <div class="col-xs-3"id="txt_socauhoibthg2" >
             <asp:TextBox runat="server"  placeholder ="Nhập số lượng"></asp:TextBox>
        </div>
   </div>

    <div class="col-xs-12">
       <div class="col-xs-3" id="socauhoikho1">
           <label>Số câu hỏi khó: </label>
       </div>
        <div class="col-xs-3" id="txt_socauhoikho1">
             <asp:TextBox runat="server"  placeholder ="Nhập số lượng"></asp:TextBox>
        </div>
        <div class="col-xs-3" id="socauhoikho2">
           <label>Số câu hỏi khó: </label>
           </div>
         <div class="col-xs-3"id="txt_socauhoikho2" >
             <asp:TextBox runat="server"  placeholder ="Nhập số lượng"></asp:TextBox>
        </div>
   </div>

    <div class="col-xs-12" id="thoigianthi">
        <label>Thời gian thi:</label>
        <asp:TextBox runat="server" style="width:50px"></asp:TextBox>
        <label>phút</label>
    </div>

    <div class="col-xs-12" id="btn_ok">
        <asp:Button runat="server" Text="OK" style="width:70px" BorderStyle="Groove"  />
    </div>
    <%--<div class="bg_100pecents_css row_css">

        <div class="col-xs-3">
            <label class="control-label"><%=CPanel.Commons.TitleConst.getTitleConst("NGAY_BAT_DAU_DK") %></label>
            <dx:ASPxDateEdit runat="server" ID="dtNgayBatDauDK" EditFormat="Custom" CssClass="form-control readonly_css"></dx:ASPxDateEdit>
        </div>
        <div class="col-xs-3">
            <label class="control-label"><%=CPanel.Commons.TitleConst.getTitleConst("NGAY_KET_THUC_DK") %></label>
            <dx:ASPxDateEdit runat="server" ID="dtNgayKetThucDK" EditFormat="Custom" CssClass="form-control readonly_css"></dx:ASPxDateEdit>
        </div>

        <div class="col-xs-3">
            <label class="control-label"><%=CPanel.Commons.TitleConst.getTitleConst("NGUOI_CHU_TRI") %></label>
            <asp:DropDownList ID="drpNguoiChuTri" AutoPostBack="false" CssClass="form-control element_tab_css required_css" runat="server"></asp:DropDownList>
            <span class="validation_css" id="<%=drpNguoiChuTri.ClientID %>_errorMsg"><%=CPanel.Commons.TitleConst.getTitleConst("MSG_CHON_NGUOI_CHU_TRI") %></span>
        </div>

        <div class="col-xs-3">
            <label class="control-label"><%=CPanel.Commons.TitleConst.getTitleConst("KET_QUA_CV") %></label>
            <asp:DropDownList ID="drpKetQuaCV" AutoPostBack="false" CssClass="form-control element_tab_css" runat="server"></asp:DropDownList>
        </div>
    </div>

    <div class="bg_100pecents_css row_css">
        <div class="col-xs-12">
            <label class="control-label"><%=CPanel.Commons.TitleConst.getTitleConst("GHI_CHU") %></label>
            <asp:TextBox ID="txtGhiChu" TextMode="MultiLine" CssClass="form-control element_tab_css" Rows="10" runat="server"></asp:TextBox>
        </div>
    </div>--%>

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
    <style>
        .control-label-loaibaithi {
            /*margin:0px 0px 0px 200px;*/
        }
        #debai-text{
           margin:50px 0px 0px 0px;
           font-size:26px;
           text-align:center;
        }
        #tracnghiem{
            text-align:center;
             margin:50px 0px 0px 0px;
             font-size:18px;
             color:orangered;
        }
        #tuluan{
            text-align:center;
            margin:50px 0px 0px 0px;
            font-size:18px;
            color:orangered;
        }
        #socauhoide1{
            text-align:right;
            font-size:16px;
            margin:30px 0px 0px 0px;
        }
        #socauhoide2{
            text-align:right;
            font-size:16px;
            margin:30px 0px 0px 0px;
        }
        #txt_socauhoide1{
            text-align:left;
            font-size:16px;
            margin:28px 0px 0px 0px;
         }
        #txt_socauhoide2{
           text-align:left;
           font-size:16px;
           margin:28px 0px 0px 0px;
         }
        #socauhoibthg1{
            text-align:right;
            font-size:16px;
            margin:30px 0px 0px 0px;
        }
        #socauhoibthg2{
            text-align:right;
            font-size:16px;
            margin:30px 0px 0px 0px;
        }
        #txt_socauhoibthg1 {
            text-align: left;
            font-size: 16px;
            margin: 28px 0px 0px 0px;
        }
        #txt_socauhoibthg2 {
            text-align: left;
            font-size: 16px;
            margin: 28px 0px 0px 0px;
        }
        #socauhoikho1{
            text-align:right;
            font-size:16px;
            margin:30px 0px 0px 0px;
        }
        #socauhoikho2{
            text-align:right;
            font-size:16px;
            margin:30px 0px 0px 0px;
        }
        #txt_socauhoikho1 {
            text-align: left;
            font-size: 16px;
            margin: 28px 0px 0px 0px;
        }
        #txt_socauhoikho2 {
            text-align: left;
            font-size: 16px;
            margin: 28px 0px 0px 0px;
        }
        #thoigianthi{
            text-align:center;
            margin:50px 0px 0px 0px;
            font-size:16px;
        }
        #btn_ok {
            text-align: center;
            margin: 30px 0px 0px 0px;
        }
    </style>
</asp:Content>
