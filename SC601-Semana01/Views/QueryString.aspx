<%@ Page Title="QueryString Example" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="QueryString.aspx.cs" Inherits="SC601_Semana01.Views.QueryString" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>

    <div class="form-group row">
        <label for="txtUsuario" class="col-sm-2 col-form-label">Usuario :</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" runat="server" id="txtUsuario" placeholder="Usuario">
        </div>
    </div>
    <div class="form-group row">
        <label for="txtPassword" class="col-sm-2 col-form-label">Password :</label>
        <div class="col-sm-10">
            <input type="password" class="form-control" id="txtPassword" runat="server" placeholder="Contraseña">
        </div>
    </div>
    <div class="form-group row">
        <div class="col-sm-10">
            <asp:Button Text="Guardar" runat="server" ID="btnSave"
                Font-Bold="true" ForeColor="Green" Height="45" Width="150"
                OnClick="btnSave_Click" />
        </div>
    </div>
</asp:Content>
