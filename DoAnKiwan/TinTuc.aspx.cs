using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data; // add
using System.Data.SqlClient; // add
using System.Web.Configuration; //add

public partial class TinTuc : System.Web.UI.Page
{
    string conStr = WebConfigurationManager.ConnectionStrings["KiwanPro"].ToString(); // chuỗi kết nối từ web.config
    protected void Page_Load(object sender, EventArgs e)
    {
        posting();
    }

    private void posting()
    {
        if (Request.QueryString["ID"] != null && Request.QueryString["ID"] != "")
        {
            string id = Request.QueryString["ID"];
            SqlConnection conn = new SqlConnection(conStr);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT * FROM [news] WHERE [id] = " + id;
            cmd.Connection = conn;
            conn.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.HasRows)
            {
                rd.Read();
                ltlImg.Text = "<img src='./" + rd.GetString(rd.GetOrdinal("images")) + "' alt='" + rd.GetString(rd.GetOrdinal("title")) + "' />";
                ltlTitle.Text = rd.GetString(rd.GetOrdinal("title"));
                ltlPostingDateTime.Text = rd.GetDateTime(rd.GetOrdinal("posting_datetime")).ToString();
                ltlContent.Text = rd.GetString(rd.GetOrdinal("content"));
            }
            conn.Close();
            conn.Dispose();
            pnlDetail.Visible = true;
            pnlList.Visible = false;
        }
        else
        {
            SqlConnection conn = new SqlConnection(conStr);
            string sql = "SELECT * FROM news ORDER BY id DESC";
            SqlDataAdapter dt = new SqlDataAdapter(sql, conn);
            DataSet ds = new DataSet();
            conn.Open();
            dt.Fill(ds);
            DataView news = new DataView(ds.Tables[0]);

            for (int i = 0; i < news.Count; i++)
            {
                ltlList.Text += string.Format(@"<article class='blog-article'>
                    <div class='row'>
						<div class='span4'>
							<div class='blog-img'>
								<a href='?ID={0}'><img src='./{1}' alt='Blog image'></a>
							</div>
						</div>

						<div class='span5'>
							<div class='blog-content'>
								<div class='blog-content-title'>
									<h2><a href='?ID={0}' class='invarseColor'>{2}</a></h2>
								</div>
								<div class='clearfix'>
									<ul class='unstyled blog-content-date'>
										<li class='pull-right'><i class='icon-comments'></i> 15</li>
										<li class='pull-left'><i class='icon-calendar'></i> {3}</li>
									</ul>
								</div>
								<div class='blog-content-entry'>
									<p>
										{4}
									</p>
									<a href='?ID={0}'>Contunie &rarr;</a>
								</div>
							</div>
						</div>
					</div>
                </article>", news[i]["id"], news[i]["images"], news[i]["title"], news[i]["posting_datetime"], news[i]["content"]);
            }
            conn.Close();
            conn.Dispose();
            pnlDetail.Visible = false;
            pnlList.Visible = true;
        }
    }
}