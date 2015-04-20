//   Programmers : Sneha Upadhyayula and Prashanth Naika (Group25)
//   Final Project for ITMD422

using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Odbc;
using System.Data.OracleClient;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class MainPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    // This Class will connect to Oracle database and fetch data from selected table name
    protected void Button1_Click(object sender, EventArgs e)
    {
        OracleConnection con = new OracleConnection("Data Source=(DESCRIPTION=(ADDRESS_LIST=(ADDRESS=(PROTOCOL=TCP)(HOST=localhost)(PORT=1521)))(CONNECT_DATA=(SERVER=DEDICATED)(SERVICE_NAME=xe)));User Id=system;Password=!QAZ1qaz;");
        //OracleConnection con = new OracleConnection("Data Source=localhost:1521;;User Id=system;Password=Polymath@123;");
        try
        {
            con.Open();
            String sql = "Select * from tbl_order";
            OracleCommand cmd = new OracleCommand(sql, con);
            DataTable table = new DataTable();
            string tableName;

            if (DropDownListTableName.SelectedIndex != 0)
            {
                tableName = DropDownListTableName.SelectedValue;
                string query = "Select * from " + tableName;
                
                OracleDataAdapter da = null;
                using (da = new OracleDataAdapter(cmd))
                {
                    da.Fill(table);
                }

                GridView1.DataSource = table;
                GridView1.DataBind();
            }


        }
        catch (OracleException oe)
        {

        }

    }

    // This Class will connect to MS SQL database and fetch data from selected table name
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=PRAASH\\SQLEXPRESS;Initial Catalog=IITProject;Integrated Security=True");
        con.Open();
        DataTable table = new DataTable();

        string tableName;

        if (DropDownListTableName.SelectedIndex != 0)
        {
            tableName = DropDownListTableName.SelectedValue;
            string query = "Select * from "+tableName;
            SqlCommand cmd = new SqlCommand(query, con);

            SqlDataAdapter da = null;
            using (da = new SqlDataAdapter(cmd))
            {
                da.Fill(table);
            }

            GridView1.DataSource = table;
            GridView1.DataBind();
        }

        con.Close();
        
    }
}