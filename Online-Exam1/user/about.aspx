﻿<%@ Page Language="C#" MasterPageFile="~/user/Home.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="Online_Exam1.user.about" %>

<asp:Content ID="head" ContentPlaceHolderID="headContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="body" ContentPlaceHolderID="bodyContentPlaceHolder" runat="server">
    <div class="row  m-0">
        <div class="col-md-12">
            <div class="card-header">
                <h2>This is the online examination system application</h2>
            </div>
            <div class="card-body">
                <p>In this project, we are going to make an online exam system where an admin can take exam for the current student who are logged in this system. Here, the admin will take the exam of objective type questions.</p>
                <p>In admin section </p>
                <ul>
                    <li>An admin can add another admin</li>
                    <li>An admin can create subjects type</li>
                    <li>An admin can add subject question with multiple object with answer</li>
                    <li>An admin can see a student result as well as profile</li>
                    <li>An admin can reset his/her profile</li>
                </ul>
                <p>In student section </p>
                <ul>
                    <li>A student can create his profile n</li>
                    <li>A student can take part in exam </li>
                    <li>A students can search the website to get easilt the exam</li>
                    <li>A student can see his progress report</li>
                </ul>
            </div>
        </div>
    </div>
</asp:Content>
