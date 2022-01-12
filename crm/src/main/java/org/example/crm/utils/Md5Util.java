package org.example.crm.utils;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Base64;

public class Md5Util {
    public static String encode(String data) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("md5");
            return Base64.getEncoder().encodeToString(messageDigest.digest(data.getBytes()));
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return null;
        }
    }
}
