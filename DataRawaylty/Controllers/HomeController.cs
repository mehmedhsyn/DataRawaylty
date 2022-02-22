using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;

namespace DataRawaylty.Controllers
{
    public class HomeController : Controller
    {
        string conn = @"Data Source=DESKTOP-2BGTDU9\SQLEXPRESS; User ID=DataRawaylty; Password=Awdsefdrgfth_1;";
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Welcome()
        {
            return View();
        }
        public ActionResult Home()
        {
            return View();
        }
        [HttpPost]
        public JsonResult Register(string username, string password)
        {
            int message = 0;
            using (SqlConnection sql = new SqlConnection(conn))
            {
                sql.Open();
                SqlCommand cmd = new SqlCommand($"select * from [DataRawayltyDB].[dbo].[users] where [username] =@user", sql);
                cmd.Parameters.AddWithValue("user", username.Trim());
                SqlDataReader rdr = cmd.ExecuteReader();
                if (rdr.HasRows)
                {
                    message = 2;
                }
                else
                {
                    using(SqlConnection sql1 = new SqlConnection(conn))
                    {
                        sql1.Open();
                        SqlCommand cmd1 = new SqlCommand($"insert into [DataRawayltyDB].[dbo].[users] (username, password) values (@user, @pass)", sql1);
                        cmd1.Parameters.AddWithValue("user", username.Trim());
                        cmd1.Parameters.AddWithValue("pass", password.Trim());
                        int inserted = cmd1.ExecuteNonQuery();
                        if(inserted > 0)
                        {
                            message = 1;
                        }
                    }
                }


            }
                return Json(new { res = message }, JsonRequestBehavior.AllowGet);
        }
        [HttpGet]
        public JsonResult Login(string username, string password)
        {
            int message = 0;
            using (SqlConnection sql = new SqlConnection(conn))
            {
                sql.Open();
                SqlCommand cmd = new SqlCommand($"select * from [DataRawayltyDB].[dbo].[users] where [username] =@user and password=@pass", sql);
                cmd.Parameters.AddWithValue("user", username.Trim());
                cmd.Parameters.AddWithValue("pass", password.Trim());
                SqlDataReader rdr = cmd.ExecuteReader();
                if (rdr.HasRows)
                {
                    message = 1;
                }
            }
            return Json(new { res = message }, JsonRequestBehavior.AllowGet);
        }

    }
}