<%@ Page Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="editcategory.aspx.cs" Inherits="Online_Exam1.admin.editcategory" %>

<asp:Content ID="head" ContentPlaceHolderID="headContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="body" ContentPlaceHolderID="bodyContentPlaceHolder" runat="server">
    <div class="col-md-12">
        <div class="card">
            <%--Button For select panel--%>
            <div class="btn-group bg-danger">
                <asp:Button ID="btn_panelcategorylist" runat="server" Text="Edit Category" CssClass="btn btn-info" BorderStyle="None" CausesValidation="False" BackColor="#343A40" />
            </div>
            <%--Add category --%>
                <div class="card-body">
                    <div class="row form-group">
                        <label class="col-md-2 col-form-label ">Category Name</label>
                        <div class="col-md-4">
                            <asp:TextBox ID="txt_categoryedit" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="require_category" runat="server" ErrorMessage="Enter category" ControlToValidate="txt_categoryedit" ForeColor="red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="card-footer">
                        <div class="offset-2">
                            <asp:Button ID="btn_editcategory" runat="server" Text="Edit Category" CssClass="btn" BackColor="#343A40" BorderStyle="None" ForeColor="White" OnClick="btn_editcategory_Click"/>
                        </div>
                        <asp:Panel ID="panel_editcategory_warning" runat="server" Visible="false">
                            <br />
                            <div class="alert alert-danger text-center">
                                <asp:Label ID="lbl_categoryeditwarning" runat="server" />
                            </div>
                        </asp:Panel>
                    </div>
                </div>
        </div>
    </div>
</asp:Content>
