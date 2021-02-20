using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SC601_Semana01.Views
{
    public partial class Arrays : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnArray_Click(object sender, EventArgs e)
        {
            //input = this is a great day!
            //Output  /*"sihT si a taerg !yad"*/

            // Variables
            string input = txtArray.Value;
            var output = "";

            //Break the word into arrays
            var word = input.Split(' ');
            /*this siht*/
            for (int i = 0; i < word.Length; i++)
            {
                char[] arrayWord = word[i].ToCharArray();
                char[] result = new char[word[i].Length];

                for (int x = 0, j = word[i].Length - 1; x < word[i].Length; x++, j--)
                {
                    result[x] = arrayWord[j];

                }

                output += String.Join("", result.Select(p => p.ToString()).ToArray());
                output += " ";

            }

            Response.Write("<script>alert('The New Array is: " + output.ToString() + "')</script>");
            txtArray.Value = "";


        }
    }
}