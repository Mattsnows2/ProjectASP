<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/Connected/MasterPageConnected.master"CodeFile="Booking.aspx.cs" Inherits="Connected_Default" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   <!-- <div id="header" >
                &nbsp;&nbsp;&nbsp;
                <h1 style="position:fixed; color:#FFFFFF; font-size:32px; font-family:Arial; margin-left:700px; padding-bottom:10px; top: 7px; left: 21px; width: 188px;">Booking</h1>
    </div>

    <div id="house1" align="center" style="margin-top:50px; background-color:#9b9999; margin:8px; width:1300px; float:right">
    <label style="color:#212529; font-family:Arial; ">Adresse 1</label>
    <img src="../images/imagesAutres/nohouse_muted.png" Width="423px" Heigth="250px"/>

        <input id="Button1" type="button" value="👁️‍🗨️ See house details" style="width:150px; height:40px; background-color:#0e4c9f; color:white; font-size:16px; font-family:Arial; float:right; border: 1px solid #FFFFFF; border-radius:5px; margin-left: 34px;"/>&nbsp;

        <input id="Button2" type="button" value="🗑️ Delete booking" style="width:150px; height:38px; background-color:#ff0000; color:white; font-size:16px; font-family:Arial; float:right; border: 1px solid #FFFFFF; border-radius:5px; margin-left: 34px;"/></div>
    -->
    

    <div style="background-color:darkcyan; float:right" >
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Style="margin-left: 0px; background-color: grey; font-size: 32px;">
            <Columns>

                <asp:BoundField DataField="address"
                    HeaderText="address" SortExpression="address" />

                <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                <asp:BoundField DataField="house_type" HeaderText="Type" SortExpression="house_type" />


                <asp:BoundField HeaderText="exchange_date" DataField="exchange_date"></asp:BoundField>
                <asp:ButtonField Text="See house details"></asp:ButtonField>
                <asp:ButtonField Text="Delete booking"></asp:ButtonField>
            </Columns>

        </asp:GridView>
    </div>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [houses] WHERE ([booked_by] = @booked_by) ORDER BY [exchange_date]">
        <SelectParameters>
            <asp:SessionParameter SessionField="userName" DefaultValue="" Name="booked_by" Type="String"></asp:SessionParameter>
        </SelectParameters>
    </asp:SqlDataSource>
        

</asp:Content>
