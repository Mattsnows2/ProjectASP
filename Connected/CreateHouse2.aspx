<%@ Page Title="" Language="C#" MasterPageFile="~/Connected/MasterPageConnected.master" AutoEventWireup="true" CodeFile="CreateHouse2.aspx.cs" Inherits="Connected_CreateHouse2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

      <div id="header" >
                &nbsp;&nbsp;&nbsp;
                <h1 style="position:fixed; color:#FFFFFF; font-size:32px; font-family:Arial; margin-left:700px; padding-bottom:10px; top: 7px; left: 21px; width: 188px;">New House</h1>
           <div style="float:right">
            <asp:ImageButton ImageUrl="~/images/imagesAutres/user.png" runat="server" Width="50px" OnClick="Unnamed1_Click" />
                </div>s
    </div>

     <div id="form" style="margin-left:200px; margin-top:50px;">
    <label style="color:#212529; font-family:Arial; ">Contraints :</label>
        <br />

       

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>'
        SelectCommand="SELECT [Label] FROM [Contraints]"></asp:SqlDataSource>

    <asp:Label style="float:right"  ID="timeLabel" runat="server" ></asp:Label>
    <asp:DropDownList ID="timeDropDownList" runat="server" Width="120px" 
       DataSourceID="SqlDataSource2" DataTextField="Label" DataValueField="Label" style="background:white; border:1px solid white; width:1100px; height:38px; margin-bottom:50px;">
   </asp:DropDownList>

          <br />
    <label style="color:#212529; font-family:Arial; ">Pictures :</label>
        <br />

         <div style="border:1px solid black; width:1100px; height:400px;">
        <asp:FileUpload ID="FileImageSave" runat="server" />  
             <asp:Button ID="Button1" style="margin-top:200px; margin-left:500px; background-color:#f4f5f9; border: 1px solid #f4f5f9;" runat="server" Text="Put your house pictures here (3max)" onclick="browse"  />
             </div>
         <asp:Button ID="Button2"  style="width:100px; height:40px; color:white; font-family:Arial; font-size:18px; border-radius:5px; background-color:#28A745; border: 1px solid #28A745; float :right" runat="server" Text="Finish" onclick="createHouse"  />
        
         </div>

      
        
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>'
        SelectCommand="SELECT [Id] FROM [houses] WHERE [Id] = (select max(Id) from [houses])">
        
    </asp:SqlDataSource>
    

  <asp:DropDownList ID="DropDownList1" runat="server" DataTextField="Id" DataValueField="Id" DataSourceID="SqlDataSource1" style="float:left;"></asp:DropDownList>


    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>'
        SelectCommand="SELECT [UserId] FROM [vw_aspnet_MembershipUsers] WHERE ([UserName] = @UserName)">
        <SelectParameters>
            <asp:SessionParameter SessionField="userName" Name="UserName" Type="String"></asp:SessionParameter>
        </SelectParameters>
    </asp:SqlDataSource>

     <asp:DropDownList ID="DropDownList2"  runat="server" Width="60px" DataTextField="UserId" DataValueField="UserId" DataSourceID="SqlDataSource3" style="float:left;"></asp:DropDownList>
  

    <%      if (displayMessage == true)
        {  %>
    <div style="background-color:green; width:300px; height:50px; margin-left:1120px; margin-top:-400px;">
        <p style="font-family:Arial; color:white; font-size:20px; margin-top:15px; text-align:center;">House created</p>
    </div>

    <% }  %>
   
</asp:Content>

