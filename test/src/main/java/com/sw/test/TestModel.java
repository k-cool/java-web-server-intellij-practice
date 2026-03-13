package com.sw.test;

import javax.servlet.http.HttpServletRequest;

public class TestModel {
    public static void calc(HttpServletRequest request) {
        int cnt = Integer.parseInt(request.getParameter("cnt"));
        int money = Integer.parseInt(request.getParameter("money"));
        int perCost = money / cnt;

        ResultVO rvo = new ResultVO(cnt, money, perCost);

        request.setAttribute("rvo", rvo);

    }
}
