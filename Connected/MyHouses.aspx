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

    <div  style="background-color:#F0F0F0; float:right;">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" style="margin-left: 0px; background-color:grey; font-size:32px;">
        <Columns>
                
            <asp:BoundField DataField="address" 
                HeaderText="address" SortExpression="address" />
            
            <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
            <asp:BoundField DataField="house_type" HeaderText="Type" SortExpression="house_type" />
           
           
        </Columns> 
        
</asp:GridView>

    

    </div>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [houses] WHERE ([booked_by] = @booked_by)">
        <SelectParameters>
            <asp:SessionParameter SessionField="userName" Name="booked_by" Type="String"></asp:SessionParameter>
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>