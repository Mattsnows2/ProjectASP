<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageNotConnected.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" Height="340px" OnCreatedUser="CreateUserWizard1_CreatedUser" >
        <WizardSteps>
            <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
                <ContentTemplate>
                  <table cellpadding="0" style="height:340px;width:1400px; margin-top:30px; font-family:Arial;">
                        <tr>
                            <td  align="center" style="font-size:28px; color:#212529;">Please sign up<br /> </td>
                        </tr>
                        <caption>
                       
                            <tr>
                             
                                <td style="text-align:center; ">
                                     
                                    <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName" style="font-size:16px; font-family:Arial; color:#212529;">User Name <span style="color:red;">*</span></asp:Label>
                                </td>
                                <tr>
                                    <td>
                                        <asp:TextBox ID="UserName" runat="server" style="background: white; margin-left: 550px; border: 1px solid white; width: 300px; height: 38px; margin-top:15px;"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align:center;">
                                        <asp:Label ID="Label1" runat="server" AssociatedControlID="Password" style="font-size:16px; font-family:Arial; color:#212529;">Password <span style="color:red;">*</span></asp:Label>
                                    </td>
                                    <tr>
                                        <td>
                                            <asp:TextBox ID="Password" runat="server" style="background: white; border: 1px solid white; width: 300px; height: 38px; margin-left: 550px; margin-top:15px;" TextMode="Password"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align:center;">
                                            <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword" style="font-size:16px; font-family:Arial; color:#212529;">Confirm Password <span style="color:red;">*</span></asp:Label>
                                        </td>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="ConfirmPassword" runat="server" style="background: white; border: 1px solid white; width: 300px; height: 38px; margin-left: 550px; margin-top:15px;" TextMode="Password"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" ControlToValidate="ConfirmPassword" ErrorMessage="Confirm Password is required." ToolTip="Confirm Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center;">
                                                <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email" style="font-size:16px; font-family:Arial; color:#212529;">E-mail <span style="color:red;">*</span></asp:Label>
                                            </td>
                                            <tr>
                                                <td>
                                                    <asp:TextBox ID="Email" runat="server" style="background: white; border: 1px solid white; width: 300px; height: 38px; margin-left: 550px; margin-top:15px;"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email" ErrorMessage="E-mail is required." ToolTip="E-mail is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="text-align:center;">
                                                    <asp:Label ID="QuestionLabel" runat="server" AssociatedControlID="Question" style="font-size:16px; font-family:Arial; color:#212529;">Security Question <span style="color:red;">*</span></asp:Label>
                                                </td>
                                                <tr>
                                                    <td>
                                                        <asp:TextBox ID="Question" runat="server" style="background: white; border: 1px solid white; width: 300px; height: 38px; margin-left: 550px; margin-top:15px;"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="QuestionRequired" runat="server" ControlToValidate="Question" ErrorMessage="Security question is required." ToolTip="Security question is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align:center;">
                                                        <asp:Label ID="Label2" runat="server" AssociatedControlID="Answer" style="font-size:16px; font-family:Arial; color:#212529;">Security Answer:</asp:Label>
                                                    </td>
                                                    <tr>
                                                        <td>
                                                            <asp:TextBox ID="Answer" runat="server" style="background: white; border: 1px solid white; width: 300px; height: 38px; margin-left: 550px; margin-top:15px;"></asp:TextBox>
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
            <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server" >
            </asp:CompleteWizardStep>
        </WizardSteps>
    </asp:CreateUserWizard>
</asp:Content>

