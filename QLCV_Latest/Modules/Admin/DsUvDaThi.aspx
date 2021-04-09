<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeBehind="DsUvDaThi.aspx.cs" Inherits="CPanel.Modules.QuanLyBaiThi.DsUvDaThi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="col-xs-1" id="chonthang">
        <asp:TextBox ID="thang" TextMode="Month" runat="server"></asp:TextBox>
    </div>
    
    <div class="col-xs-1" id="btn_guimail">
         <asp:Button Text="Gửi mail" style="width:80px" runat="server"/>
    </div>

    <dx:ASPxGridView ID="grvObjects" Width="100%" runat="server" KeyFieldName="Id"
                    Settings-ShowGroupPanel="false" AutoGenerateColumns="False" ClientInstanceName="grvObjects">
            <SettingsBehavior AllowSelectByRowClick="true" AllowFocusedRow="true" />  

            <Columns>      
                <dx:GridViewDataCheckColumn PropertiesCheckEdit-CheckBoxFocusedStyle-BackColor="YellowGreen" Width="30px" Settings-AllowAutoFilter="True" Settings-AllowSort="False" HeaderStyle-HorizontalAlign="Center" VisibleIndex="2" >
                    <DataItemTemplate>
                        <td><input type="checkbox" name="name1" />&nbsp;</td>
                        <td><input type="checkbox" name="name2" />&nbsp;</td>
                    </DataItemTemplate>
                </dx:GridViewDataCheckColumn>                                                       
                <dx:GridViewDataTextColumn FieldName= "STT" Settings-AllowAutoFilter="True" Caption="STT" Width="50px" Settings-AllowSort="False" HeaderStyle-HorizontalAlign="Center" VisibleIndex="2" />
                <dx:GridViewDataTextColumn FieldName="MA_UNG_VIEN" Settings-AllowAutoFilter="True" Caption="MA_UNG_VIEN" Width="100px" Settings-AllowSort="False" HeaderStyle-HorizontalAlign="Center" VisibleIndex="2" />
                <dx:GridViewDataTextColumn FieldName="TEN_UNG_VIEN" Caption="TEN_UNG_VIEN" Width="200px" Settings-AllowSort="False" HeaderStyle-HorizontalAlign="Center" VisibleIndex="2" />
                <dx:GridViewDataTextColumn FieldName="SDT" Caption="SDT" Width="150px" Settings-AllowSort="False" HeaderStyle-HorizontalAlign="Center" VisibleIndex="2" />
                <dx:GridViewDataTextColumn FieldName="EMAIL" Caption="EMAIL" Width="200px"  Settings-AllowSort="False" HeaderStyle-HorizontalAlign="Center" VisibleIndex="2" />
                <dx:GridViewDataTextColumn FieldName="MA_BAI_THI" Caption="MA_BAI_THI" Width="80px" Settings-AllowSort="False" HeaderStyle-HorizontalAlign="Center" VisibleIndex="2" />
                <dx:GridViewDataTextColumn FieldName="DIEM_TN" Caption="DIEM_TN" Width="80px" Settings-AllowSort="False" HeaderStyle-HorizontalAlign="Center" VisibleIndex="2" />
                <dx:GridViewDataTextColumn FieldName="SO_CAU_TL" Caption="SO_CAU_TL" Width="80px" Settings-AllowSort="False" HeaderStyle-HorizontalAlign="Center" VisibleIndex="2" />
                <dx:GridViewDataTextColumn FieldName="TRANG_THAI" Caption="TRANG_THAI" Width="150px" Settings-AllowSort="False" HeaderStyle-HorizontalAlign="Center" VisibleIndex="2" />
                
                

                <dx:GridViewDataColumn Settings-AutoFilterCondition="Contains" width="200px" Caption="HANH_DONG" HeaderStyle-HorizontalAlign="Center" CellStyle-HorizontalAlign="Left" VisibleIndex="3">
                    <DataItemTemplate>                                              
                        <a href="javascript:viewObject('<%# Eval("ID") %>')"><%=CPanel.Commons.TitleConst.getTitleConst("XEM")%></a>
                        <a href="javascript:deleteObject('<%# Eval("ID") %>')"><%=CPanel.Commons.TitleConst.getTitleConst("XOA")%></a>
                    </DataItemTemplate>
                </dx:GridViewDataColumn>
            </Columns>
            <SettingsPager PageSize="20">
                <PageSizeItemSettings Visible="true" ShowAllItem="true" />
            </SettingsPager>
            <Settings ShowFilterRow="true" AutoFilterCondition="Contains"/>                
        </dx:ASPxGridView>


    <style>
        #chonthang{
            margin-bottom:50px;
        }
        #btn_guimail{
            margin-left:50px;
        }
    </style>
    
</asp:Content>
