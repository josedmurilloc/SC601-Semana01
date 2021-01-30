<%@ Page Title="Clients " Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Clients.aspx.cs" Inherits="SC601_Semana01.Views.Clients" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <div class="mx-auto">
        <asp:GridView ID="grvClients" runat="server" AutoGenerateColumns="false" AllowPaging="true" CssClass="table table-responsive table-striped table-hover"
            OnPageIndexChanging="OnPageIndexChanging" PageSize="10">
            <Columns>
                <asp:BoundField ItemStyle-Width="150px" DataField="ClientId" HeaderText="Customer ID" />
                <asp:BoundField ItemStyle-Width="150px" DataField="Name" HeaderText="Contact Name" />
                <asp:BoundField ItemStyle-Width="150px" DataField="LastName" HeaderText="City" />
                <asp:BoundField ItemStyle-Width="150px" DataField="Email" HeaderText="Country" />
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
