<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="HotelList.aspx.cs" Inherits="HotelRecommendation.HotelList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="container-fluid">
		<div class="row"> 
			<div class="col-md-3">
		
		<div class="well sidebar-nav">
            <ul class="nav nav-list">
              <li class="nav-header">Cities</li>
              <li><a href="#">Pune</a></li>
              <li><a href="#">Mumbai</a></li>
              <li><a href="#">Kolhapur</a></li>
              <li><a href="#">Nagpur</a></li>
              <li><a href="#">Sangli</a></li>
              <li><a href="#">Nagpur</a></li>
            </ul>
			</div>
		</div>
		
	<div class="col-md-9">
		
		<div class="row">
		<div class="col-lg-7">
            <asp:DataList ID="HotelInfo" runat="server" RepeatDirection="Vertical">
                <ItemTemplate>
                    <div class="well">
                    <table>
                        <tr class="text-center">
                                <td><h2><%# DataBinder.Eval(Container.DataItem, "HotelName") %><br /></h2></td>
                            
                        </tr>
                        
                        <tr>
                            <td>
                                 <br /><asp:Image ID="image1" runat="server" height="260" width="300" ImageUrl='<%#Eval("ImagePath") %>' />
                             </td>
                        </tr>
                        <%--<tr>
                            <td>
                                  <%# DataBinder.Eval(Container.DataItem, "Id") %>
                                
                            </td>
                        </tr>--%>
                         
                            <tr>
                                <td><br /><b>Hotel Address: </b><%#Eval("HotelAddress") %></td>
                            </tr>
                            <tr>
                                <td><b>Phone No: </b><%#Eval("PhoneNo") %></td>
                            </tr>
                            <tr>
                                <td><b>Email: </b><%#Eval("HotelEmailId") %></td>
                            </tr>
                        <tr>
                            <td>
                                
                                <br /><a style="color:blue;" href ="details.aspx?Id=<%# DataBinder.Eval(Container.DataItem, "Id") %>"><b>Details</b></a>
                            </td>
                        </tr>
                            
                            
                        

                    </table>
                    </div>
                </ItemTemplate>


            </asp:DataList>
			<%--<img src="images/hotel1.jpg" height="260" width="300">
           </div> 
		   <div class="col-lg-7">
		   <h2>Hotel Mirage</h2><hr>
		   <h3>Khed,16.5km to Pune City</h3>
		   <p>A hotel is an establishment that provides paid lodging on a short-term basis. </p>
		   
		   <span class="fa fa-star checked"></span>																
		   <span class="fa fa-star checked"></span>
	    	<span class="fa fa-star checked"></span>
	  	<span class="fa fa-star checked"></span>
		<span class="fa fa-star"></span>		
		 <p><button class="btn btn-success">Detail</button></p>
		</div>
		   </div>--%>
</div>		
            </div></div>


<%--<div class="well">
		<div class="row">
		<div class="col-sm-5">
			<img src="images/hotel4.jpg" height="260" width="300">
           </div> 
		   <div class="col-lg-7">
		   <h2>Hotel Mirage</h2><hr>
		   <h3>Khed,16.5km to Pune City</h3>
		   <p>A hotel is an establishment that provides paid lodging on a short-term basis. </p>
		   
		   <span class="fa fa-star checked"></span>																
		   <span class="fa fa-star checked"></span>
	    	<span class="fa fa-star checked"></span>
	  	<span class="fa fa-star checked"></span>
		<span class="fa fa-star"></span>		
		 <p><button class="btn btn-success">Detail</button></p>
		</div>
		   </div>
</div>		--%>   
<%--<div class="well">
		<div class="row">
		<div class="col-sm-5">
			<img src="images/hotel3.jpg" height="260" width="300">
           </div> 
		   <div class="col-lg-7">
		   <h2>Hotel Mirage</h2><hr>
		   <h3>Khed,16.5km to Pune City</h3>
		   <p>A hotel is an establishment that provides paid lodging on a short-term basis. </p>
		   
		   <span class="fa fa-star checked"></span>																
		   <span class="fa fa-star checked"></span>
	    	<span class="fa fa-star checked"></span>
	  	<span class="fa fa-star checked"></span>
		<span class="fa fa-star"></span>		
		 <p><button class="btn btn-success">Detail</button></p>
		</div>
		   </div>
</div>--%>		   


<%--<div class="well">
		<div class="row">
		<div class="col-sm-5">
			<img src="images/hotel4.jpg" height="260" width="300">
           </div> 
		   <div class="col-lg-7">
		   <h2>Hotel Mirage</h2><hr>
		   <h3>Khed,16.5km to Pune City</h3>
		   <p>A hotel is an establishment that provides paid lodging on a short-term basis. </p>
		   
		   <span class="fa fa-star checked"></span>																
		   <span class="fa fa-star checked"></span>
	    	<span class="fa fa-star checked"></span>
	  	<span class="fa fa-star checked"></span>
		<span class="fa fa-star"></span>		
		 <p><button class="btn btn-success">Detail</button></p>
		</div>
		   </div>
</div>	--%>	      
  </div>	

</div>
	
</asp:Content>
