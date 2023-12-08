<%@ Page Language="C#" MasterPageFile="~/user/Home.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Online_Exam1.user.Index" %>

<asp:Content ID="head" ContentPlaceHolderID="headContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="body" ContentPlaceHolderID="bodyContentPlaceHolder" runat="server">
    <h2 class="my-4 px-3">Category</h2>
    <hr />
    <!-- Category Section -->
    <div class="row px-1 m-0">
        <asp:Repeater ID="gridview_categorylist" runat="server">
            <ItemTemplate>
                <div class="col-lg-3 mb-3">
                    <div class="card h-100 text-center">
                        <h4 class="card-header"><%# Eval("category_name") %></h4>
                        <div class="card-footer">
                            <asp:HyperLink ID="btn_category" runat="server" CssClass="btn btn-primary" ForeColor="White" NavigateUrl='<%# "~/user/categoryitem.aspx?cid=" + Eval("category_id") %>'>Go to subjects</asp:HyperLink>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
        <div class="col-md-12">
            <asp:Panel ID="panel_categoryshow_warning" runat="server" Visible="false">
                <div class="card">
                    <div class="card-header">
                        <br />
                        <div class="alert alert-danger text-center">
                            <asp:Label ID="lbl_categoryshowwarning" runat="server" />
                        </div>
                    </div>
                </div>
            </asp:Panel>
        </div>
    </div>
</asp:Content>
