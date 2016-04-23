<%@ Page Title="Dashboard" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="UserHub.aspx.cs" Inherits="UserHub" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:Panel ID="clientdash" runat="server">
        <div class="jumbotron">
            <h1>Client Dashboard</h1>
            <p class="lead">All of your messages and submissions in one spot.</p>
                <div class="row">
                    <div class="col-md-3"><div class="glyphicon glyphicon-envelope"></div><a href="Inbox.aspx">&nbsp;Messages</a> </div>
                    <div class="col-md-3 col-md-offset-1"><div class="glyphicon glyphicon-plus"></div><a href="WebsiteRequest.aspx">&nbsp;Submit a new request</a></div>
                    <div class="col-md-3 col-md-offset-1"><div class="glyphicon glyphicon-list-alt"></div><a href="SubmissionStatus.aspx">&nbsp;My submission status </a></div>
                </div>
        </div>
    </asp:Panel>      
    <asp:Panel ID="devdash" runat="server">     
        <div class="jumbotron">
            <h1>Developer Dashboard</h1>
            <p class="lead">All of your messages, claimed jobs, and unclaimed jobs in one place.</p>
                <div class="row">
                    <div class="col-md-3"><div class="glyphicon glyphicon-envelope"></div> <a href="Inbox.aspx">&nbsp;Messages</a> </div>
                    <div class="col-md-3 col-md-offset-1"><div class="glyphicon glyphicon-list-alt"></div><a href="Unassigned Web Request Table.aspx">&nbsp;Unassigned Jobs</a></div>
                    <div class="col-md-3 col-md-offset-1"><div class="glyphicon glyphicon-list"></div><a href="Your Job Table.aspx">&nbsp;My jobs</a></div>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-4"><div class="glyphicon glyphicon-pencil"></div><a href="EditDevProfile.aspx">Edit Your Developer Profile</a></div>
                </div>
        </div>
    </asp:Panel>
    </asp:Content>

