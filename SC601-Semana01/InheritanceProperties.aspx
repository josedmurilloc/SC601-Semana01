<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="InheritanceProperties.aspx.cs" Inherits="SC601_Semana01.Views.InheritanceProperties" %>

<%@ Register Src="~/Properties1.ascx"  TagPrefix="uc" TagName="Properties1" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head><title></title></head>
<body>
    <div style="color: aqua">
        <h4>InheritanceProperties</h4>

        <table>
            <tr>
                <td>Name</td>
                <td>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Last Name</td>
                <td>
                    <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
                </td>
            </tr>
        </table>
        <br>
        <uc:Properties1 ID="propertiesControl" runat="server" />
    </div>
</body>
</html>
