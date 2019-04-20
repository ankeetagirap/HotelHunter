<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="HotelList.aspx.cs" Inherits="HotelRecommendation.HotelList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="container-fluid">
		<div class="row"> 
			<div class="col-md-3">
		
		<div class="well sidebar-nav">
            <ul class="nav nav-list">
              <li class="nav-header">Pune Cities</li>
              <li class="active"><a href="#">Link</a></li>
              <li><a href="#">Khed</a></li>
              <li><a href="#">Baramati</a></li>
              <li><a href="#">Bhor</a></li>
             <li><a href="#">Daund</a></li>
              <li><a href="#">Haveli</a></li>
              <li><a href="#">Indapur</a></li>
              <li><a href="#">Maval</a></li>
              <li><a href="#">Junnar</a></li>
             <li><a href="#">Mulshi</a></li>
              <li><a href="#">Purandar</a></li>
              <li><a href="#">Shirur</a></li>
              <li><a href="#">Velhe</a></li>
              <li><a href="#">Ambegaon</a></li>
            </ul>
			</div>
		</div>
		
	<div class="col-md-9">
		<div class="well">
		<div class="row">
		<div class="col-sm-5">
            <asp:DataList ID="HotelInfo" runat="server"  RepeatColumns="6" RepeatDirection="Vertical">
                <ItemTemplate>
                    <table>
                        <tr>
                            <td>
                                 <%--<asp:Image ID="image1" runat="server" height="260" width="300" ImageUrl=""--%>
                             </td>
                        </tr>
                         <tr>
                                <td><%#Eval("HotelName") %></td>
                        </tr>
                            <tr>
                                <td><%#Eval("HotelAddress") %></td>
                            </tr>
                            <tr>
                                <td><%#Eval("PhoneNo") %></td>
                            </tr>
                            <tr>
                                <td><%#Eval("HotelEmailId") %></td>
                            </tr>
                            
                            
                        

                    </table>

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
	</div>
</asp:Content>
