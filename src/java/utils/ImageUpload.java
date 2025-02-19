/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package utils;

import jakarta.servlet.http.Part;

/**
 *
 * @author dangx
 */
public class ImageUpload {
    
    public static String getFileName(Part part) {
    String contentDisp = part.getHeader("content-disposition");
    for (String content : contentDisp.split(";")) {
        if (content.trim().startsWith("filename")) {
            return content.substring(content.indexOf("=") + 2, content.length() - 1);
        }
    }
    return "unknown";
}

}
