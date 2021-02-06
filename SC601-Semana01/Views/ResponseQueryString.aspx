<%@ Page Title="Response QueryString" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ResponseQueryString.aspx.cs" Inherits="SC601_Semana01.Views.ResponseQueryString" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <h3>Example Response QueryString</h3>
    <asp:Label ID="lblQuery" runat="server" CssClass="col-sm-2 col-form-label"></asp:Label>
</asp:Content>
