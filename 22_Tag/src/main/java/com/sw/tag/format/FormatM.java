package com.sw.tag.format;

import com.sw.tag.core.Menu;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Date;

public class FormatM {
    public static void dataMaker(HttpServletRequest request) {

        int a = 123456798;
        double b = 0.4566;
        double c = 123123.456456;
        Date date = new Date();

        request.setAttribute("a", a);
        request.setAttribute("b", b);
        request.setAttribute("c", c);
        request.setAttribute("date", date);

        // 과자 객체 저장
        // 3개이상 : 이름/가격/제조일

        ArrayList<Snack> snackList = new ArrayList<>();

        snackList.add(new Snack("감자깡", 1000, new Date()));
        snackList.add(new Snack("꽃게랑", 2000, new Date()));
        snackList.add(new Snack("고래밥", 3000, new Date()));

        request.setAttribute("snackList", snackList);

    }
}
