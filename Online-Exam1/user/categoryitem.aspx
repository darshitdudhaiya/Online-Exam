<%@ Page Language="C#" MasterPageFile="~/user/Home.Master" AutoEventWireup="true" CodeBehind="categoryitem.aspx.cs" Inherits="Online_Exam1.user.categoryitem" %>

<asp:Content ID="head" ContentPlaceHolderID="headContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="body" ContentPlaceHolderID="bodyContentPlaceHolder" runat="server">
    <h2 class="m-4 px-1">All
        <asp:Label ID="lbl_categorysubject" runat="server"></asp:Label>
        Category Subject
    </h2>
    <hr />
    <div class="row px-1 m-0">
        <asp:Repeater ID="gridview_categoryitem" runat="server">
            <ItemTemplate>
                <div class="col-lg-3 mb-3">
                    <div class="card h-100 text-center">
                        <h4 class="card-header"><%# Eval("subject_name") %></h4>
                        <div class="card-footer">
                            <asp:HyperLink ID="btn_category" runat="server" CssClass="btn btn-primary" ForeColor="White" NavigateUrl='<%# "~/user/subjectexam.aspx?sid=" + Eval("subject_id") %>'>Go to exams</asp:HyperLink>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
        <div class="col-md-12">
            <asp:Panel ID="panel_subjectshow_warning" runat="server" Visible="false">
                <div class="card">
                    <div class="card-header">
                        <br />
                        <div class="alert alert-danger text-center">
                            <asp:Label ID="lbl_subjectshowwarning" runat="server" />
                        </div>
                    </div>
                </div>
            </asp:Panel>
        </div>
    </div>
</asp:Content>
