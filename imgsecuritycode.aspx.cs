using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Drawing.Text;
using System.Drawing;
using System.Drawing.Imaging;
using System.Drawing.Text;

public partial class imgsecuritycode : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        Bitmap objBMP = new Bitmap(50, 18);
        Graphics objGraphics = Graphics.FromImage(objBMP);
        objGraphics.Clear(Color.Ivory);
        objGraphics.TextRenderingHint = TextRenderingHint.AntiAlias;

        //' Configure font to use for text
        Font objFont = new Font("Arial", 8, FontStyle.Bold);
        string randomStr = "";
        int[] myIntArray = new int[5];
        int x;

        //That is to create the random # and add it to our string
        Random autoRand = new Random();
        for (x = 0; x < 5; x++)
        {
            myIntArray[x] = System.Convert.ToInt32(autoRand.Next(0, 9));
            randomStr += (myIntArray[x].ToString());
        }

        //This is to add the string to session cookie, to be compared later
        Session.Add("randomStr", randomStr);

        //This session is use for the security image in the submit recipe page.
        Session.Add("randomstrsub", randomStr);

        //This session is use for the security image in the user registration page.
        Session.Add("randomstruserreg", randomStr);

        //' Write out the text
        objGraphics.DrawString(randomStr, objFont, Brushes.Black, 3, 3);

        //' Set the content type and return the image
        Response.ContentType = "image/GIF";
        objBMP.Save(Response.OutputStream, ImageFormat.Gif);

        //Release object from memory
        objFont.Dispose();
        objGraphics.Dispose();
        objBMP.Dispose();

    }
}
