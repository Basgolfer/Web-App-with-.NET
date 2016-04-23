<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<script runat="server">
    void OnLoggedIn(object sender, EventArgs e)
    {
        Response.Redirect("~/UserHub");
    }
</script>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <%
        Session["UserID"] = HttpContext.Current.User.Identity.GetUserId();
    %>
    <div class="jumbotron">
        <h1>Contact-a-Developer</h1>
        <p class="lead">Bringing together people with the ideas for sites with those who can make them happen.</p>
        <p class="lead">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [__MigrationHistory]"></asp:SqlDataSource>
        </p>
    </div>

    <div class="row">
        <div class="col-md-6">
            <h2>Log in</h2>
            <p>
                If you have an account, click here to log in.
            </p>
            <p>
                <a class="btn btn-default" href="/Account/Login.aspx">Log in &raquo;</a>
            </p>
        </div>
        <div class="col-md-6">
            <h2>Create an Account</h2>
            <p>
                Register as a developer or client here.
            </p>
            <p>
                <a class="btn btn-default" href="/Account/Register.aspx">Register &raquo;</a>
            </p>
        </div>
    </div>
</asp:Content>
