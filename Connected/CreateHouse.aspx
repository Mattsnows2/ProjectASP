<%@ Page Title="" Language="C#" MasterPageFile="~/Connected/MasterPageConnected.master" AutoEventWireup="true" CodeFile="CreateHouse.aspx.cs" Inherits="Connected_CreateHouse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

      <div id="header" >
                &nbsp;&nbsp;&nbsp;
                <h1 style="position:fixed; color:#FFFFFF; font-size:32px; font-family:Arial; margin-left:700px; padding-bottom:10px; top: 7px; left: 21px; width: 188px;">New House</h1>
    </div>

    <div id="form" style="margin-left:200px;">
    <label style="color:#212529; font-family:Arial; ">Home Adress :</label>
        <br />
        
        <asp:TextBox ID="TextBox1" runat="server" style="background:white; border:1px solid white; width:900px; height:38px; margin-bottom:50px;"></asp:TextBox>
   
   <br />
    <label style="color:#212529; font-family:Arial; ">Type of your house :</label>
        <br />
      <asp:TextBox ID="TextBox2" runat="server" style="background:white; border:1px solid white; width:900px; height:38px; margin-bottom:50px;"></asp:TextBox>
        
        <br />
     <label style="color:#212529; font-family:Arial; ">Description :</label>s
        <br />
        
        <asp:TextBox ID="TextBox3" runat="server" style="height: 134px; width: 1100px; position:relative; border:1px solid white;"></asp:TextBox>

        </div>
    
   
    <asp:Button ID="BookingButton" runat="server" Text="Next" style="float:right;" onclick="BookingButton_Click" />
   <br /><br />

      
   <asp:Label ID="resultLabel" style="float:right;" runat="server" Text=""></asp:Label>

  

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT [address], [description], [exchange_date], [house_type] FROM [houses] WHERE ([description] NOT LIKE '%' + @description + '%')">

       
        <SelectParameters>
            <asp:SessionParameter SessionField="userName" Name="description" Type="String"></asp:SessionParameter>
        </SelectParameters>
    </asp:SqlDataSource>

 
  


        <asp:GridView style="float:right;" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
        <Columns>
            <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
            <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
            <asp:BoundField DataField="exchange_date" HeaderText="exchange_date" SortExpression="exchange_date" />
            <asp:BoundField DataField="house_type" HeaderText="house_type" SortExpression="house_type" />
        </Columns> 
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />


            </asp:GridView>



   
</asp:Content>



