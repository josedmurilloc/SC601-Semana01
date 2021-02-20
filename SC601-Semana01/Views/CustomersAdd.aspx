<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CustomersAdd.aspx.cs" Inherits="SC601_Semana01.Views.CustomersAdd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <h2><%: Title %>.</h2>
    <table border="1" style="border-collapse: collapse">
        <tr>
            <td style="width: 150px">Name:<br />
                <asp:TextBox ID="txtFirst_name" runat="server" Width="140" />
            </td>
            <td style="width: 150px">Last Name:<br />
                <asp:TextBox ID="txtLastName" runat="server" Width="140" />
            </td>
            <td style="width: 150px">Phone:<br />
                <asp:TextBox ID="txtPhone" runat="server" Width="140" />
            </td>
            <td style="width: 150px">Email:<br />
                <asp:TextBox ID="txtEmail" runat="server" Width="140" />
            </td>
            <td style="width: 150px">Street:<br />
                <asp:TextBox ID="txtStreet" runat="server" Width="140" />
            </td>
            <td style="width: 150px">City:<br />
                <asp:TextBox ID="txtCity" runat="server" Width="140" />
            </td>
            <td style="width: 150px">State:<br />
                <asp:TextBox ID="txtState" runat="server" Width="140" />
            </td>
            <td style="width: 150px">Zip Code:<br />
                <asp:TextBox ID="txtZipCode" runat="server" Width="140" />
            </td>
         
        </tr>
    </table>
       <div class="md-5">
        <asp:Button runat="server" ID="btnAdd" Text="Add" CssClass="YourButtonStyle" OnClick="btnAdd_Click" />
    </div>

</asp:Content>
