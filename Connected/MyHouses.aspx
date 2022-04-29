<%@ Page Title="" Language="C#" MasterPageFile="~/Connected/MasterPageConnected.master" AutoEventWireup="true" CodeFile="MyHouses.aspx.cs" Inherits="Connected_MyHouses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

  

    <div id="header">

    </div>

    <div style="margin-right:20px;">
    <a href="CreateHouse.aspx"><input id="Button1" type="button" value="+ Add new house" style="width:150px; height:38px; background-color:#28A745; color:white; font-size:16px; font-family:Arial; float:right; border: 1px solid #28A745; border-radius:5px;"/></a>

  
    <div  align="center" style="margin-top:70px;">
        
    <img src="../images/imagesAutres/nohouse_muted.png" Width="423px" Heigth="250px"/>
    </div>

        
    <h2 style="color:#6C757D; font-size:32px; font-family:Arial; margin-left:180px; text-align:center;">You haven't added any houses yet, they will appear here when you start adding them.</h2>

    </div>

  

    
    <%# MyHouses(false) %>

    <div  style="background-color:#F0F0F0; margin-left:350px;">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Style="margin-left: 0px; background-color: #F0F0F0; font-size: 32px; border-radius:10px;" DataKeyNames="Id" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BorderColor="#F0F0F0" CellSpacing="30">
            <Columns>

                <asp:BoundField DataField="Id"
                    HeaderText="Id" SortExpression="Id" InsertVisible="False" ReadOnly="True"/>

                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />


              
                <asp:BoundField DataField="house_type" HeaderText="house_type" SortExpression="house_type"></asp:BoundField>

                 
          
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:DropDownList ID="DropDownList2" runat="server" DataTextField="Id" DataValueField="Id" DataSourceID="SqlDataSource1" style="float:right;"></asp:DropDownList>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField>
                    <ItemTemplate>
                    <asp:ImageButton ImageUrl="~/images/imagesAutres/EYE.PNG" runat="server"  CausesValidation="false" CommandArgument='<%# Container.DataItemIndex %>'  
                    CommandName="Select"  OnClick="ViewHouse" BorderColor="Red" BackColor="#F0F0F0" ForeColor="#4CAF50" Height="70" Width="100"/>
                      
                    </ItemTemplate>
                </asp:TemplateField>

                 

                  <asp:TemplateField>
                    <ItemTemplate>
                    <asp:ImageButton ImageUrl="~/images/imagesAutres/deleteHouse.PNG" runat="server"  CausesValidation="false" CommandArgument='<%# Container.DataItemIndex %>'  
                    CommandName="Select"  OnClick="DeleteHouse" BorderColor="Red" BackColor="#F0F0F0" ForeColor="#4CAF50" Height="70" Width="100"/>
                      
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns> 
        
        
</asp:GridView>

    

    </div>

    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>'
        SelectCommand="SELECT * FROM [houses] WHERE ([user_owner] = @user_owner)">
        <SelectParameters>
            <asp:SessionParameter SessionField="userName" Name="user_owner" Type="String"></asp:SessionParameter>
        </SelectParameters>
    </asp:SqlDataSource>

      <% if(showDetails) { %>

        
     <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Style="margin-left: 0px; background-color: #F0F0F0; font-size: 32px; border-radius:10px;" DataKeyNames="Id" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BorderColor="#F0F0F0" CellSpacing="30">
            <Columns>
                
                <asp:BoundField DataField="Id"
                    HeaderText="Id" SortExpression="Id" InsertVisible="False" ReadOnly="True"/>

                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />


              
                <asp:BoundField DataField="house_type" HeaderText="house_type" SortExpression="house_type"></asp:BoundField>

                 
          
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:DropDownList ID="DropDownList2" runat="server" DataTextField="Id" DataValueField="Id" DataSourceID="SqlDataSource1" style="float:right;"></asp:DropDownList>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField>
                    <ItemTemplate>
                    <asp:ImageButton ImageUrl="~/images/imagesAutres/EYE.PNG" runat="server"  CausesValidation="false" CommandArgument='<%# Container.DataItemIndex %>'  
                    CommandName="Select"  OnClick="ViewHouse" BorderColor="Red" BackColor="#F0F0F0" ForeColor="#4CAF50" Height="70" Width="100"/>
                      
                    </ItemTemplate>
                </asp:TemplateField>

                 

                  <asp:TemplateField>
                    <ItemTemplate>
                    <asp:ImageButton ImageUrl="~/images/imagesAutres/deleteHouse.PNG" runat="server"  CausesValidation="false" CommandArgument='<%# Container.DataItemIndex %>'  
                    CommandName="Select"  OnClick="DeleteHouse" BorderColor="Red" BackColor="#F0F0F0" ForeColor="#4CAF50" Height="70" Width="100"/>
                      
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns> 
        
        
</asp:GridView>

   
       
<% } %>


    
    

     
</asp:Content>