<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageNotConnected.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 20px;
        }

        .auto-style2 {
            height: 340px;
            width: 1539px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div style="z-index:2;">
    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" Height="340px" OnCreatedUser="CreateUserWizard1_CreatedUser" Width="1390px">
        <WizardSteps>
            <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
                <ContentTemplate>

                    <tr  style="color:#f4f5f4; width:0px; float:left;">
                            <td >
                                 <asp:Label BackColor="#f4f5f4"  ID="RoleLabel" runat="server" AssociatedControlID="RoleList">User Role:</asp:Label>
                            </td>
                            <td style="color:#f4f5f4; border-block-color:#f4f4f4">
                                <asp:DropDownList  BackColor="#f4f5f4"  ForeColor="#f4f5f4" ID="RoleList" runat="server" Width="0px"></asp:DropDownList>
                            </td>
                        
                        </tr>
                    <table cellpadding="0" style="height: 340px; width: 1400px; margin-top: 30px; font-family: Arial;">
                        <tr>
                            <td align="center" style="font-size: 28px; color: #212529;">Please sign up<br />
                            </td>
                        </tr>
                        <caption>

                            <tr>

                                <td style="text-align: center;">

                                    <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName" Style="font-size: 16px; font-family: Arial; color: #212529;">User Name <span style="color:red;">*</span></asp:Label>
                                </td>
                                <tr>
                                    <td>
                                        <asp:TextBox ID="UserName" runat="server" Style="background: white; margin-left: 550px; border: 1px solid white; width: 300px; height: 38px; margin-top: 15px;"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: center;" class="auto-style1">
                                        <asp:Label ID="Label1" runat="server" AssociatedControlID="Password" Style="font-size: 16px; font-family: Arial; color: #212529;">Password <span style="color:red;">*</span></asp:Label>
                                    </td>
                                    <tr>
                                        <td>
                                            <asp:TextBox ID="Password" runat="server" Style="background: white; border: 1px solid white; width: 300px; height: 38px; margin-left: 550px; margin-top: 15px;" TextMode="Password"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: center;">
                                            <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword" Style="font-size: 16px; font-family: Arial; color: #212529;">Confirm Password <span style="color:red;">*</span></asp:Label>
                                        </td>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="ConfirmPassword" runat="server" Style="background: white; border: 1px solid white; width: 300px; height: 38px; margin-left: 550px; margin-top: 15px;" TextMode="Password"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" ControlToValidate="ConfirmPassword" ErrorMessage="Confirm Password is required." ToolTip="Confirm Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: center;">
                                                <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email" Style="font-size: 16px; font-family: Arial; color: #212529;">E-mail <span style="color:red;">*</span></asp:Label>
                                            </td>
                                            <tr>
                                                <td>
                                                    <asp:TextBox ID="Email" runat="server" Style="background: white; border: 1px solid white; width: 300px; height: 38px; margin-left: 550px; margin-top: 15px;"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email" ErrorMessage="E-mail is required." ToolTip="E-mail is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="text-align: center;">
                                                    <asp:Label ID="QuestionLabel" runat="server" AssociatedControlID="Question" Style="font-size: 16px; font-family: Arial; color: #212529;">Security Question <span style="color:red;">*</span></asp:Label>
                                                </td>
                                                <tr>
                                                    <td>
                                                        <asp:TextBox ID="Question" runat="server" Style="background: white; border: 1px solid white; width: 300px; height: 38px; margin-left: 550px; margin-top: 15px;"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="QuestionRequired" runat="server" ControlToValidate="Question" ErrorMessage="Security question is required." ToolTip="Security question is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align: center;">
                                                        <asp:Label ID="Label2" runat="server" AssociatedControlID="Answer" Style="font-size: 16px; font-family: Arial; color: #212529;">Security Answer:</asp:Label>
                                                    </td>
                                                    <tr>
                                                        <td>
                                                            <asp:TextBox ID="Answer" runat="server" Style="background: white; border: 1px solid white; width: 300px; height: 38px; margin-left: 550px; margin-top: 15px;"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="AnswerRequired" runat="server" ControlToValidate="Answer" ErrorMessage="Security answer is required." ToolTip="Security answer is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center">
                                                            <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" Display="Dynamic" ErrorMessage="The Password and Confirmation Password must match." ValidationGroup="CreateUserWizard1"></asp:CompareValidator>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center" style="color: Red;">
                                                            <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                                                        </td>
                                                    </tr>
                                                </tr>
                                            </tr>
                                        </tr>
                                    </tr>
                                </tr>
                            </tr>
                        </caption>

                        
                    </table>
                </ContentTemplate>
          </asp:CreateUserWizardStep>
            <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
                 <ContentTemplate>
                    <table style="font-size: 100%; " class="auto-style2">
                        
                        <tr style="margin-left:500px;">
                            <td style="font-family:Arial; font-size:28px; text-align:center;"> Your account have been created succesfully !</td>
                            
                        </tr>

                         <tr >
                            <td style="font-family:Arial; font-size:20px; text-align:center;">You will be redirected in 3 seconds</td>
                            
                        </tr>
                    </table>
                </ContentTemplate> 
            </asp:CompleteWizardStep>
        </WizardSteps> 
        <StartNavigationTemplate>
            <asp:Button BackColor="Yellow" runat="server" CommandName="MoveNext" Text="Suivant" ID="StartNextButton"></asp:Button>
        </StartNavigationTemplate>
    </asp:CreateUserWizard>

     

      <footer style="margin-top:0px;">
            <hr style="height: -15px" />
          <p>
          <img style="margin-top:0px; margin-left:150px;float:left; height: 59px; width: 68px;" src="images/imagesAutres/logo.png" />
                 <p style="font-size:12px;margin-left:200px; color:#6C757D; height: 35px; width:100px;">© 2021, Powered by our own skills</p>
              </p>
       
            <ul style="list-style-type:none; text-align:center; ">
                  <li style="margin-left:114px; font-size:20px; color:#212529; margin-top:-10px; height: 22px; width: 1033px;">About</li>
            </ul>

          
            
            <ul style="list-style-type:none; text-align:center; ">
                <li style="height: 18px; width: 593px; margin-left: 366px"><a href="contactPage.aspx" style="text-decoration:none; color:#6C757D; font-size:16px;">Contact</a></li>
                <li style="width: 599px; margin-left: 361px"><a href="CGU.aspx" style="text-decoration:none; color:#6C757D; font-size:16px;">CGU</a></li>
            </ul>

          
            
        </footer>

        </div>
</asp:Content>

