
package gallery;

import connection.connect;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;


@WebServlet(name = "uploadServlet", urlPatterns = {"/uploadServlet"})
public class uploadServlet extends HttpServlet {
      
        String path;
        String title;
        String desc;
        String m="0";
    private static final long serialVersionUID = 1L;

    private static final String DATA_DIRECTORY = "images";
    private static final int MAX_MEMORY_SIZE = 1024 * 1024 * 200;
    private static final int MAX_REQUEST_SIZE = 1024 * 1024*200;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        PrintWriter out=response.getWriter();
        // Check that we have a file upload request
        boolean isMultipart = ServletFileUpload.isMultipartContent(request);

        if (!isMultipart) {
            return;
        }

        // Create a factory for disk-based file items
        DiskFileItemFactory factory = new DiskFileItemFactory();

        // Sets the size threshold beyond which files are written directly to
        // disk.
        factory.setSizeThreshold(MAX_MEMORY_SIZE);

        // Sets the directory used to temporarily store files that are larger
        // than the configured size threshold. We use temporary directory for
        // java
        factory.setRepository(new File(System.getProperty("java.io.tmpdir")));
        
        // constructs the folder where uploaded file will be stored
        String uploadFolder = getServletContext().getRealPath("")
                + File.separator + DATA_DIRECTORY;

        // Create a new file upload handler
        ServletFileUpload upload = new ServletFileUpload(factory);

        // Set overall request size constraint
        upload.setSizeMax(MAX_REQUEST_SIZE);

        try {
            // Parse the request
            List items = upload.parseRequest(request);
            Iterator iter = items.iterator();
            while (iter.hasNext()) {
                FileItem item = (FileItem) iter.next();

                if (!item.isFormField()) {
                    String fileName = new File(item.getName()).getName();
                    path=fileName;
                    String filePath = uploadFolder + File.separator + fileName;
                    File uploadedFile = new File(filePath);
                    System.out.println(filePath);
                    // saves the file to upload directory
                    item.write(uploadedFile);
                }
                if (item.isFormField()) {
    
    if(item.getFieldName().equals("title"))
        {   
          title=item.getString();
        }
    if(item.getFieldName().equals("desc"))
        {   
          desc=item.getString();
        }
    if(item.getFieldName().equals("indexpage")){
        
      
       m="1";
    }
            }}
            try{
                connect con=new connect();  
                con.conn();
                con.insert("insert into main_gallery(image_title,description,file_name,index_page,image_date) values('"+title+"','"+desc+"','"+path+"','"+m+"',CURDATE());");
                out.print("<h1>image inserted sucessfully</h1>");
                out.println("<script type=\"text/javascript\">");
                                             out.println("alert('image inserted sucessfully ');");
                                             out.println("location='Adminjsp/maingallery.jsp';");
                                             out.println("</script>");
                
                con.conclose();
            }
            catch(Exception e){
                out.print(e);
                
            }  

            

        } catch (FileUploadException ex) {
            throw new ServletException(ex);
        } catch (Exception ex) {
            throw new ServletException(ex);
        }

    }

}