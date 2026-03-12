package com.sw.test;

import javax.servlet.http.HttpServletRequest;

public class Model {

    public static void calcProfile(HttpServletRequest request) {
        String name = request.getParameter("name");
        String age = request.getParameter("age");
        String gender = request.getParameter("gender");
        String[] hobbies = request.getParameterValues("hobby");

        String[] hobbiesKo = new String[hobbies.length];

        for (int i = 0; i < hobbies.length; i++) {
            switch (hobbies[i]) {
                case "ex":
                    hobbiesKo[i] = "운동";
                    break;
                case "co":
                    hobbiesKo[i] = "요리";
                    break;
                case "de":
                    hobbiesKo[i] = "개발";
                    break;
                default:
                    break;
            }
        }
        
        Bean b = new Bean(name, age, gender, hobbiesKo);

        request.setAttribute("bean", b);
    }
}
