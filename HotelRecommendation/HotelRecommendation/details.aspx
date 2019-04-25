<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="details.aspx.cs" Inherits="HotelRecommendation.details" %>

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
    <asp:ToolkitScriptManager ID="tsm" runat ="server"></asp:ToolkitScriptManager>
    <div class="container-fluid">
	<div class="well">
		<div class="row">
                    
                    
                    <asp:DataList ID="DlDetails" runat="server">
                        <ItemTemplate>

                            <div class="col-md-4">
                                    <asp:Image ID="image1" runat="server" height="260" width="300" ImageUrl='<%#Eval("ImagePath") %>' />
                                </div>
                            
                            <div class="col-md-4">
                               
                                <h2><%#Eval("HotelName") %></h2>
                          
                               <br><br>
                           
                          <p><b>Address:</b> <%#Eval("HotelAddress") %></p>
                           
                               <p> <b>Phone No:</b> <%#Eval("PhoneNo") %></p>
                          
                                <p> <b>Email:</b> <%#Eval("HotelEmailId") %></p>
                           
                                </div>
                            </ItemTemplate>
                        </asp:DataList>
               
         
                        <div class="col-md-4"><br/><br/><br/>
                            <table>
                                <tr>
                                    <td>
                                       <br />  <asp:Literal ID="AverageHygineRating" runat="server"></asp:Literal><br/>
                         
                                         <asp:Literal ID="AverageServiceRating" runat="server"></asp:Literal><br/>
                       
                                         <asp:Literal ID="AverageQualityRating" runat="server"></asp:Literal><br/>

                                        <asp:Literal ID="AverageRatingScore" runat="server"></asp:Literal><br/>
                                    </td>
                                    <td>
                                       <br /> <asp:Rating ID="HygineAverageRating" StarCssClass="blankstar" MaxRating="5" RatingAlign="Horizontal" WaitingStarCssClass="halfstar"
                                            EmptyStarCssClass="blankstar" FilledStarCssClass="shiningstar" runat="server" ReadOnly="True">
                        </asp:Rating>

                                        <asp:Rating ID="ServiceAverageRating" StarCssClass="blankstar" MaxRating="5" RatingAlign="Horizontal" WaitingStarCssClass="halfstar"
                                            EmptyStarCssClass="blankstar" FilledStarCssClass="shiningstar" runat="server" ReadOnly="True">
                                            <br/>
                        </asp:Rating>

                                        <asp:Rating ID="QualityAverageRating" StarCssClass="blankstar" MaxRating="5" RatingAlign="Horizontal" WaitingStarCssClass="halfstar"
                                            EmptyStarCssClass="blankstar" FilledStarCssClass="shiningstar" runat="server" ReadOnly="True">
                                            <br/>
                        </asp:Rating>
                                        <asp:Rating ID="AverageRating" StarCssClass="blankstar" MaxRating="5" RatingAlign="Horizontal" WaitingStarCssClass="halfstar"
                                            EmptyStarCssClass="blankstar" FilledStarCssClass="shiningstar" runat="server" ReadOnly="True"></asp:Rating>
                                    </td>
                                </tr>
                            </table>


                        
                        

                         

                        </div>
                        
                    
                
        </div>
    </div>
        </div>
    
    <div class="container-fluid">
    <div class="well">
		<div class="row">
			<div class="col-sm-3">
			</div>
			<div class="col-md-6">
				<h2>Reviews</h2><hr/>
				
					
                <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" ErrorMessage="enter the Name" ForeColor="Red"></asp:RequiredFieldValidator><br />
                 

                <asp:Label ID="lblPhoneNo" runat="server" Text="Phone no"></asp:Label>
                    <asp:TextBox ID="txtPhoneNo" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvPhoneNo" runat="server" ControlToValidate="txtPhoneNo" ErrorMessage="enter the phone no" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />

					<asp:Label ID="lblEmailId" runat="server" Text="Email id"></asp:Label>
					<asp:TextBox ID="txtEmailId" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvEmailId" runat="server" ControlToValidate="txtEmailId" ErrorMessage="enter emailId" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />	
                
                <table>
                    <tr>
                       
                        <td>
                            <asp:Label ID="lblHygine" runat="server" Text="Hygine:  "></asp:Label>
                        </td>
                        
                        <td style="width:25%">
                            <asp:Rating ID="ajxRatingHygine"  StarCssClass="blankstar" MaxRating="5" RatingAlign="Horizontal" WaitingStarCssClass="halfstar"
                         EmptyStarCssClass="blankstar" FilledStarCssClass="shiningstar" runat="server">
                        </asp:Rating>
                            
                        </td>
                        

                        <td>
                            <asp:Label ID="lblService" runat="server" Text="Service:  "></asp:Label>
                        </td>
                        <td style="width:25%">
                            <asp:Rating ID="ajxRatingService"  StarCssClass="blankstar" MaxRating="5" RatingAlign="Horizontal" WaitingStarCssClass="halfstar"
                         EmptyStarCssClass="blankstar" FilledStarCssClass="shiningstar" runat="server">
                        </asp:Rating>
                        </td>
                        
                        <td>
                            <asp:Label ID="lblQuality" runat="server" Text="Quality:  "></asp:Label>
                        </td>
                        <td>
                            <asp:Rating ID="ajxRatingQuality"  StarCssClass="blankstar" MaxRating="5" RatingAlign="Horizontal" WaitingStarCssClass="halfstar"
                         EmptyStarCssClass="blankstar" FilledStarCssClass="shiningstar" runat="server">
                        </asp:Rating>
                        </td>
                    </tr>
                </table>
                 

                <br/>

                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />

                
                  
                    <asp:Label ID="lblmsg" runat="server"></asp:Label>

                
                  
                    </div>
            </div>
        </div>
        </div>&nbsp;
    



</asp:Content>
