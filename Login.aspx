<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageNotConnected.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <asp:Login ID="Login1" runat="server" Height="340px" BackColor="#EFF3FB" BorderColor="#B5C7DE" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333">
        <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
        <LayoutTemplate>
            <table cellpadding="1" cellspacing="0" style="border-collapse: collapse;">
                <tr>
                    <td>
                        <table cellpadding="0" style="height: 340px; width: 1550px;">
                            <tr>
                                <td align="center" colspan="2" style="font-size: 28px; color: #212529;">
                                    <br />
                                    <br />
                                    <br />
                                    Please sign in<br />
                                </td>
                            </tr>
                            <tr>

                                <td>
                                    <asp:TextBox Style="background: white; border: 1px solid white; width: 300px; height: 46px; margin-left: 625px;" ID="UserName" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>

                                <td>
                                    <asp:TextBox Style="background: white; border: 1px solid white; width: 300px; height: 46px; margin-left: 625px;" ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2">
                                    <asp:CheckBox ID="RememberMe" runat="server" Text="Remember me next time." />
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2" style="color: Red;">
                                    <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2">
                                    <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Sign In" ValidationGroup="Login1" Style="background-color: rgb(0,123,255); color: white; border: solid 2px rgb(0,123,255); border-radius: 10px; width: 300px; height: 48px; font-size: 20px; font-family: Arial;"
                                        OnClick="LoginButton_Click" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <LoginButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" />
        <TextBoxStyle Font-Size="0.8em" />
        <TitleTextStyle BackColor="#507CD1" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
    </asp:Login>




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
            <li style="height: 18px; width: 593px; margin-left: 366px"><a href="contactPage.aspx" style="text-decoration: none; color: #6C757D; font-size: 16px;">Contact</a></li>
            <li style="width: 599px; margin-left: 361px"><a href="CGU.aspx" style="text-decoration: none; color: #6C757D; font-size: 16px;">CGU</a></li>
        </ul>



    </footer>




</asp:Content>

