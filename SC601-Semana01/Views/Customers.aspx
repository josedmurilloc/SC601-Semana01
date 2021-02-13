<%@ Page Title="List of Customers" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Customers.aspx.cs" Inherits="SC601_Semana01.Views.Customers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>

    <asp:Button runat="server" ID="btnAdd" Text="Add" OnClick="btnAdd_Click" />

    <div id="panel" style="height: 1000px; background-color: antiquewhite; padding: 10px; overflow: auto">
        <asp:GridView ID="grvClientes" runat="server" AutoGenerateColumns="false" DataKeyNames="customer_id"
            CssClass="table-responsive"
            AllowPaging="true"
            OnRowDataBound="grvClientes_RowDataBound"
            OnRowEditing="grvClientes_RowEditing"
            OnRowCancelingEdit="grvClientes_RowCancelingEdit"
            OnRowUpdating="grvClientes_RowUpdating"
            OnRowDeleting="grvClientes_RowDeleting"
            OnPageIndexChanging="grvClientes_PageIndexChanging"
            PageSize="30"
            ForeColor="Black"
            EmptyDataText="No records has been added."
            AllowSorting="true"
            BackColor="#CCFFFF"
            BorderColor="#3333CC"
            BorderStyle="Groove">
            <Columns>
                <asp:TemplateField HeaderText="Customer ID" ItemStyle-Width="150">
                    <ItemTemplate>
                        <asp:Label ID="lblCustomer_id" runat="server" Text='<%#Eval("customer_id") %>' />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtCustomer_id" runat="server" Text='<%#Eval("customer_id") %>' />
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="First Name" ItemStyle-Width="150">
                    <ItemTemplate>
                        <asp:Label ID="lblfirst_name" runat="server" Text='<%# Eval("first_name") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtfirst_name" runat="server" Text='<%# Eval("first_name") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>


                <asp:TemplateField HeaderText="Last Name" ItemStyle-Width="150">
                    <ItemTemplate>
                        <asp:Label ID="lbllast_name" runat="server" Text='<%# Eval("last_name") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtlast_name" runat="server" Text='<%# Eval("last_name") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>


                <asp:TemplateField HeaderText="Phone" ItemStyle-Width="150">
                    <ItemTemplate>
                        <asp:Label ID="lblphone" runat="server" Text='<%# Eval("phone") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtphone" runat="server" Text='<%# Eval("phone") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Email" ItemStyle-Width="150">
                    <ItemTemplate>
                        <asp:Label ID="lblemail" runat="server" Text='<%# Eval("email") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtemail" runat="server" Text='<%# Eval("email") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>


                <asp:TemplateField HeaderText="Street" ItemStyle-Width="150">
                    <ItemTemplate>
                        <asp:Label ID="lblstreet" runat="server" Text='<%# Eval("street") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtstreet" runat="server" Text='<%# Eval("street") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>


                <asp:TemplateField HeaderText="City" ItemStyle-Width="150">
                    <ItemTemplate>
                        <asp:Label ID="lblcity" runat="server" Text='<%# Eval("city") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtcity" runat="server" Text='<%# Eval("city") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="State" ItemStyle-Width="150">
                    <ItemTemplate>
                        <asp:Label ID="lblstate" runat="server" Text='<%# Eval("state") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtstate" runat="server" Text='<%# Eval("state") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Zip_code" ItemStyle-Width="150">
                    <ItemTemplate>
                        <asp:Label ID="lblzip_code" runat="server" Text='<%# Eval("zip_code") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtzip_code" runat="server" Text='<%# Eval("zip_code") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

                <asp:CommandField ButtonType="Link" ShowEditButton="true" ShowDeleteButton="true" ItemStyle-Width="150" />
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
