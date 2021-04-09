<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeBehind="XemUngVien.aspx.cs" Inherits="CPanel.Modules.Admin.XemUngVien" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <ul class="nav nav-tabs">
            <li class="active"><a data-toggle="tab" href="#XemUV">Thông tin ứng viên</a></li>
            <li><a data-toggle="tab" href="#GuiMail">Gửi bài thi cho ứng viên</a></li>
        </ul>

        <div class="tab-content">
            <div id="XemUV" class="tab-pane fade in active">
                <h3 style="text-align: center; font-size: 20px; font-weight: bold">DANH SÁCH THÔNG TIN ỨNG VIÊN</h3>
                <div class="container">
                    <dx:ASPxGridView ID="grvObjects" Width="100%" runat="server" KeyFieldName="Id"
                        Settings-ShowGroupPanel="false" AutoGenerateColumns="False" ClientInstanceName="grvObjects">
                        <SettingsBehavior AllowSelectByRowClick="true" AllowFocusedRow="true" />

                        <Columns>

                            <dx:GridViewDataTextColumn FieldName="TEN_CONG_VIEC" Settings-AllowAutoFilter="True" Caption="STT" Settings-AllowSort="False" HeaderStyle-HorizontalAlign="Center" VisibleIndex="2" />
                            <dx:GridViewDataTextColumn FieldName="TEN_HE_THONG" Caption="Họ tên" Settings-AllowSort="False" HeaderStyle-HorizontalAlign="Center" VisibleIndex="2" />
                            <dx:GridViewDataTextColumn FieldName="TEN_HOP_DONG" Caption="Mã ứng viên" Width="50px" Settings-AllowSort="False" HeaderStyle-HorizontalAlign="Center" VisibleIndex="2" />
                            <dx:GridViewDataTextColumn FieldName="TEN_NGUOI_CHU_TRI" Caption="Ngày sinh" Settings-AllowSort="False" HeaderStyle-HorizontalAlign="Center" VisibleIndex="2" />
                            <dx:GridViewDataTextColumn FieldName="ID_NGUOI_PHOI_HOP" Caption="Email" Settings-AllowSort="False" HeaderStyle-HorizontalAlign="Center" Visible="false" VisibleIndex="2" />
                            <dx:GridViewDataTextColumn FieldName="STR_NGAY_BAT_DAU" Caption="SĐT" Width="100px" Settings-AllowSort="False" HeaderStyle-HorizontalAlign="Center" VisibleIndex="2" />
                            <dx:GridViewDataTextColumn FieldName="STR_NGAY_KET_THUC" Caption="Vị trí tuyển dụng" Width="100px" Settings-AllowSort="False" HeaderStyle-HorizontalAlign="Center" VisibleIndex="2" />
                            <dx:GridViewDataTextColumn FieldName="KET_QUA_CV" Caption="Mã bài thi" Settings-AllowSort="False" HeaderStyle-HorizontalAlign="Center" VisibleIndex="2" />



                            <dx:GridViewDataColumn Settings-AutoFilterCondition="Contains" Caption="Lựa chọn" HeaderStyle-HorizontalAlign="Center" CellStyle-HorizontalAlign="Left" VisibleIndex="3">
                                <DataItemTemplate>
                                    <asp:CheckBox ID="CheckBoxSelect" runat="server"></asp:CheckBox>
                                </DataItemTemplate>
                            </dx:GridViewDataColumn>
                        </Columns>
                        <SettingsPager PageSize="20">
                            <PageSizeItemSettings Visible="true" ShowAllItem="true" />
                        </SettingsPager>
                        <Settings ShowFilterRow="true" AutoFilterCondition="Contains" />
                    </dx:ASPxGridView>
                </div>

                <div class="col-xs-12">
                    <asp:Button ID="btnAdd" runat="server" CssClass="btn btn-primary" OnClick="btnAdd_Click" Text="Thêm ứng viên"></asp:Button>
                    <asp:Button ID="btnSelect" runat="server" CssClass="btn btn-primary" OnClick="btnSelect_Click" Text="Chọn bài thi"></asp:Button>
                    <asp:Button ID="btnBack1" runat="server" OnClick="btnBack1_Click" CssClass="btn btn-primary" Text="Back"></asp:Button>
                </div>
            </div>

            <div id="GuiMail" class="tab-pane fade">
                <div class="container">
                    <dx:ASPxGridView ID="ASPxGridView1" Width="100%" runat="server" KeyFieldName="Id"
                        Settings-ShowGroupPanel="false" AutoGenerateColumns="False" ClientInstanceName="grvObjects">
                        <SettingsBehavior AllowSelectByRowClick="true" AllowFocusedRow="true" />

                        <Columns>

                            <dx:GridViewDataTextColumn FieldName="TEN_CONG_VIEC" Settings-AllowAutoFilter="True" Caption="STT" Settings-AllowSort="False" HeaderStyle-HorizontalAlign="Center" VisibleIndex="2" />
                            <dx:GridViewDataTextColumn FieldName="TEN_HE_THONG" Caption="Họ tên" Settings-AllowSort="False" HeaderStyle-HorizontalAlign="Center" VisibleIndex="2" />
                            <dx:GridViewDataTextColumn FieldName="TEN_HOP_DONG" Caption="Ngày gửi mail" Width="50px" Settings-AllowSort="False" HeaderStyle-HorizontalAlign="Center" VisibleIndex="2" />
                            <dx:GridViewDataTextColumn FieldName="TEN_NGUOI_CHU_TRI" Caption="Ngày hoàn thành" Settings-AllowSort="False" HeaderStyle-HorizontalAlign="Center" VisibleIndex="2" />
                            <dx:GridViewDataTextColumn FieldName="ID_NGUOI_PHOI_HOP" Caption="Trạng thái" Settings-AllowSort="False" HeaderStyle-HorizontalAlign="Center" Visible="false" VisibleIndex="2" />
                            <dx:GridViewDataTextColumn FieldName="STR_NGAY_BAT_DAU" Caption="Ghi chú" Width="100px" Settings-AllowSort="False" HeaderStyle-HorizontalAlign="Center" VisibleIndex="2" />



                            <dx:GridViewDataColumn Settings-AutoFilterCondition="Contains" Caption="Lựa chọn" HeaderStyle-HorizontalAlign="Center" CellStyle-HorizontalAlign="Left" VisibleIndex="3">
                                <DataItemTemplate>
                                    <asp:CheckBox ID="CheckBoxSelect" runat="server"></asp:CheckBox>
                                </DataItemTemplate>
                            </dx:GridViewDataColumn>
                        </Columns>
                        <SettingsPager PageSize="20">
                            <PageSizeItemSettings Visible="true" ShowAllItem="true" />
                        </SettingsPager>
                        <Settings ShowFilterRow="true" AutoFilterCondition="Contains" />
                    </dx:ASPxGridView>
                </div>

                <div class="col-xs-12">
                    <asp:Button ID="btnSend" Text="Gửi mail" CssClass="btn btn-primary" runat="server"></asp:Button>
                    <asp:Button ID="btnBack2" Text="Back" CssClass="btn btn-primary" runat="server"></asp:Button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
