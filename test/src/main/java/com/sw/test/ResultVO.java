package com.sw.test;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class ResultVO {
    private int cnt;
    private int money;
    private int perCost;
}
