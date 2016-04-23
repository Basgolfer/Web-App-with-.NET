<%@ Page Title="Your Requests" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="SubmissionStatus.aspx.cs" Inherits="SubmissionStatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
            <br />
            <div id="page-content-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                      <div class="panel panel-default">
            <div class="panel-heading">
                <label>Your Submissions</label>
                <div class="row">
                  <div class="col-sm-offset-4 col-md-offset-6 col-lg-offset-7">
                    <div class="input-group">
                      <span class="input-group-btn">

                      </span>
                    </div><!-- /input-group -->
                  </div><!-- /.col-lg-6 -->
                </div>
            </div>
        <div class ="row">   
            <div class="col-md-6">
            <div class="pcw-wrap">
                     
                <asp:GridView ID="grdYourJobTable" runat="server" 
                            AutoGenerateColumns="False" 
                            AllowPaging="True"
                            AllowSorting="True"  CellPadding="4" ForeColor="Black" DataSourceID="SqlDataSource1" DataKeyNames="ID" OnSelectedIndexChanged="grdYourJobTable_SelectedIndexChanged">
                            <Columns>
                                <asp:BoundField DataField="JobName" HeaderText="Job Name" SortExpression="JobName" />
                                <asp:BoundField DataField="FirstName" HeaderText="Associated Developer" SortExpression="FirstName" />
                                <asp:BoundField DataField="MobileFriendly" HeaderText="Mobile Friendly" SortExpression="MobileFriendly" />
                                <asp:BoundField DataField="Anumation" HeaderText="Animation" SortExpression="Anumation" />
                                <asp:BoundField DataField="DynamicWebPages" HeaderText="Dynamic Web Pages" SortExpression="DynamicWebPages" />
                                <asp:CommandField ShowSelectButton="True" />
                            </Columns>
                            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <RowStyle BackColor="White" ForeColor="Black" />
                            <AlternatingRowStyle BackColor="#E3EAEB" ForeColor="Black" />
                            <PagerStyle BackColor="Gray" ForeColor="White" HorizontalAlign="Center" Font-Bold="True" />
                            <PagerSettings Mode="NumericFirstLast" />                        
                      </asp:GridView>
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [WebRequest].[ID], [JobName], [MobileFriendly], [Anumation], [DynamicWebPages], [FirstName] FROM [WebRequest] INNER JOIN [AspNetUsers] ON [WebRequest].[DevID] = [AspNetUsers].[Id]  WHERE ([ClientID] = @ClientID)" OnSelecting="SqlDataSource1_Selecting">
                           <SelectParameters>
                                <asp:SessionParameter Name="ClientID" SessionField="UserID" Type="String" />
                           </SelectParameters>
                      </asp:SqlDataSource>
                      <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Description], [OtherWebsites] FROM [WebRequest] WHERE (WebRequest.[ID] = @ID)">
                          <SelectParameters>
                              <asp:ControlParameter ControlID="grdYourJobTable" Name="ID" PropertyName="SelectedValue" Type="Int32" />
                          </SelectParameters>
                      </asp:SqlDataSource>
                      </div>
                      </div>
                      <div class="col-md-4 col-md-offset-2">
                      <div class="pcw-wrap">
                      <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="SqlDataSource2" Height="50px" Width="125px">
                          <Fields>
                              <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" HeaderStyle-BackColor="#1C5E55" HeaderStyle-Font-Bold="True" HeaderStyle-ForeColor="White"/>
                              <asp:BoundField DataField="OtherWebsites" HeaderText="Other Websites" SortExpression="OtherWebsites" HeaderStyle-BackColor="#1C5E55" HeaderStyle-Font-Bold="True" HeaderStyle-ForeColor="White"/>
                          </Fields>
                      </asp:DetailsView>
                      <br />
                  </div>
                  </div>
                  </div>
                </div>
                </div> <!--- end of class panel --->
              </div> <!---- end of class "col-" --->
              </div> <!--- end of class "row" --->
            </div> <!--- end of container-fluid --->
</asp:Content>

