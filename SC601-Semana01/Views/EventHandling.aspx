<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EventHandling.aspx.cs" Inherits="SC601_Semana01.Views.EventHandling" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="lblMessage" runat="server">


    </asp:Label>
    <asp:Button Text="Click" ID="btnClick" runat="server" OnClick="btnClick_Click" />
</asp:Content>
