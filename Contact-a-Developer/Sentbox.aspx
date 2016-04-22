<%@ Page Title="Sent Messages" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Sentbox.aspx.cs" Inherits="Sentbox" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <% Session["UserID"] = HttpContext.Current.User.Identity.GetUserId(); %>
    <h1>Sent Messages</h1>
    <div class="row">
        <div class="col-md-2"><div class="glyphicon glyphicon-inbox"></div><a href="Inbox.aspx"> &nbsp;Inbox</a>
            <br /><div class="glyphicon glyphicon-upload"></div><a href="Sentbox.aspx"> &nbsp;Sent Messages</a></div>
        <div class="col-md-10">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="MessageID" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="MessageID" HeaderText="MessageID" SortExpression="MessageID" ReadOnly="True" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="Message" HeaderText="Message" SortExpression="Message" />
            <asp:BoundField DataField="IsRead" HeaderText="IsRead" SortExpression="IsRead" />
            <asp:CommandField ShowSelectButton="True" />
        </Columns>
    </asp:GridView>
        </div>
    </div>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT Messages.MessageID, AspNetUsers.FirstName, Messages.Time, Messages.Title, Messages.Message, Messages.IsRead FROM Messages INNER JOIN AspNetUsers ON Messages.Sender = AspNetUsers.Id WHERE (Messages.Sender = @Sender)">
        <SelectParameters>
            <asp:SessionParameter Name="Sender" SessionField="UserID" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

