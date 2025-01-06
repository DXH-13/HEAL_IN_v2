/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package constant;

/**
 *
 * @author dangx
 */
public interface IConstant {
    
    
    String GOOGLE_CLIENT_ID = "990006517371-6q85h94fvf4baric0cd1r7qtgcci7k5q.apps.googleusercontent.com";

    String GOOGLE_CLIENT_SECRET = "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";

    String GOOGLE_REDIRECT_URI = "http://localhost:9999/HEAL_IN_v2/log_in?loginType=google";

    String GOOGLE_GRANT_TYPE = "authorization_code";

    String GOOGLE_LINK_GET_TOKEN = "https://accounts.google.com/o/oauth2/token";

    String GOOGLE_LINK_GET_USER_INFO = "https://www.googleapis.com/oauth2/v1/userinfo?access_token=";
}
