<%@ Page Title="" Language="C#" MasterPageFile="~/Connected/MasterPageConnected.master" AutoEventWireup="true" CodeFile="Profil.aspx.cs" Inherits="Connected_Profil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 866px;
        }
        .auto-style3 {
            width: 866px;
            margin-left: 120px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

      <div id="header" >
                <h1 style="position:absolute; color:white; font-family:Arial; margin-left:750px;"  >Profil</h1> 
            <div style="float:right">
            <asp:ImageButton ImageUrl="~/images/imagesAutres/user.png" runat="server" Width="50px" OnClick="Unnamed1_Click" />
                </div>
          <asp:ChangePassword ID="ChangePassword1" runat="server">
              <ChangePasswordTemplate>
                  <table cellspacing="0" cellpadding="1" style="border-collapse: collapse; margin-top:100px;">
                      <tr>
                          <td>
                              <table cellpadding="0">
                                  <tr>
                                      <td align="center" colspan="2" style="font-family:Arial; font-size:28px;">Modifier votre mot de passe</td>
                                  </tr>
                                  <tr>
                                      <td align="center;" style="margin-top:80px;">
                                          <asp:Label runat="server" AssociatedControlID="CurrentPassword" ID="CurrentPasswordLabel" Style="font-size: 16px; font-family: Arial; color: #212529; margin-left:250px;">Mot de passe :</asp:Label></td>
                                      <td class="auto-style1">
                                          <asp:TextBox runat="server" TextMode="Password" ID="CurrentPassword"  Style="background: white; margin-left: 350px; border: 1px solid white; width: 300px; height: 38px; margin-top: 15px;"></asp:TextBox>
                                          <asp:RequiredFieldValidator runat="server" ControlToValidate="CurrentPassword" ErrorMessage="Un mot de passe est requis." ValidationGroup="ChangePassword1" ToolTip="Un mot de passe est requis." ID="CurrentPasswordRequired">*</asp:RequiredFieldValidator>
                                      </td>
                                  </tr>
                                  <tr>
                                      <td style="text-align: center;">
                                          <asp:Label runat="server" AssociatedControlID="NewPassword" ID="NewPasswordLabel" Style="font-size: 16px; font-family: Arial; color: #212529; margin-left:160px;">Nouveau mot de passe :</asp:Label></td>
                                      <td class="auto-style1">
                                          <asp:TextBox runat="server" TextMode="Password" ID="NewPassword"  Style="background: white; margin-left: 350px; border: 1px solid white; width: 300px; height: 38px; margin-top: 15px;"></asp:TextBox>
                                          <asp:RequiredFieldValidator runat="server" ControlToValidate="NewPassword" ErrorMessage="Un nouveau mot de passe est requis." ValidationGroup="ChangePassword1" ToolTip="Un nouveau mot de passe est requis." ID="NewPasswordRequired">*</asp:RequiredFieldValidator>
                                      </td>
                                  </tr>
                                  <tr>
                                      <td style="text-align: center;">
                                          <asp:Label runat="server" AssociatedControlID="ConfirmNewPassword" ID="ConfirmNewPasswordLabel" Style="font-size: 16px; font-family: Arial; color: #212529; margin-left:250px;">Confirmer le nouveau mot de passe :</asp:Label></td>
                                      <td class="auto-style1">
                                          <asp:TextBox runat="server" TextMode="Password" ID="ConfirmNewPassword"  Style="background: white; margin-left: 350px; border: 1px solid white; width: 300px; height: 38px; margin-top: 15px;"></asp:TextBox>
                                          <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmNewPassword" ErrorMessage="La confirmation du nouveau mot de passe est requise." ValidationGroup="ChangePassword1" ToolTip="La confirmation du nouveau mot de passe est requise." ID="ConfirmNewPasswordRequired">*</asp:RequiredFieldValidator>
                                      </td>
                                  </tr>
                                  <tr>
                                      <td align="center" colspan="2">
                                          <asp:CompareValidator runat="server" ControlToCompare="NewPassword" ControlToValidate="ConfirmNewPassword" ErrorMessage="La valeur de Confirmer le nouveau mot de passe doit correspondre &#224; l&#39;entr&#233;e Nouveau mot de passe." Display="Dynamic" ValidationGroup="ChangePassword1" ID="NewPasswordCompare"></asp:CompareValidator>
                                      </td>
                                  </tr>
                                  <tr>
                                      <td align="center" colspan="2" style="color: Red;">
                                          <asp:Literal runat="server" ID="FailureText" EnableViewState="False"></asp:Literal>
                                      </td>
                                  </tr>
                                  <tr style="margin-top:50px;">
                                      <td align="right">
                                          <asp:Button runat="server" CommandName="ChangePassword" Text="Modifier le mot de passe" ValidationGroup="ChangePassword1" ID="ChangePasswordPushButton" Style="background-color: rgb(0,123,255); color: white; border: solid 2px rgb(0,123,255); border-radius: 10px; width: 300px; height: 48px; font-size: 20px; font-family: Arial; margin-left:50px;"></asp:Button>
                                      </td>
                                      <td class="auto-style3">
                                          <asp:Button runat="server" CausesValidation="False" CommandName="Cancel" Text="Annuler" ID="CancelPushButton" Style="background-color: rgb(201,27,27); color: white; border: solid 2px rgb(210,27,27); border-radius: 10px; width: 300px; height: 48px; font-size: 20px; font-family: Arial; margin-left:450px;"></asp:Button>
                                      </td>
                                  </tr>
                              </table>
                          </td>
                      </tr>
                  </table>
              </ChangePasswordTemplate>
          </asp:ChangePassword>
    </div>
</asp:Content>

