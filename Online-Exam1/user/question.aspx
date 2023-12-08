<%@ Page Language="C#" MasterPageFile="~/user/Home.Master" AutoEventWireup="true" CodeBehind="question.aspx.cs" Inherits="Online_Exam1.user.question" %>

<asp:Content ID="head" ContentPlaceHolderID="headContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="body" ContentPlaceHolderID="bodyContentPlaceHolder" runat="server">
    <div class="fixed-top mt-5 border-bottom ">
        <h2 class="p-3 bg-white h-100">Answer all the questions</h2>
    </div>
    <asp:TextBox ID="getstringuser" runat="server" Visible="false"></asp:TextBox>
    <div class="px-4 pt-5">
        <asp:GridView ID="gridview_examquestion" runat="server" AutoGenerateColumns="False" GridLines="None">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Label ID="lblid" runat="server" Text='<%# Eval("question_id") %>' Visible="false"></asp:Label>
                        <asp:Label ID="number" runat="server" Text='<%# (Container.DataItemIndex  + 1).ToString() + " ." %>'></asp:Label>
                        <asp:Label ID="lbl_question" runat="server" Text='<%# Eval("question_name") %>' CssClass="my-5"></asp:Label>
                        <br />
                        <br />
                        <asp:RadioButton GroupName="a" Text='<%# Eval("option_one") %>' ID="option_one" runat="server" />
                        <br />
                        <asp:RadioButton GroupName="a" Text='<%# Eval("option_two") %>' ID="option_two" runat="server" />
                        <br />
                        <asp:RadioButton GroupName="a" Text='<%# Eval("option_three") %>' ID="option_three" runat="server" />
                        <br />
                        <asp:RadioButton GroupName="a" Text='<%# Eval("option_four") %>' ID="option_four" runat="server" />
                        <hr />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:Button ID="btn_submit" runat="server" Text="Submit" CssClass="btn btn-success" OnClick="btn_submit_Click" />
    </div>

    <div class="col-md-12">
        <asp:Panel ID="panel_questshow_warning" runat="server" Visible="false">
            <div class="card">
                <div class="card-header">
                    <br />
                    <div class="alert alert-danger text-center">
                        <asp:Label ID="lbl_questshowwarning" runat="server" />
                    </div>
                </div>
            </div>
        </asp:Panel>
    </div>
</asp:Content>
