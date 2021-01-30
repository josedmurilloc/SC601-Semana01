<%@ Page Title="Person" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Person.aspx.cs" Inherits="SC601_Semana01.Views.Person" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <div class="form-group row">
        <label for="txtEmail" class="col-sm-2 col-form-label">Email</label>
        <div class="col-sm-10">
            <input type="email" class="form-control" id="txtEmail" placeholder="Email">
        </div>
    </div>
    <div class="form-group row">
        <label for="txtPrimerNombre" class="col-sm-2 col-form-label">Primer Nombre</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="txtPrimerNombre" runat="server" placeholder="Primer Nombre">
        </div>
    </div>
    <div class="form-group row">
        <label for="txtApellido1" class="col-sm-2 col-form-label">Primer Apellido</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="txtApellido1" runat="server" placeholder="Primer Apellido">
        </div>
    </div>
    <div class="form-group row">
        <label for="txtPhone" class="col-sm-2 col-form-label">Numero de Telefono</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="txtPhone" runat="server" placeholder="Numero de Telefono">
        </div>
    </div>
    <div class="form-group row">
        <label for="txtDireccion" class="col-sm-2 col-form-label">Direccion</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="txtDireccion" runat="server" placeholder="Direccion">
        </div>
    </div>
    <div class="form-group row">
        <label for="txtProvincias" class="col-sm-2 col-form-label">Provincias</label>
        <div class="col-sm-10">
            <select runat="server" class="form-control" id="ssoProvincias">
                <option selected>Choose your option....</option>
                <option value="Alajuela">Alajuela</option>
                <option value="San Jose">San Jose</option>

            </select>
        </div>
    </div>
    <div class="form-group row">
        <div class="col-sm-10">
            <asp:Button Text="Guardar" runat="server" ID="BtnSave"
                Font-Bold="true" ForeColor="Green" Height="45" Width="150"
                OnClick="BtnSave_Click"/>
        </div>
    </div>
    <div>
        <asp:Label ID="message" runat="server" Font-Size="Medium" ForeColor="red" />

    </div>
</asp:Content>
