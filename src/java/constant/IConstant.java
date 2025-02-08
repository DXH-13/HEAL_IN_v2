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
    
    
    String GOOGLE_CLIENT_ID = "51300126202-jbb4258dvsdjr16iqa5vb92vbdqot9sl.apps.googleusercontent.com";

    String GOOGLE_CLIENT_SECRET = "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";

    String GOOGLE_REDIRECT_URI_LOG_IN = "http://localhost:9999/HEAL_IN_v2/log_in?loginType=google";
    
    String GOOGLE_REDIRECT_URI_SIGN_UP = "http://localhost:9999/HEAL_IN_v2/sign_up?signupType=google";

    String GOOGLE_GRANT_TYPE = "authorization_code";

    String GOOGLE_LINK_GET_TOKEN = "https://accounts.google.com/o/oauth2/token";

    String GOOGLE_LINK_GET_USER_INFO = "https://www.googleapis.com/oauth2/v1/userinfo?access_token=";
}
