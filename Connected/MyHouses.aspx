<%@ Page Title="" Language="C#" MasterPageFile="~/Connected/MasterPageConnected.master" AutoEventWireup="true" CodeFile="MyHouses.aspx.cs" Inherits="Connected_MyHouses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div id="header">

    </div>

    <div style="margin-right:20px;">
    <input id="Button1" type="button" value="+ Add new house" style="width:150px; height:38px; background-color:#28A745; color:white; font-size:16px; font-family:Arial; float:right; border: 1px solid #28A745; border-radius:5px;"/>

    <div  align="center" style="margin-top:70px;">
        
    <img src="../images/imagesAutres/nohouse_muted.png" Width="423px" Heigth="250px"/>
    </div>

        
    <h2 style="color:#6C757D; font-size:32px; font-family:Arial; margin-left:180px; text-align:center;">You haven't added any houses yet, they will appear here when you start adding them.</h2>

    </div>
    
    <%# MyHouses(false) %>

    <div style="background-color:#F0F0F0;">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
        <Columns>
            <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
            <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
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

    </div>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [houses] WHERE ([booked_by] = @booked_by)">
        <SelectParameters>
            <asp:SessionParameter SessionField="userName" Name="booked_by" Type="String"></asp:SessionParameter>
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>