<%@ Page Title="" Language="C#" MasterPageFile="~/Connected/MasterPageConnected.master" AutoEventWireup="true" CodeFile="myBookings.aspx.cs" Inherits="myBookings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

       <div id="header" >
                <h1 style="position:absolute; color:white; font-family:Arial; margin-left:750px;"  >My bookings</h1>
    </div>

      <div  style="background-color:#F0F0F0; margin-left:250px; margin-top:150px; font-family:Arial">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Style="margin-left: 0px; background-color: #F0F0F0; font-size: 24px; border-radius:10px; text-align:center;" DataKeyNames="Id"  BorderColor="#F0F0F0" CellSpacing="30" onselectedindexchanged="GridView1_SelectedIndexChanged">
            <Columns>
                
                    <asp:TemplateField>

                    <ItemTemplate>
                        <image src="../images/1.jpg" style="width:200px;"></image>
                    </ItemTemplate>
                </asp:TemplateField>
              
                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address"></asp:BoundField>
                <asp:BoundField DataField="description" HeaderText="description" SortExpression="description"></asp:BoundField>
                <asp:BoundField DataField="exchange_date" HeaderText="exchange_date" SortExpression="exchange_date"></asp:BoundField>
                
                <asp:BoundField DataField="house_type" HeaderText="house_type" SortExpression="house_type"></asp:BoundField>


                
              



                <asp:BoundField DataField="user_owner" HeaderText="user_owner" SortExpression="user_owner"></asp:BoundField>
                 <asp:TemplateField>
                    <ItemTemplate>
                    <asp:ImageButton ImageUrl="~/images/imagesAutres/delete.PNG" runat="server" Text="Book house" CausesValidation="false" CommandArgument='<%# Container.DataItemIndex %>'  
                    CommandName="Select"  OnClick="DeleteBooking" BorderColor="Red" BackColor="#F0F0F0" ForeColor="#4CAF50" Height="70" Width="80"/>
                      
                    </ItemTemplate>
                </asp:TemplateField>
               
            </Columns> 
        
        
</asp:GridView>

    

    </div>

    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>'
        SelectCommand="SELECT * FROM [houses] WHERE ([booked_by] = @booked_by)">
        <SelectParameters>
            <asp:SessionParameter SessionField="userName" Name="booked_by" Type="String"></asp:SessionParameter>
        </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>

