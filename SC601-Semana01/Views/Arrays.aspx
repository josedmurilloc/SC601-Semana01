<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Arrays.aspx.cs" Inherits="SC601_Semana01.Views.Arrays" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2><%: Title %>.</h2>
    <div class="form-group row">
        <label for="txtArray" class="col-sm-2 col-form-label">Array</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" runat="server" id="txtArray" placeholder="Array">
        </div>
    </div>
     <div class="form-group row">
        <div class="col-sm-10">
            <asp:Button Text="Invertir Array" runat="server" ID="btnArray"
                Font-Bold="true" ForeColor="Green" Height="45" Width="150"
                OnClick="btnArray_Click"/>
        </div>
    </div>
    <div>
        <asp:Label ID="message" runat="server" Font-Size="Medium" ForeColor="red" />
    </div>
</asp:Content>
