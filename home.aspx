<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="project.home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <!-- Hero Start -->
    <div class="container-fluid bg-primary py-5 bg-hero" style="margin-bottom: 90px;">
        <div class="container py-5">
            <div class="row justify-content-start">
                <div class="col-lg-8 text-center text-lg-start">
                    <h1 class="display-1 text-dark">Al Ehteeraf for Legal Translation</h1>
                    <p class="fs-4 text-dark mb-4">WE OFFER SERVICES ON AN ONGOING BASIS TO PROVIDE AN INTEGRATED CONSTELLATION OF HIGH QUALITY TRANSLATION SERVICES</p>
                    <div class="col-md-6 text-center text-md-start">
                    <p class="mb-md-0"> With a <a class="text-dark fw-bold" href="#">6 years</a> experience in the field</p>
                </div>
                    <div class="pt-2">
                        <a href="partnership.aspx" class="btn btn-secondary rounded-pill py-md-3 px-md-5 mx-2">Partnership</a>
                        <a href="contact.aspx" class="btn btn-outline-secondary rounded-pill py-md-3 px-md-5 mx-2">Contact Us</a>
                           </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Hero End -->

    <!-- About Start -->
    <div class="container-fluid py-5">
        <div class="container py-5">
            <div class="row gx-0 mb-3 mb-lg-0">
                <div class="col-lg-6 my-lg-5 py-lg-5">
                    <div class="about-start bg-primary p-5">
                        <h1 class="display-5 mb-4">Our Services</h1>
                        <p>Translate from English to Arabic and vice versa</p>
                        <p>Translate from Bangladeshi and Urdu to Arabic and English </p>
                        <p>Translation of Legal, Medical, Scientific, Economic documents and Court notices</p>
                        <a href="contact.aspx" class="btn btn-secondary rounded-pill py-md-3 px-md-5 mt-4">Contact Us</a>
                    </div>
                </div>
                <div class="col-lg-6" style="min-height: 400px;">
                    <div class="position-relative h-100">
                        <img class="position-absolute w-100 h-100" src="img/aboutt.jpg" style="object-fit: cover;">
                    </div>
                </div>
            </div>
            <div class="row gx-0">
                <div class="col-lg-6" style="min-height: 400px;">
                    <div class="position-relative h-100">
                        <img class="position-absolute w-100 h-100" src="img/abouttt.jpg" style="object-fit: cover;">
                    </div>
                </div>
                <div class="col-lg-6 my-lg-5 py-lg-5">
                    <div class="about-end bg-primary p-5">
                        <h1 class="display-5 mb-4">Why Choose Us?</h1>
                        <p>Our translation is accurate and is free from any linguistics and grammatical errors</p>
                        <p>Our credibility and comitment to deadlines</p>
                        <p>Our translation is acceptable to all agencies and embassies worldwide</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- About End -->
    

</asp:Content>
