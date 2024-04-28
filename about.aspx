<%@ Page Title="About Us" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="project.about" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    <!-- Hero Start -->
    <div class="container-fluid bg-primary py-5 bg-hero" style="margin-bottom: 90px;">
        <div class="container py-5">
            <div class="row justify-content-start">
                <div class="col-lg-8 text-center text-lg-start">
                    <h1 class="display-1 text-dark">About Us</h1>
                    <div class="pt-2">
                        <a href="home.aspx" class="btn btn-secondary rounded-pill py-2 px-4 mx-2">Home</a> 
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Hero End -->

    <!-- Testimonial Start -->
    <div class="container-fluid bg-primary bg-testimonial py-5" style="margin: 90px 0;">
        <div class="container py-5">
            <div class="row g-0 justify-content-end">
                <div class="col-lg-6">
                    <h1 class="display-5 mb-4">Who are we?</h1>
                    <div class="owl-carousel testimonial-carousel">
                        <div class="testimonial-item">
                            <p class="fs-4 fw-normal"><i class="fa fa-quote-left text-secondary me-3"></i>Al Ehteeraf Legal Translation Office, a leading Omani office in the field of translation, headquartered in the state of Saham. The office provides translation, editing and publishing services at competitive prices and with extreme accuracy, according to the highest local and international standards.</p>
                        </div>
                        <div class="testimonial-item">
                            <p class="fs-4 fw-normal"><i class="fa fa-quote-left text-secondary me-3"></i>We strive to be the first and leading office in the field of translation, not in Oman, but in the Middle East as a whole. Therefore, by taking into account the necessary care and providing the competencies and technologies required to provide services with the highest level of accuracy and as soon as possible, to always remain the best choice for our valued customers.</p>
                            <div class="d-flex align-items-center">
                                <div class="ps-3">
                                    <h3>Vision</h3>
                                </div>
                            </div>
                        </div>
                        <div class="testimonial-item">
                            <p class="fs-4 fw-normal"><i class="fa fa-quote-left text-secondary me-3"></i>In light of the openness between cultures and the ease of communication that the world is witnessing, we have the task of removing language barriers between different cultures as well as facilitating the process of communication between companies and customers worldwide.</p>
                            <div class="d-flex align-items-center">
                                <div class="ps-3">
                                    <h3>Mission</h3>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Testimonial End -->
</asp:Content>
