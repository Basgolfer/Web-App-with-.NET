<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ViewMessage.aspx.cs" Inherits="ViewMessage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div>
        <h1>View Message</h1>
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="MessageID" DataSourceID="SqlDataSource1">
            <Fields>
                <asp:BoundField DataField="MessageID" HeaderText="MessageID" ReadOnly="True" SortExpression="MessageID" />
                <asp:BoundField DataField="Recipient" HeaderText="Recipient" SortExpression="Recipient" />
                <asp:BoundField DataField="Sender" HeaderText="Sender" SortExpression="Sender" />
                <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                <asp:BoundField DataField="Message" HeaderText="Message" SortExpression="Message" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>"
             SelectCommand="    SELECT [MessageID], rec.Email AS Recipient, send.Email AS Sender, [Time], [Title], [Message] 
                                FROM [Messages] 
                                INNER JOIN  [AspNetUsers] as rec
                                   ON rec.Id = Messages.Recipient
                                INNER JOIN  [AspNetUsers] as send  
                                   ON send.Id = Messages.Sender
                                WHERE ([MessageID] = @MessageID)">
            <SelectParameters>
                <asp:SessionParameter Name="MessageID" SessionField="MessageIDSession" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

