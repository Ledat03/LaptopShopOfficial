package vn.project.laptopshop.service;

import jakarta.servlet.ServletContext;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

@Service
public class UploadService {
    private final ServletContext servletContext;

    UploadService(ServletContext servletContext) {
        this.servletContext = servletContext;
    }

    public String handleUpload(MultipartFile file, String folder) {

        try {
            byte[] bytes = file.getBytes();
            String rootPath = this.servletContext.getRealPath("/resources/images");

            File dir = new File(rootPath + File.separator + folder);
            if (!dir.exists())
                dir.mkdirs();
            File serverFile = new File(dir.getAbsolutePath() + File.separator +
                    +System.currentTimeMillis() + "-" + file.getOriginalFilename());
            BufferedOutputStream stream = new BufferedOutputStream(
                    new FileOutputStream(serverFile));
            stream.write(bytes);
            stream.close();

            return serverFile.getName();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }
    public String handleDelete(String folder, String fileName) {
        try {
            File file = new File(servletContext.getRealPath("/resources/images") + File.separator + folder + File.separator + fileName);
            if (file.exists()) {
                file.delete();
                return fileName + "Deleted !";
            }
        }catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
