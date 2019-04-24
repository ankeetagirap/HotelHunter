﻿<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="HotelList.aspx.cs" Inherits="HotelRecommendation.HotelList" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .blankstar
        {
            background-image: url(images/Star.gif);
            height: 17px;
            width: 17px;
        }
        .halfstar
        {
           background-image: url(images/WaitingStar.gif);
           height: 17px;
           width: 17px;
        }
        .shiningstar
        {
           background-image: url(images/FilledStar.gif);
           height: 17px;
           width: 17px;
        }
        
        
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    
    <div class="container-fluid">
		<div class="row"> 
			<div class="col-md-3">
		
		<div class="well sidebar-nav">
            <asp:DataList ID="CityList" runat="server" RepeatDirection="Vertical">
                <ItemTemplate>
                    <div class="well container-fluid">
                        <a href="HotelList.aspx?CityId=<%# DataBinder.Eval(Container.DataItem, "CityId") %>"><%#Eval("CityName") %></a>
                    </div>

                </ItemTemplate>

            </asp:DataList>
			</div>
		</div>

            

		
	<div class="col-md-9">
		
		<div class="row">
		<div class="col-lg-12">
            
            <asp:DataList ID="HotelInfo" runat="server" RepeatDirection="Vertical">
                
                <ItemTemplate>
                   <div class="well container-fluid"> 
                       <div class="text-center">
                       <h2><%# DataBinder.Eval(Container.DataItem, "HotelName") %><br /></h2>
                           <%--<asp:Label ID="HotelId" runat="server" Text="<%#Eval("Id") %>"></asp:Label>--%>
                           <b>Id:<%#Eval("Id") %></b>
                           </div> 
                       <div class="col-sm-4">
                            
                            <br /><asp:Image ID="image1" runat="server" height="260" width="300" ImageUrl='<%#Eval("ImagePath") %>' />
                        </div>
                         <div class="col-sm-4">
                             <br /><b>Hotel Address: </b><%#Eval("HotelAddress") %><br />
                             <b>Phone No: </b><%#Eval("PhoneNo") %><br />
                             <b>Email: </b><%#Eval("HotelEmailId") %><br />
                             <br /><a style="color:blue;" href ="details.aspx?Id=<%# DataBinder.Eval(Container.DataItem, "Id") %>"><b>Rate</b></a>
                        </div>
                       
                         <div class="col-sm-4">
                             
                             <asp:Image ID="starimage" runat="server" ImageUrl="~/images/FilledStar.gif" />
                             <asp:Label ID="lblAverage" runat="server"></asp:Label>
                        </div>
                    
                  </div>
                </ItemTemplate>

               
            </asp:DataList>
                
                
			
</div>		
            </div></div>






  </div>	

</div>
	
</asp:Content>
