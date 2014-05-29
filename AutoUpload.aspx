<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="AutoUpload.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="Stylesheet" type="text/css" href="CSS/uploadify.css" />
     <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
     <script src="scripts/jquery.uploadify.min.js" type="text/javascript"></script>
</head>
<body>
    
    <form id="form1" runat="server">
        <div style="padding:40px">
            <asp:FileUpload ID="FileUpload1" runat="server" />
        </div>
    </form>

</body>
</html>
<script type = "text/javascript">

    var id = 54545464;
    var nombre = 'douglas';

    $(window).load(
    function() {
        $("#<%=FileUpload1.ClientID %>").uploadify({    
        'formData' : {
            id: id,
            nombre : nombre
        },
        'swf': 'scripts/uploadify.swf',
        'cancelImg': 'images/uploadify-cancel.png',
        'buttonText': 'Examinar archivos',
        'uploader': 'Upload.ashx',
        'folder': 'uploads',
        'fileDesc': 'Image Files',
        'fileExt': '*.jpg;*.jpeg;*.gif;*.png',
        'multi': true,
        'auto': true      
    });
   }
);
</script> 
