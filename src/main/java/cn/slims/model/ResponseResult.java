package cn.slims.model;

import java.io.Serializable;

/**
 * 定义返回json数据请求的格式
 *
 * @author linpeilie
 */
public class ResponseResult implements Serializable {
    private int status;
    private boolean success;
    private Object data;
    private String msg;
    private int count;

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public boolean isSuccess() {
        return success;
    }

    public void setSuccess(boolean success) {
        this.success = success;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }
}
