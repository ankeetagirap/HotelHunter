<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="HotelRecommendation.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
     <!-- tab section -->
        <section class="no-padding-top travel-booking bg-magenta">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="tab-style3">
                            <div class="row">
                                <div class="col-md-12 col-sm-12">
                                    <!-- tab navigation -->
                                    <ul class="nav nav-tabs nav-tabs-light text-center xs-no-border xs-no-margin-top">
                                        
                                        <li class="active no-margin-left xs-no-border"><a href="#tab3_sec1" data-toggle="tab"><i class="fa fa-suitcase"></i>Hotels</a></li>
                                        

                                    </ul>
                                    <!-- end tab navigation -->
                                </div>
                            </div>
                            <!-- tab content section -->
                            <div class="tab-content">
                                <!-- tab content -->
                                <div class="tab-pane med-text fade in active" id="tab3_sec1">
                                    <div class="row margin-two no-margin-bottom">
                                        <div class="col-md-8 col-sm-12 center-col">
                                            <form action="#" method="post">
                                                <div class="row">
                                                    <div class="col-md-2">
                                                    </div>
                                                    <div class="col-md-6 col-sm-8 no-padding-left xs-no-padding">
                                                    <div class="form-group no-margin-bottom">
                                                        <!-- label -->
                                                        <label class="text-uppercase white-text">Where do you want to go?</label>
                                                        <!-- end label -->
                                                        <!-- input -->
                                                        <input type="text" name="name" id="textbox1" placeholder="Eg. Melbourne, Australia"/>
                                                        <!-- end input -->
                                                    </div>
                                                </div>
                                                
                                                <div class="col-md-4 col-sm-6 no-padding-left">
                                                <br/>
                                                    <button class="highlight-button-dark btn btn-medium  button xs-margin-bottom-five"><i class="fa fa-search"></i>Search</button>
                                                </div>

                                                </div>

                                         </form>
                                        </div>
                                    </div>
                                </div>
                                <!-- end tab content -->      
                            </div>
                            <!-- end tab content section -->
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- end tab section -->

</asp:Content>
