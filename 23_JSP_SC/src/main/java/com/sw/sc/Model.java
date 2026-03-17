package com.sw.sc;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.net.HttpCookie;

public class Model {
    public static void make(HttpServletRequest request, HttpServletResponse response) {
        String a = request.getParameter("a");

        String bbb = "zzz";

        request.setAttribute("b", bbb);

        /*
            param, attr
            - 특성상 third에서 못씀

            session, cookie

        */

        String ccc = "세션~~~!";

        HttpSession hs = request.getSession();

        hs.setAttribute("c", ccc);

        hs.setMaxInactiveInterval(10); // 10초


        /*

            서버와 클라이언트 연결상태(접속한거)
            연결만 사랑있으면 이사이트 어디에서든 사용 가능

            연결 끊어지면 못씀(접속 종료 / 브라우저 다 닫은거)
            세션 유지시간 (기본 30분)

            유지시간 이내에 '요청'등이 일어나지 않으면 죽음
            시간내에 '요청' 등 작업을 하면 갱신됨(유지시간 초기화)

         */

        /*
            cookie

            - 사용자 컴퓨터에 파일로 저장
            - 브라우저를 꺼도, 접속을 끊어도, 재부팅을 해도 살아있음.
            - 시간제한 걸 수 있음.

         */

        String ddd = "쿠키~~";

        Cookie coo = new Cookie("d", ddd);

        coo.setMaxAge(5 * 60); // 5분

        System.out.println(coo.toString());
        
        response.addCookie(coo);
    }
}
