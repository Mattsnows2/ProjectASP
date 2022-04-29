
<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageNotConnected.master" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .featurette-divider {
            height: -12px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">

        <ContentTemplate>
            
         <asp:Timer ID="Timer1" runat="server" Interval="4000" OnTick="Timer1_Tick"></asp:Timer>

            <div id="divEnvironment" runat="server" visible="true">
                <asp:Image ID="Image1" style="width:100%;" Height="512px" runat="server" />
            </div>


        </ContentTemplate>
    </asp:UpdatePanel>

    <div style="margin-top: 50px">

        <div style="float: left; margin: 0px; width: 33.33%;">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <img src="images/imagesAutres/fleche.PNG" style="height: 148px; width: 196px" />
            <h2 class="subText">An exchange</h2>
            <p align="center" style="font-family:Arial">Exchange your property with someone else's for a period of time and enjoy the fresh air.</p>
        </div>


        <div style="float: left; margin: 0px; width: 33.33%;">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                  
              <img src="images/imagesAutres/dashboardBlanc.PNG" style="height: 148px; width: 196px" />
            <h2 class="subText">Services and constraints</h2>
            <p align="center" style="font-family:Arial">Add services and constraints during the exchange such as taking care of your pet at home</p>
        </div>



        <div style="float: left; margin: 0px; width: 33.33%;">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <img src="images/imagesAutres/dollard.PNG" style="height: 148px; width: 196px" />
            <h2 style="text-align: center;" class="subText">It's free!</h2>


            <p style="font-family:Arial">The exchange is free! You only pay for what you need to live, like food.</p>

            <br />

        </div>
    </div>



    <div class="row featurette" style="margin-top: 400px; margin-bottom: 200px;">
        <div class="col-md-7">
        </div>
        <div class="col-md-5">
            <img class="image" src="images/imagesAutres/unusual_house.jpg" style="float: right; margin-right: 150px;" width="500" height="300">
        </div>
        <div style="margin-left: 150px;">
            <h2 class="title">&nbsp;</h2>
            <h2 class="title">Any type of house available. </h2>
            <h2 class="title"><span class="text-muted">And unusual places</span></h2>
            <p class="description">Discover unusual places and let people discover your own place!</p>
        </div>

    </div>
    <hr />

    <div class="row featurette" style="margin-bottom: 600px;">
        <div class="col-md-7 order-md-2">
        </div>
        <div class="col-md-5 order-md-1">
            <img class="image" src="images/imagesAutres/peaceful.jpg" style="float: left; margin-left: 150px;" width="450" height="400">
        </div>



        <div style="float: right; margin-right: 150px;">
            <h2 class="featurette-heading">&nbsp;</h2>
            <h2 class="featurette-heading">&nbsp;</h2>
            <h2 class="title">Free yourself from expenses</h2>
              
              <h2 class="title"><span class="text-muted">Go on vacation with a clear head</span></h2>

                <p class="description">Home Exchanger does not accept any payment method because it is completly free!.</p>
        </div>
    </div>

    <hr />

    <div class="row featurette">
        <div class="col-md-7">
        </div>
        <div class="col-md-5 order-md-1">
            <img class="image" src="images/imagesAutres/dog.jpg" style="float: right; margin-right: 150px;" width="450" height="450">
        </div>

        <div style="float: left; height: 252px; width: 520px; margin-left: 150px;">
            <h2 class="title">&nbsp;</h2>
            <h2 class="title">&nbsp;</h2>
            <h2 class="title">You cannot travel with your pets ?<br>
                <span>Someone will take care of them for you at home! </span></h2>
            <p class="description">&nbsp;</p>
            <p class="description">&nbsp;</p>
            <p class="description">&nbsp;</p>
            <p class="description">&nbsp;</p>
            <p class="description">Home Exchanger allows you to exchange housings and services. </p>
        </div>

        &nbsp;<div class="col-md-5">
        </div>
    </div>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
     <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
     <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />

    <br />

    <footer style="margin-top: 200px;">
        <hr style="height: -15px" />
        <p>
            <img style="margin-top: 0px; margin-left: 150px; float: left; height: 59px; width: 68px;" src="images/imagesAutres/logo.png" />
            <p style="font-size: 12px; margin-left: 200px; color: #6C757D; height: 35px; width: 100px;">© 2021, Powered by our own skills</p>
        </p>

        <ul style="list-style-type: none; text-align: center;">
            <li style="margin-left: 114px; font-size: 20px; color: #212529; margin-top: -10px; height: 22px; width: 1033px;">About</li>
        </ul>



        <ul style="list-style-type: none; text-align: center;">
            <li style="height: 18px; width: 593px; margin-left: 366px">
                <a href="contactPage.aspx" style="text-decoration: none; color: #6C757D; font-size: 16px;">Contact</a>
            </li>
            <li style="width: 599px; margin-left: 361px">
                <a href="CGU.aspx" style="text-decoration: none; color: #6C757D; font-size: 16px;">CGU</a>
            </li>
        </ul>



    </footer>





    </asp:Content>

