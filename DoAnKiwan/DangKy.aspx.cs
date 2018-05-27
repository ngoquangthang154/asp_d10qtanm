using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data; // add
using System.Data.SqlClient; // add
using System.Web.Configuration; //add

public partial class DangKy : System.Web.UI.Page
{
    string conStr = WebConfigurationManager.ConnectionStrings["KiwanPro"].ToString(); // chuỗi kết nối từ web.config
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["ID"] != null | Request.Cookies["ID"] != null) Response.Redirect("~/");
        }
    }
    protected void btnOK_Click(object sender, EventArgs e)
    {
        

        if (txtPass.Text == txtCheckpass.Text)
        {
            SqlConnection conn = new SqlConnection(conStr);
            string sql = "INSERT INTO [user] VALUES(@Email, @Pass, @Name, @Phone, @Add, @LV)";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("Email", txtEmail.Text);
            cmd.Parameters.AddWithValue("Pass", txtPass.Text);
            cmd.Parameters.AddWithValue("Name", txtName.Text);
            cmd.Parameters.AddWithValue("Phone", txtPhone.Text);
            cmd.Parameters.AddWithValue("Add", txtAdd.Text);
            cmd.Parameters.AddWithValue("LV", 0);
            conn.Open();
            cmd.ExecuteNonQuery(); // add đơn hàng
            conn.Close();

            string id = "";
            SqlConnection conn2 = new SqlConnection(conStr);
            string sql2 = "SELECT * FROM [user] ORDER BY user_id DESC";
            SqlCommand cmd2 = new SqlCommand(sql2, conn2);
            conn2.Open();
            SqlDataReader rd = cmd2.ExecuteReader();
            if (rd.HasRows)
            {
                rd.Read();
                id = rd["user_id"].ToString();
            }
            conn2.Close();
            conn2.Dispose();

            Session["Ten"] = txtName.Text; // lưu session cột name
            Session["ID"] = id; // cột id

            

            Response.Redirect("~/");
        }
        else
        {
            lblMsg.Visible = false;
            lblMsg.Text = "Xác nhận mật khẩu không chính xác!";
        }
    }
}