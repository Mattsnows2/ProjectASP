<%@ Page Title="" Language="C#" MasterPageFile="~/Connected/MasterPageConnected.master" AutoEventWireup="true" CodeFile="CreateHouse.aspx.cs" Inherits="Connected_CreateHouse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div id="header">
        &nbsp;&nbsp;&nbsp;
               
        <h1 style="position: fixed; color: #FFFFFF; font-size: 32px; font-family: Arial; margin-left: 700px; padding-bottom: 10px; top: 7px; left: 21px; width: 188px;">New House</h1>
         <div style="float:right">
            <asp:ImageButton ImageUrl="~/images/imagesAutres/user.png" runat="server" Width="50px" OnClick="Unnamed1_Click" />
                </div>
    </div>

    <div id="form" style="margin-left: 200px; margin-top: 50px;">
        <label style="color: #212529; font-family: Arial;">Home Adress :</label>
        <br />

        <asp:TextBox ID="TextBox1" runat="server" Style="background: white; border: 1px solid white; width: 1100px; height: 38px; margin-bottom: 50px;"></asp:TextBox>

        <br />

        <asp:Label Style="color: #212529; font-family: Arial;" ID="timeLabel" runat="server">Type of your house :</asp:Label>
        <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>'
            SelectCommand="SELECT [label] FROM [House_type]"></asp:SqlDataSource>


        <asp:DropDownList ID="houseTypeDropDownList" runat="server" Width="120px"
            DataSourceID="SqlDataSource2" DataTextField="label" DataValueField="label" Style="background: white; border: 1px solid white; width: 1100px; height: 38px; margin-bottom: 50px;">
        </asp:DropDownList>





        <br />
        <label style="color: #212529; font-family: Arial;">Description :</label>
        <br />

        <asp:TextBox ID="TextBox3" runat="server" Style="height: 300px; width: 1100px; position: relative; border: 1px solid white;"></asp:TextBox>

    </div>


    <asp:Button ID="BookingButton" runat="server" Text="Next" Style="width: 100px; height: 40px; color: white; font-family: Arial; font-size: 18px; border-radius: 5px; background-color: #007BFF; border: 1px solid #007BFF; float: right" OnClick="BookingButton_Click" />
    <br />
    <br />


    <asp:Label ID="resultLabel" Style="float: left;" runat="server" Text=""></asp:Label>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>'
        SelectCommand="SELECT [UserId] FROM [vw_aspnet_MembershipUsers] WHERE ([UserName] = @UserName)">
        <SelectParameters>
            <asp:SessionParameter SessionField="userName" Name="UserName" Type="String"></asp:SessionParameter>
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:DropDownList ID="DropDownList1" Width="50px" runat="server" DataTextField="UserId" DataValueField="UserId" DataSourceID="SqlDataSource1" Style="float: left;"></asp:DropDownList>














</asp:Content>



