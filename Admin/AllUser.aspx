<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="AllUser.aspx.cs" Inherits="Admin_AllUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

       <div id="header" >
                &nbsp;&nbsp;&nbsp;
                <h1 style="position:fixed; color:#FFFFFF; font-size:32px; font-family:Arial; margin-left:700px; padding-bottom:10px; top: 7px; left: 21px; width: 188px;">All Users</h1>
    </div>

    <div style="margin-left:350px; margin-top:100px;">
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Style="margin-left: 0px; background-color: #F0F0F0; font-size: 32px; border-radius:10px;" DataKeyNames="Id" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"  BorderColor="#F0F0F0" CellSpacing="30">
            <Columns>

                 <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id"></asp:BoundField>
              

                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="userName" HeaderText="userName" SortExpression="userName" />


              
              

               
                 <asp:TemplateField>
                    <ItemTemplate>
                    <asp:ImageButton ImageUrl="~/images/imagesAutres/deleteHouse.PNG" runat="server"  CausesValidation="false" CommandArgument='<%# Container.DataItemIndex %>'  
                    CommandName="Select"  OnClick="DeleteUser" BorderColor="Red" BackColor="#F0F0F0" ForeColor="#4CAF50" Height="70" Width="100"/>
                      
                    </ItemTemplate>
                </asp:TemplateField>
    
                
               
            </Columns> 
        
        
</asp:GridView>

        </div>



    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT [Id], [userName], [email] FROM [User]"></asp:SqlDataSource>
</asp:Content>

