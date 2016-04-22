<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeFile="Unassigned Web Request Table.aspx.cs" Inherits="Unassigned_Web_Request_Table" %>

    

        <asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

            <br />
            <div id="page-content-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                          <label> Choose Table</label>
            <select onchange="changePage(this.value)" class="form-control">
                <option value="Unassigned Web Request Table.aspx"> Unassigned Web Request Table</option>
                <option value="Your Job Table.aspx"> Your Job Table</option>
            </select>
                        <br />
                      <div class="panel panel-default">
            <div class="panel-heading">
                <label>Unassigned Web Request Table</label>
                <div class="row">
                  <div class="col-sm-offset-4 col-md-offset-6 col-lg-offset-7">
                    <div class="input-group">
                      <span class="input-group-btn">

                      </span>
                    </div><!-- /input-group -->
                  </div><!-- /.col-lg-6 -->
                </div>
            </div>
                  <div class="row">
                  <div class="col-md-6">
                  <div class="pcw-wrap">
                    

                       <asp:GridView ID="grdUnassignedWebRequest" runat="server" 
                            AutoGenerateColumns="False" 
                            AllowPaging="True"
                            AllowSorting="True" CellPadding="4" ForeColor="Black" DataSourceID="SqlDataSource1" DataKeyNames="ID">
                                 <Columns>
                                    <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID"></asp:BoundField> 
                                    <asp:BoundField DataField="JobName" HeaderText="JobName" SortExpression="JobName"></asp:BoundField>                                
                                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName"></asp:BoundField>                                   
                                    <asp:BoundField DataField="MobileFriendly" HeaderText="MobileFriendly" SortExpression="MobileFriendly" />
                                    <asp:BoundField DataField="Anumation" HeaderText="Anumation" SortExpression="Anumation" />
                                    <asp:BoundField DataField="DynamicWebPages" HeaderText="DynamicWebPages" SortExpression="DynamicWebPages" />
                                     <asp:CommandField ShowSelectButton="True" />
                                </Columns>
                            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <RowStyle BackColor="White" ForeColor="Black" />
                            <AlternatingRowStyle BackColor="#E3EAEB" ForeColor="Black" />
                            <PagerStyle BackColor="Gray" ForeColor="White" HorizontalAlign="Center" Font-Bold="True" />
                            <PagerSettings Mode="NumericFirstLast" />                        
                      </asp:GridView>


                       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [WebRequest].[ID], [JobName], [FirstName], [MobileFriendly], [Anumation], [DynamicWebPages] FROM [WebRequest] INNER JOIN [AspNetUsers] ON [WebRequest].[ClientID] = [AspNetUsers].[Id]  WHERE ([DevID] IS NULL)">
                           
                       </asp:SqlDataSource>

                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Description], [OtherWebsites] FROM [WebRequest] WHERE (WebRequest.[ID] = @ID)" 
                                                                                                                                            UpdateCommand="UPDATE [WebRequest] SET [DevID] = @DeveloperID WHERE [ID] = @ID">
                           <UpdateParameters>
                               <asp:SessionParameter Name="DeveloperID" SessionField="UserID" Type="String" />
                               <asp:ControlParameter ControlID="grdUnassignedWebRequest" Name="ID" PropertyName="SelectedValue" Type="Int32" /> 
                           </UpdateParameters> 
                          <SelectParameters>
                              <asp:ControlParameter ControlID="grdUnassignedWebRequest" Name="ID" PropertyName="SelectedValue" Type="Int32" />                      
                          </SelectParameters>
                            
                      </asp:SqlDataSource>
                      </div>
                      </div>
                      <div class="col-md-4 col-md-offset-2">
                      <div class="pcw-wrap">
                      <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="SqlDataSource2" Height="50px" Width="125px">
                          <Fields>
                              <asp:BoundField DataField="Description" ReadOnly="true" HeaderText="Description" SortExpression="Description" HeaderStyle-BackColor="#1C5E55" HeaderStyle-Font-Bold="True" HeaderStyle-ForeColor="White">
<HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White"></HeaderStyle>
                              </asp:BoundField>
                              <asp:BoundField DataField="OtherWebsites" ReadOnly="true" HeaderText="Other Websites" SortExpression="OtherWebsites" HeaderStyle-BackColor="#1C5E55" HeaderStyle-Font-Bold="True" HeaderStyle-ForeColor="White">
<HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White"></HeaderStyle>
                              </asp:BoundField>
                              <asp:CommandField HeaderText="Select Job" ShowEditButton="True" ShowHeader="True" />
                             
                          </Fields>
                      </asp:DetailsView>
                          </div>
                          </div>
                          </div>

                  </div>
                </div> <!--- end of class panel --->
              </div> <!---- end of class "col-" --->
              </div> <!--- end of class "row" --->
            </div> <!--- end of container-fluid --->
        </div> <!-- /#page-content-wrapper -->
            </asp:Content>

