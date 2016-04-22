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
                  <div class="pcw-wrap">
                    

                       <asp:GridView ID="grdUnassignedWebRequest" runat="server" 
                            AutoGenerateColumns="False" DataKeyNames="CategoryID" 
                            AllowPaging="True"
                            AllowSorting="True" CellPadding="4" ForeColor="Black" GridLines="None">
                                 <Columns>
                                    <asp:BoundField DataField="" HeaderText="First Name" ReadOnly="True" SortExpression="CategoryID"></asp:BoundField>                                
                                    <asp:BoundField DataField="" HeaderText="Last Name" SortExpression="ShortName"></asp:BoundField>                                   
                                    <asp:BoundField DataField="" HeaderText="Email" SortExpression="LongName" />
                                    <asp:BoundField DataField="" HeaderText="Phone" SortExpression="LongName" />
                                    <asp:BoundField DataField="" HeaderText="Address" SortExpression="LongName" />
                                    <asp:BoundField DataField="" HeaderText="City" SortExpression="LongName" />
                                    <asp:BoundField DataField="" HeaderText="State" SortExpression="LongName" />
                                    <asp:BoundField DataField="" HeaderText="Zip Code" SortExpression="LongName" />
                                    <asp:CommandField ButtonType="Button" CausesValidation="false" ShowEditButton="true"  />
                                    <asp:CommandField ButtonType="Button" CausesValidation="false" ShowDeleteButton="true" />
                                </Columns>
                            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <RowStyle BackColor="White" ForeColor="Black" />
                            <AlternatingRowStyle BackColor="#E3EAEB" ForeColor="Black" />
                            <PagerStyle BackColor="Gray" ForeColor="White" HorizontalAlign="Center" Font-Bold="True" />
                            <PagerSettings Mode="NumericFirstLast" />                        
                      </asp:GridView>


                  </div>
                </div> <!--- end of class panel --->
              </div> <!---- end of class "col-" --->
              </div> <!--- end of class "row" --->
            </div> <!--- end of container-fluid --->
        </div> <!-- /#page-content-wrapper -->
            </asp:Content>

