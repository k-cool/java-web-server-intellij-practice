package com.sw.tag.core;

import javax.servlet.http.HttpServletRequest;
import java.time.LocalDate;
import java.util.ArrayList;

public class CoreM {
    public static void work(HttpServletRequest request) {
        int year = Integer.parseInt(request.getParameter("y"));
        int curYear = LocalDate.now().getYear();
        int age = curYear - year + 1;

        request.setAttribute("age", age);

        int[] arr = {1, 2, 3, 4, 5};
        request.setAttribute("arr", arr);

        ArrayList<Menu> menus = new ArrayList<>();

        menus.add(new Menu("휠렛세트", 7500));
        menus.add(new Menu("짜장면", 8500));
        menus.add(new Menu("차돌짬뽕", 12000));
        menus.add(new Menu("볶음밥", 9000));
        menus.add(new Menu("삼겹덮밥", 11900));

        request.setAttribute("menus", menus);

    }
}
