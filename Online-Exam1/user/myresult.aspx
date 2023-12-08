<%@ Page Language="C#" MasterPageFile="~/user/Home.Master" AutoEventWireup="true" CodeBehind="~/user/myresult.aspx.cs" Inherits="Online_Exam1.user.myresult" %>

<asp:Content ID="head" ContentPlaceHolderID="headContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="body" ContentPlaceHolderID="bodyContentPlaceHolder" runat="server">
    <div class="card-header">
        <h2>My Result</h2>
    </div>
    <asp:TextBox ID="getemail" runat="server" Visible="false"></asp:TextBox>
    <asp:GridView ID="gridmyresult" runat="server" GridLines="None" AllowPaging="True" AutoGenerateColumns="False" CssClass="table table-bordered" OnPageIndexChanging="gridmyresult_PageIndexChanging" PageSize="8">
        <Columns>
            <asp:BoundField DataField="exam_name" HeaderText="Exam Name" NullDisplayText="no exam name" />
            <asp:BoundField DataField="exam_date" DataFormatString="{0:M/d/yy}" HeaderText="Exam Date" NullDisplayText="There is some problem to find exam date" />
            <asp:BoundField DataField="totalquestion" HeaderText="Total Question" />
            <asp:BoundField DataField="result_status" HeaderText="Result" />
            <asp:BoundField DataField="exam_marks" HeaderText="Total Marks" />
            <asp:BoundField DataField="result_score" HeaderText="Your Score" />
        </Columns>
    </asp:GridView>
    <div class="col-md-12">
        <asp:Panel ID="panel_myresultshow_warning" runat="server" Visible="false">
            <div class="card">
                <div class="card-header">
                    <br />
                    <div class="alert alert-danger text-center">
                        <asp:Label ID="lbl_myresultshowwarning" runat="server" />
                    </div>
                </div>
            </div>
        </asp:Panel>
    </div>
</asp:Content>
