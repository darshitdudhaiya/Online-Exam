﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Exam1.admin
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        string s = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        //for login
        protected void btn_login_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {

                using (SqlConnection con = new SqlConnection(s))
                {
                    SqlCommand cmd = new SqlCommand("spAdminlogin", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@admin_email", txt_email.Text);
                    cmd.Parameters.AddWithValue("@password", txt_pass.Text);
                    try
                    {
                        con.Open();
                        int value = (int)cmd.ExecuteScalar();
                        if (value == 1)
                        {
                            if (chk_remember.Checked)
                            {
                                HttpCookie user = new HttpCookie("admin_cookies"); //creating cookie object where user_cookies is cookie name
                                user["adminemail"] = txt_email.Text; // cookie content
                                user.Expires = DateTime.Now.AddYears(3); // give the time/duration of cookie
                                Response.Cookies.Add(user); // it gives the response in browser
                            }
                            else
                            {
                                Session["adminemail"] = txt_email.Text;
                            }
                            Response.Redirect("~/admin/Index.aspx");
                        }
                        else
                        {
                            pnl_warning.Visible = true;
                            lbl_warning.Text = "Use correct email and password</br>";
                        }

                    }
                    catch (Exception ex)
                    {
                        pnl_warning.Visible = true;
                        lbl_warning.Text = "Something went wrong! Contact your devloper </br>" + ex.Message;
                    }
                }
            }
            else
            {
                pnl_warning.Visible = true;
                lbl_warning.Text = "Please fill all the requirements";
            }

        }
    }
}