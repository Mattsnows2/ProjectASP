<%@ Page Title="" Language="C#" MasterPageFile="~/Connected/MasterPageConnected.master" AutoEventWireup="true" CodeFile="MyHouses.aspx.cs" Inherits="Connected_MyHouses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

  

        <div id="header" >
                <h1 style="position:absolute; color:white; font-family:Arial; margin-left:750px;"  >My house</h1> 
            <div style="float:right">
            <asp:ImageButton ImageUrl="~/images/imagesAutres/user.png" runat="server" Width="50px" OnClick="Unnamed1_Click" />
                </div>
    </div>

    <div style="margin-right:20px;">
    <a href="CreateHouse.aspx"><input id="Button1" type="button" value="+ Add new house" style="width:150px; height:38px; background-color:#28A745; color:white; font-size:16px; font-family:Arial; float:right; border: 1px solid #28A745; border-radius:5px;"/></a>

  
          <% if (displayHouse==true)
              { %>
          <div  align="center" style="margin-top:70px;">
        
    <img src="../images/imagesAutres/nohouse_muted.png" Width="423px" Heigth="250px"/>
    </div>

        
    <h2 style="color:#6C757D; font-size:32px; font-family:Arial; margin-left:180px; text-align:center;">You haven't added any houses yet, they will appear here when you start adding them.</h2>

        <%} %>

  

    </div>

  

    
 
    <div  style="background-color:#F0F0F0; margin-left:350px; margin-top:200px;">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Style="margin-left: 0px; background-color: #F0F0F0; font-size: 32px; border-radius: 10px;" DataKeyNames="Id" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775"></AlternatingRowStyle>
            <Columns>

                <asp:BoundField DataField="Id"
                    HeaderText="Id" SortExpression="Id" InsertVisible="False" ReadOnly="True" />

                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />



                <asp:BoundField DataField="house_type" HeaderText="house_type" SortExpression="house_type"></asp:BoundField>


                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:ImageButton ImageUrl="~/images/imagesAutres/EYE.PNG" runat="server" CausesValidation="false" CommandArgument='<%# Container.DataItemIndex %>'
                            CommandName="Select" OnClick="ViewHouse" BorderColor="Red" BackColor="#F0F0F0" ForeColor="#4CAF50" Height="70" Width="100" />

                    </ItemTemplate>
                </asp:TemplateField>



                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:ImageButton ImageUrl="~/images/imagesAutres/deleteHouse.PNG" runat="server" CausesValidation="false" CommandArgument='<%# Container.DataItemIndex %>'
                            CommandName="Select" OnClick="DeleteHouse" BorderColor="Red" BackColor="#F0F0F0" ForeColor="#4CAF50" Height="70" Width="100" />

                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>


            <EditRowStyle BackColor="#999999"></EditRowStyle>

            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></FooterStyle>

            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></HeaderStyle>

            <PagerStyle HorizontalAlign="Center" BackColor="#284775" ForeColor="White"></PagerStyle>

            <RowStyle BackColor="#F7F6F3" ForeColor="#333333"></RowStyle>

            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>

            <SortedAscendingCellStyle BackColor="#E9E7E2"></SortedAscendingCellStyle>

            <SortedAscendingHeaderStyle BackColor="#506C8C"></SortedAscendingHeaderStyle>

            <SortedDescendingCellStyle BackColor="#FFFDF8"></SortedDescendingCellStyle>

            <SortedDescendingHeaderStyle BackColor="#6F8DAE"></SortedDescendingHeaderStyle>
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