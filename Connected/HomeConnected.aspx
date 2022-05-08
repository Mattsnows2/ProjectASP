<%@ Page Title="" Language="C#" MasterPageFile="~/Connected/MasterPageConnected.master" AutoEventWireup="true" CodeFile="HomeConnected.aspx.cs" Inherits="Connected_HomeConnected" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        
        <div id="header" >
                <h1 style="position:absolute; color:white; font-family:Arial; margin-left:750px;" >Dashboard</h1>
             <div style="float:right">
            <asp:ImageButton ImageUrl="~/images/imagesAutres/user.png" runat="server" Width="50px" OnClick="Unnamed1_Click" />
                </div>
    </div>

      <div  style="background-color:#F0F0F0; margin-left:300px; margin-top:100px; font-family:Arial">
              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Style="margin-left: 0px; background-color: #F0F0F0; font-size: 32px; border-radius:10px;" DataKeyNames="Id" onselectedindexchanged="GridView1_SelectedIndexChanged" BorderColor="#F0F0F0" CellSpacing="30">
            <Columns>

                 <asp:TemplateField>
                    <ItemTemplate>
                        <image src="../images/1.jpg" style="width:200px;"></image>
                    </ItemTemplate>
                </asp:TemplateField>
              

                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />


              
                <asp:BoundField DataField="house_type" HeaderText="house type" SortExpression="house_type"></asp:BoundField>

                 
          
               
               
                
                <asp:TemplateField>
                    <ItemTemplate>
                    <asp:ImageButton ImageUrl="~/images/imagesAutres/flecheVerte.PNG" runat="server" Text="Book house" CausesValidation="false" CommandArgument='<%# Container.DataItemIndex %>'  
                    CommandName="Select"  OnClick="bookHouse" BorderColor="Red" BackColor="#F0F0F0" ForeColor="#4CAF50" Height="70" Width="80"/>
                      
                    </ItemTemplate>
                </asp:TemplateField>

              

               

               
            </Columns> 
        
        
</asp:GridView>

    

    </div>

    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>'
        SelectCommand="SELECT * FROM [houses] WHERE (([user_owner] != @user_owner) AND ([booked_by] IS NULL))">
        <SelectParameters>
            <asp:SessionParameter SessionField="userName" Name="user_owner" Type="String"></asp:SessionParameter>
        </SelectParameters>
    </asp:SqlDataSource>

      <asp:DropDownList ID="houseTypeDropDownList" runat="server" 
       DataSourceID="SqlDataSource1" DataTextField="user_owner" DataValueField="user_owner" style="background:white; border:1px solid white; margin-bottom:50px;">
   </asp:DropDownList>

  
    <%      if (chooseDate == true)
        {  %>

            <p style="font-family:Arial; font-size:20px; margin-left:250px;">Can choose a start date and end date</p>
<%  } %>  

      
    <%      if (displayMessageBookingGood == true)
        {  %>

            <div style="background-color:#0c7a2e; width:300px; height:50px; float:right; margin-top:-200px; z-index:-4;">
            <p style="font-family:Arial; font-size:20px; color:white; text-align:center;">Booked</p>

                </div>
<%  } %>  
    
      

        <div style="margin-left:250px;">

      
        <p style="font-family:Arial; font-size:20px;">Start Date: 
            <asp:Label ID="bookingDate" runat="server"></asp:Label>
         </p>

         
  
    
            <asp:Calendar ID="Calendar1" runat="server" SelectionMode="DayWeekMonth" OnSelectionChanged="Calendar1_SelectionChanged" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
                <DayHeaderStyle Font-Bold="True" Font-Size="8pt"></DayHeaderStyle>

                <NextPrevStyle VerticalAlign="Bottom" Font-Bold="True" Font-Size="8pt" ForeColor="#333333"></NextPrevStyle>

                <OtherMonthDayStyle ForeColor="#999999"></OtherMonthDayStyle>

                <SelectedDayStyle BackColor="#333399" ForeColor="White"></SelectedDayStyle>

                <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399"></TitleStyle>

                <TodayDayStyle BackColor="#CCCCCC"></TodayDayStyle>
            </asp:Calendar>

       
       
           
  

     <div style="margin-top:-255px; margin-left:700px;">
           <p style="font-family:Arial; font-size:20px;">End date: 
            <asp:Label ID="bookingDate2" runat="server"></asp:Label>
         </p>
         <asp:Calendar ID="Calendar2" runat="server" SelectionMode="DayWeekMonth" OnSelectionChanged="Calendar2_SelectionChanged" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
             <DayHeaderStyle Font-Bold="True" Font-Size="8pt"></DayHeaderStyle>

             <NextPrevStyle VerticalAlign="Bottom" Font-Bold="True" Font-Size="8pt" ForeColor="#333333"></NextPrevStyle>

             <OtherMonthDayStyle ForeColor="#999999"></OtherMonthDayStyle>

             <SelectedDayStyle BackColor="#333399" ForeColor="White"></SelectedDayStyle>

             <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399"></TitleStyle>

             <TodayDayStyle BackColor="#CCCCCC"></TodayDayStyle>
         </asp:Calendar>
        </div>

            </div>

    <asp:Button runat="server" Text="Book date dans house"/>

      

</asp:Content>

