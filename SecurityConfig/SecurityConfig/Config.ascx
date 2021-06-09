﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Config.ascx.cs" Inherits="SecurityConfig.Config" %>
<div>
        <asp:HiddenField ID="hdnType" runat="server"  Value="1"/>
        <asp:HiddenField ID="hdnParentId" runat="server" Value="-1" />
        <h1><asp:Label ID="lblname" runat="server" Text=""></asp:Label></h1>
        <table class="style1">
            <tr>
                <td>
                    &nbsp;</td>
                <td colspan="2">
                    <asp:Label ID="lblErrorMsg" runat="server" ForeColor="#FF0066"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    Name</td>
                <td>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ControlToValidate="txtName" ValidationGroup="config" ForeColor="Red" SetFocusOnError="true"
                        ID="RequiredFieldValidator111" runat="server" ErrorMessage="Please Enter Config Value"></asp:RequiredFieldValidator>
                </td>
                <td>
                    Permission&nbsp; Level</td>
                <td>
                    <asp:DropDownList ID="ddlPermLevel" runat="server" DataSourceID="EFSR_PM_LEVEL" 
                        DataTextField="NAME" DataValueField="PK_ID">
                    </asp:DropDownList>
                    <asp:EntityDataSource ID="EFSR_PM_LEVEL" runat="server" 
                        ConnectionString="name=Medappz2_LiveEntities" 
                        DefaultContainerName="Medappz2_LiveEntities" EnableFlattening="False" 
                        EntitySetName="L_SECU_PERMISSION_LEVEL" Select="it.[PK_ID], it.[NAME]">
                    </asp:EntityDataSource>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btnSave" runat="server" Text="Save" onclick="btnSave_Click" 
                     ValidationGroup="config"   Width="105px" />
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" onclick="CcancelSave" 
                    Width="105px" CausesValidation="false" />
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td colspan="3">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateDeleteButton="True" 
                        CellPadding="4" DataKeyNames="PK_ID" ForeColor="#333333" GridLines="None" 
                        onrowdeleting="GridView1_RowDeleting" AutoGenerateSelectButton="True" 
                        onselectedindexchanged="configSelected">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                </td>
            </tr>
        </table>
    
    </div>