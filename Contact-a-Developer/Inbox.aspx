<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Inbox.aspx.cs" Inherits="Inbox" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <%
    Session["UserID"] = HttpContext.Current.User.Identity.GetUserId();        
    %>
    
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataSourceID="SqlDataSource1" DataKeyNames="MessageID">
        <Fields>
            <asp:BoundField DataField="MessageID" HeaderText="MessageID" SortExpression="MessageID" ReadOnly="True" />
            <asp:BoundField DataField="Sender" HeaderText="Sender" SortExpression="Sender" />
            <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="Message" HeaderText="Message" SortExpression="Message" />
            <asp:BoundField DataField="IsRead" HeaderText="IsRead" SortExpression="IsRead" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [MessageID], [Sender], [Time], [Title], [Message], [IsRead] FROM [Messages] WHERE ([Recipient] = @Recipient)">
        <SelectParameters>
            <asp:SessionParameter Name="Recipient" SessionField="UserID" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

