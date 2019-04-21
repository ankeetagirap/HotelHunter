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
    <asp:ToolkitScriptManager runat="server"></asp:ToolkitScriptManager>
    <div class="container">
	<div class="well">
		<div class="row">
            <table>
                <thead>
                    
                </thead>
                <tbody>
                    <div class="col-md-4">
                    <asp:DataList ID="DlDetails" runat="server">
                        <ItemTemplate>
                            
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
                            
                        </ItemTemplate>
                    </asp:DataList>
                    </div>
                </tbody>
             </table>
        </div>
    </div>
        </div>
    

    <div class="well">
		<div class="row">
			<div class="col-sm-4">
			</div>
			<div class="col-md-4">
				<h2>Reviews</h2><hr/>
				
					
                <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox><br />

                <asp:Label ID="lblPhoneNo" runat="server" Text="Phone no"></asp:Label>
                    <asp:TextBox ID="txtPhoneNo" runat="server"></asp:TextBox><br />

					<asp:Label ID="lblEmailId" runat="server" Text="EmailId"></asp:Label>
					<asp:TextBox ID="txtEmailId" runat="server"></asp:TextBox><br />	

                <table>
                    <tr>
                        <td>
                            <asp:Label ID="lblHygine" runat="server" Text="Rate the hygine of this hotel"></asp:Label>
                        </td>
                        <td>
                            <asp:Rating ID="ajxRatingHygine"  StarCssClass="blankstar" MaxRating="5" RatingAlign="Horizontal" WaitingStarCssClass="halfstar"
                         EmptyStarCssClass="blankstar" FilledStarCssClass="shiningstar" runat="server">
                        </asp:Rating>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <asp:Label ID="lblService" runat="server" Text="Rate the service of this hotel"></asp:Label>
                        </td>
                        <td>
                            <asp:Rating ID="ajxRatingService"  StarCssClass="blankstar" MaxRating="5" RatingAlign="Horizontal" WaitingStarCssClass="halfstar"
                         EmptyStarCssClass="blankstar" FilledStarCssClass="shiningstar" runat="server">
                        </asp:Rating>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <asp:Label ID="lblQuality" runat="server" Text="Rate the quality of this hotel"></asp:Label>
                        </td>
                        <td>
                            <asp:Rating ID="ajxRatingQuality"  StarCssClass="blankstar" MaxRating="5" RatingAlign="Horizontal" WaitingStarCssClass="halfstar"
                         EmptyStarCssClass="blankstar" FilledStarCssClass="shiningstar" runat="server">
                        </asp:Rating>
                        </td>
                    </tr>

                    

                    

                </table>

                

                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />

                
                  
                    <asp:Label ID="lblmsg" runat="server"></asp:Label>

                
                  
                    </div>
            </div>
        </div>&nbsp;
    



</asp:Content>
