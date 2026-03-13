package com.sw.unit;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class ResultBean {
    private String fromStr;
    private String toStr;
    private double result;
    private String className;
}
