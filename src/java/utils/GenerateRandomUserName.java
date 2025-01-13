/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package utils;

import java.util.Random;

/**
 *
 * @author dangx
 */
public class GenerateRandomUserName {
    public static String generateUsername() {
        Random random = new Random();
        int randomNumber = 100000 + random.nextInt(900000); 
        return "healin" + randomNumber;
    }

    public static void main(String[] args) {
        // Gọi hàm generateUsername và in kết quả
        String username = generateUsername();
        System.out.println("Random username: " + username);
    }
}
