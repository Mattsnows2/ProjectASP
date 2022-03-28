<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageNotConnected.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   
  <asp:Login ID="Login1" runat="server" Height="340px"  >
        <LayoutTemplate>
            <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                <tr>
                    <td>
                        <table cellpadding="0" style="height:340px;width:1400px;">
                            <tr>
                                <td align="center" colspan="2" style="font-size:28px; color:#212529;">
                                    <br />
                                    <br />
                                    <br />
                                    Please sign in<br /> </td>
                            </tr>
                            <tr>
                                
                                <td >
                                    <asp:TextBox style="background:white; border:1px solid white; width:300px; height:46px; margin-left:550px;" ID="UserName" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                              
                                <td >
                                    <asp:TextBox style="background:white; border:1px solid white; width:300px; height:46px; margin-left:550px;" ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2">
                                    <asp:CheckBox ID="RememberMe" runat="server" Text="Remember me next time." />
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2" style="color:Red;">
                                    <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2">
                                    <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Sign In" ValidationGroup="Login1" style="  
                                        background-color: rgb(0,123,255);color: white;border:solid 2px rgb(0,123,255);border-radius: 10px; width:300px;height:48px; font-size:20px; font-family:Arial;" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
    </asp:Login>

 


      <footer style="margin-top:200px;">
            <hr style="height: -15px" />
          <p>
          <img style=" margin-left:150px;float:left; height: 84px; width: 92px;" src="images/imagesAutres/logo.png" />
              </p>
          <p style="font-size:12.8px; color:#6C757D;line-height:84px;">© 2021, Powered by our own skills</p>
            <a style="margin-left:715px; font-size:20px; color:#212529;">About</a>
            <ul style="list-style-type:none; text-align:center;">
                <li><a href="#" style="text-decoration:none; color:#6C757D; font-size:16px;">Contact</a></li>
                <li><a href="#" style="text-decoration:none; color:#6C757D; font-size:16px;">CGU</a></li>
            </ul>

        </footer>

    


</asp:Content>

