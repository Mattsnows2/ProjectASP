<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="AllHouse.aspx.cs" Inherits="Admin_AllHouse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div id="header" >
                &nbsp;&nbsp;&nbsp;
                <h1 style="position:fixed; color:#FFFFFF; font-size:32px; font-family:Arial; margin-left:700px; padding-bottom:10px; top: 7px; left: 21px; width: 188px;">All Houses</h1>
    </div>

    <div style="margin-left:350px; margin-top:100px;">
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Style="margin-left: 0px; background-color: #F0F0F0; font-size: 32px; border-radius:10px;" DataKeyNames="Id" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"  BorderColor="#F0F0F0" CellSpacing="30">
            <Columns>

                 <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id"></asp:BoundField>
              

                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />


              
                <asp:BoundField DataField="house_type" HeaderText="house type" SortExpression="house_type"></asp:BoundField>

               
                 <asp:TemplateField>
                    <ItemTemplate>
                    <asp:ImageButton ImageUrl="~/images/imagesAutres/deleteHouse.PNG" runat="server"  CausesValidation="false" CommandArgument='<%# Container.DataItemIndex %>'  
                    CommandName="Select"  OnClick="DeleteHouse" BorderColor="Red" BackColor="#F0F0F0" ForeColor="#4CAF50" Height="70" Width="100"/>
                      
                    </ItemTemplate>
                </asp:TemplateField>
                 
          
               
               
                
               

              

                
               
            </Columns> 
        
        
</asp:GridView>

        </div>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [houses]"></asp:SqlDataSource>
</asp:Content>

