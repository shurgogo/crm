package org.example.crm.utils;

import org.example.crm.exception.ParamsException;

public class AssertUtil {

    /**
     * 条件满足抛出异常
     *
     * @param flag
     * @param msg
     */
    public static void isTrue(Boolean flag, String msg){
        if (flag) {
            throw new ParamsException(msg);
        }
    }
}
