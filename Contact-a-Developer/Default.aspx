<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Contact-a-Developer</h1>
        <p class="lead">Bringing together people with the ideas for sites with those who can make them happen.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Submit a request &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-6">
            <h2>Log in</h2>
            <p>
                If you have a developer account, click here to log in.</p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301948">Log in &raquo;</a>
            </p>
        </div>
        <div class="col-md-6">
            <h2>Create a Developer Account</h2>
            <p>
                Register as a developer here.</p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301950">Register &raquo;</a>
            </p>
        </div>
    </div>
</asp:Content>
