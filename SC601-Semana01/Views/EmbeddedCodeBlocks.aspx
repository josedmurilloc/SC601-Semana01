<%@ Page Title="" Language="C#" %>

<%@ Import Namespace="System.Data" %>

<%--MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EmbeddedCodeBlocks.aspx.cs" Inherits="SC601_Semana01.Views.EmbeddedCodeBlocks"--%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>EmbeddedCodeBlocks</title>

</head>
<script runat="server">
    string name = "Pedro Marmol";
    //Example 3
    protected string GetTime()
    {
        return DateTime.Now.ToShortTimeString();
    }
    //Example 4
    protected void Page_Load()
    {
        DataTable dt = new DataTable();
        dt.Columns.Add("Names", Type.GetType("System.String"));
        dt.Rows.Add();
        dt.Rows.Add(0)["Names"] = "Juan";
        dt.Rows.Add();
        dt.Rows.Add(1)["Names"] = "Maria";
        dt.Rows.Add();
        dt.Rows.Add(2)["Names"] = "Pedro";
        dt.AcceptChanges();
        Repeater1.DataSource = dt;
        Repeater1.DataBind();
    }
</script>
<body>
    <div>
        <% for (int i = 0; i < 5; i++)
            { %>
        <p>Hello World</p>

        <% }%>
    </div>

    <div>

        <p>Ejemplo 2 </p>

        <p>My name is <%=name %></p>
    </div>
    <div>

        <p>Ejemplo 3 </p>

        <p>The current time is  <%=GetTime() %></p>
    </div>
    <div>

        <p>Ejemplo 4 </p>

        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <p style="color: red"><%# Eval("Names") %></p>
            </ItemTemplate>
        </asp:Repeater>
    </div>

</body>
</html>

