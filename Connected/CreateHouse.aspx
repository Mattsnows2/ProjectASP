<%@ Page Title="" Language="VB" MasterPageFile="~/Connected/MasterPageConnected.master" AutoEventWireup="false" CodeFile="CreateHouse.aspx.vb" Inherits="Connected_CreateHouse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div id="header" >
                &nbsp;&nbsp;&nbsp;
                <h1 style="position:fixed; color:#FFFFFF; font-size:32px; font-family:Arial; margin-left:700px;">New House</h1>
    </div>

    <div id="form" style="margin-left:200px;">
    <label style="color:#212529; font-family:Arial; ">Home Adress :</label>
        <br />
    <input id="Text1" type="text" style="background:white; border:1px solid white; width:900px; height:38px; margin-bottom:50px;" />
   <br />
    <label style="color:#212529; font-family:Arial; ">Type of your house :</label>
        <br />
    <input id="Text2" type="text" style="background:white; border:1px solid white; width:900px; height:38px; margin-bottom:50px;" />
        
        <br />
     <label style="color:#212529; font-family:Arial; ">Description :</label>
        <br />
        <textarea style="height: 134px; width: 1100px; position:relative;"></textarea>

        </div>

    <button style="background-color:#007BFF; border:1px solid #007BFF; border-radius:5px; width:80px; height:48px; float:right; color:white; font-size:20px; font-family:Arial;margin-right:100px;">Next</button>

</asp:Content>

