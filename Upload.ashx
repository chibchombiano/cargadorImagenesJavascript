<%@ WebHandler Language="C#" Class="Upload" %>

using System;
using System.Web;
using System.IO;

public class Upload : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/plain";
        context.Response.Expires = -1;
        try
        {
            HttpPostedFile postedFile = context.Request.Files["Filedata"];

            //var test = context.Request.QueryString["id"];
            //var otraCosa = context.Request.QueryString["otraCosa"];

            var id = context.Request.Form["id"];
            var nombre = context.Request.Form["nombre"];
            
            string savepath = "";
            string tempPath = "";
            tempPath = System.Configuration.ConfigurationManager.AppSettings["FolderPath"]; 
            savepath = context.Server.MapPath(tempPath);
            string filename = postedFile.FileName;
            if (!Directory.Exists(savepath))
                Directory.CreateDirectory(savepath);

            postedFile.SaveAs(savepath + @"\" + filename);
            context.Response.Write(tempPath + "/" + filename);
            context.Response.StatusCode = 200;
        }
        catch (Exception ex)
        {
            context.Response.Write("Error: " + ex.Message);
        }
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }
}