package org.example.crm.base;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.stereotype.Component;

@Component("resultInfo")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class ResponseResult {
    private Integer code = 200;
    private String msg = "success";
    private Object data;

    public void setAll(Integer code, String msg, Object result) {
        this.code = code;
        this.msg = msg;
        this.data = result;
    }

    @Override
    public String toString() {
        return "ResultInfo{" +
                "code=" + code +
                ", msg='" + msg + '\'' +
                ", result=" + data +
                '}';
    }
}
