<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <section id="slider_part">
         <div class="carousel slide" id="carousel-example-generic" data-ride="carousel">
            <!-- Indicators -->
         	 <ol class="carousel-indicators text-center">
                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
             </ol>

           	<div class="carousel-inner">

           	 	<div class="item active">
           	 		<div class="overlay-slide">
           	 			<img src="images/cleaning.jpg" alt="" class="img-responsive">
           	 		</div>
           	 		<div class="carousel-caption">
               	 		<div class="col-md-12 col-xs-12 text-center">
                     	<div class="slide_title">FIX YOUR HOUSE</div><br /><br />
									<ol class="slide-list">
										<li>Furniture Assembly</li><br /><br />
										<li>Total Home Cleaning</li><br/><br />
										<li>Shelves Cleaning</li><br /><br />
										<li>Floor Cleaning</li><br /><br />

									</ol>
								<br />
                                                                    <a href="HouseCleaning.aspx" class="btn btn-lg btn-sb-blue btn-circle-lg" title="Pest Control Services" style="font-size: x-large"><strong>Book Now</strong></a>
               	 		</div>
           	 		</div>
           	 	</div>


                <div class="item">
                    <div class="overlay-slide">
                        <img src="images/plumber.jpg" alt="" class="img-responsive">
           	 		</div>
           	 		<div class="carousel-caption">
               	 		<div class="col-md-12 col-xs-12 text-center">
              <div class="slide_title">FIX YOUR PLUMBING PROBLEMS</div><br /><br />
									<ol class="slide-list">
										<li>Dripping Faucets</li><br /><br />
										<li>Leaky Pipes</li><br/><br />
										<li>Clogged Drains</li><br /><br />
										<li>Low Water Pressure</li><br /><br />
                                        <li>Running Toilet</li>

									</ol>
								<br />
                                                                    <a href="Plumbing.aspx" class="btn btn-lg btn-sb-blue btn-circle-lg" title="Pest Control Services" style="font-size: x-large"><strong>Book Now</strong></a>
               	 		</div>
           	 		</div>
           	 	</div>


           	 	<div class="item">
                    <div class="overlay-slide">
                        <img src="images/Electrical.jpg" alt="" class="img-responsive">
           	 		</div>
           	 		<div class="carousel-caption">
               	 		<div class="col-md-12 col-xs-12 text-center">
                
                                <div class="slide_title">FIX YOUR ELECTRICALS</div><br /><br />
									<ol class="slide-list">
										<li>Lights</li><br /><br />
										<li>Fans</li><br /><br />
										<li> Televisions</li><br /><br />
										<li>Air Conditioners</li><br /><br />
                                         <li>Refrigirators</li>

									</ol><br />
                                  <a href="HouseCleaning.aspx" class="btn btn-lg btn-sb-blue btn-circle-lg" title="Pest Control Services" style="font-size: x-large"><strong>Book Now</strong></a>

               	 		</div>
           	 		</div>
           	 	</div>

           	 </div> 	 <!-- End Carousel Inner -->

            <!-- Controls -->
            <div class="slides-control ">
                <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                 	<span><i class="fa fa-angle-left"></i></span>
                </a>
                <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                	<span><i class="fa fa-angle-right"></i></span>
                </a>
            </div>
        </div>
  	</section>
    <!--/ Slider end -->

<!-- Service Area start -->

    
</asp:Content>
