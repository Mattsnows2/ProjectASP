<%@ Page Title="" Language="VB" MasterPageFile="~/Connected/MasterPageConnected.master" AutoEventWireup="false" CodeFile="MyHouse.aspx.vb" Inherits="Connected_MyHouse" %>

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
</asp:Content>

