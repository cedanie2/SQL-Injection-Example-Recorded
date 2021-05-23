using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace SQL_Injection_Example_Recorded
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {

            try
            {

                SqlDbConnect con = new SqlDbConnect();
                // Inserts data from text box                                                                                                                                                                                                                                                                                                                                                                                                 
                con.SqlQuery("INSERT INTO Names (FirstName, LastName) VALUES (@FirstName, @LastName)");
                con.Cmd.Parameters.AddWithValue("@FirstName", TextBoxFirstName.Text.Trim());
                con.Cmd.Parameters.AddWithValue("@LastName", TextBoxLastName.Text.Trim());
                con.NonQueryEx();
                con.SqlQuery("SELECT * FROM Names WHERE LastName = '" + TextBoxLastName.Text.Trim() + "'");
                ListBoxDatabase.Items.Clear();
                LabelOutput.Text = "Here is a list of all accounts with your Last Name";
                // Now Diplay the Data to the user
                foreach (DataRow dr in con.QueryEx().Rows)
                {
                    ListBoxDatabase.Items.Add(dr[1].ToString() + " " + dr[2].ToString());
                }
            }
            catch (Exception ex)
            {
                LabelOutput.Text = "You have an error! " + ex;
            }
        }
    }
}