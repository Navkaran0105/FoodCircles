<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@include file="myvars.jsp" %>

<%@page import="java.io.File"%>
<%@page import="java.util.Iterator"%>
<%@page import="org.apache.commons.fileupload.FileUploadException"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.FileItemFactory"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="extfiles.jsp" %>
        <title>Add pics</title>
<script>
$(document).ready(function ()
{
     $("#category").change(function()
	{
		var cid = $(this).val();
		$.ajax(
		{
                    url: 'showsubcatajax.jsp',
                    type: 'post',
                    data: {"catid":cid},
                    beforeSend: function () 
                    { 
                            $("#subcatloader").html("<img src='pics/preloader.gif'>"); 
                    },
                    success: function(result)
                    {
                         $("#subcatloader").html(""); 
                         $('#subcategory').html(result);
                    },
                      error: function(e) 
                    {
                          $('#subcatloader').html("Error in Ajax");
                    }
		});
                });
                
                 $("#subcategory").change(function()
	{
                var cid = $("#category").val();
		var sid = $(this).val();
		$.ajax(
		{
                    url: 'showprodajax.jsp',
                    type: 'post',
                    data: {"catid":cid,"subcatid":sid},
                    beforeSend: function () 
                    { 
                            $("#subcatloader").html("<img src='pics/preloader.gif'>"); 
                    },
                    success: function(result)
                    {
                         $("#subcatloader").html(""); 
                         $('#pro').html("<option>Choose Product</option>"+result);
                    },
                      error: function(e) 
                    {
                          $('#subcatloader').html("Error in Ajax");
                    }
		});
                });
         
                
        
        $('#form1').submit(function (e)
    {
        e.preventDefault();
        var formData = new FormData($(this)[0]);
        $.ajax(
                {
                   type: 'post',
                   url: 'addpicsajax.jsp',
                   data: formData,
		   contentType: false,
		   cache: false,
		   processData: false,
                    beforeSend: function () 
                    { 
                       $("#msg").html("<img src='pics/preloader.gif'>"); 
                    },
                    success: function (reslt)
                    {
                        if ($.trim(reslt) == "Sorry")
                        {
                          $('#msg').html("Sorry only pictures are allowed to upload");
                        } 
                        else if ($.trim(reslt) == "ProductA")
                        {
                          $('#msg').html("Pics added successfully");   
                        } 
                        else if($.trim(reslt) == "ProductN")
                        {
                             $('#msg').html("Pics not added successfully");
                        }
                        else
                        {
                             $('#msg').html(reslt);
                        }
                    },
                    error: function (e)
                    {
                        $('#msg').html("error in ajax");
                    }
                });
    });
});
</script>   
        
    </head>
    <body>
     <%@include file="header.jsp" %>
     
     
     
<!-- //header -->
<!-- banner -->
	<div class="banner10" id="home1">
		<div class="container">
			<h2>Add Pics</h2>
		</div>
	</div>
<!-- //banner -->

<!-- breadcrumbs -->
	<div class="breadcrumb_dress">
		<div class="container">
			<ul>
				<li><a href="index.html"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Home</a> <i>/</i></li>
				<li>Add Pics</li>
			</ul>
		</div>
	</div>
<!-- //breadcrumbs -->

<!-- mail -->
	<div class="mail">
		<div class="container">
			<h3>Add Pics</h3>
			<div class="register">
                <form action="#" method="post" enctype="multipart/form-data" id="form1">
                     <select name="category" id="category" class="form-control">
                        <option value="">Choose Category</option> 
            <%              
            try
            {
                   Class.forName("com.mysql.jdbc.Driver");
                   Connection myconn = DriverManager.getConnection(dbpath, dbuser, dbpass);
                   try
                   {
                        String q = "select * from addcat";
                        PreparedStatement myst =  myconn.prepareStatement(q);
                        ResultSet res = myst.executeQuery();
                        if(res.next()==true)
                        {
                            do
                            {                     
                                out.print("<option value='" + res.getString("catid") + "'>" + res.getString("catname") + "</option>");
                               // out.print("<option value='100'>Men Apparels</option>");
                            }
                            while(res.next());
                        }
                        else
                        {
                             out.print("<option>No Categories</option>");
                        }
                   }
                   catch(Exception e)
                       
                   {
                       out.print("Error in query " + e.getMessage());
                   }
                   finally
                   {
                       myconn.close();
                   }
            }
            catch(Exception e)
            {
                out.print("Error in connection " + e.getMessage());
            }
        %> 
                    </select><div id="subcatloader"></div><br/>
        
            <select name="subcategory" id="subcategory" class="form-control">
            <option value="">Choose Sub Category</option> 
           
                    </select><br/>
                      <select name="product" id="pro" class="form-control">
            <option value="">Choose Product</option> 
            

                    </select><br/> 
        
            
                      
                        <input type="file" name="prodpic" class="form-control">	
                        <div class="sign-up">
                            <input type="submit" value="Add Pics" name="submit"/>
          
        
         </div><div id="msg"></div>
                </form>
        </div>
		</div>
	</div>
     
       


     
     <%@include file="footer.jsp" %>
    </body>
</html>
