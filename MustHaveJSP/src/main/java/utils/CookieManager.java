package utils;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CookieManager {
    // ����� �̸�, ��, ���� �Ⱓ �������� ���ο� ��Ű�� �����մϴ�.
    public static void makeCookie(HttpServletResponse response, String cName,
            String cValue, int cTime) {
        Cookie cookie = new Cookie(cName, cValue); // ��Ű ����
        cookie.setPath("/");         // ��� ����
        cookie.setMaxAge(cTime);     // ���� �Ⱓ ����
        response.addCookie(cookie);  // ���� ��ü�� �߰�
    }

    // ����� �̸��� ��Ű�� ã�� �� ���� ��ȯ�մϴ�.
    public static String readCookie(HttpServletRequest request, String cName) {
        String cookieValue = "";  // ��ȯ ��

        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie c : cookies) {
                String cookieName = c.getName();
                if (cookieName.equals(cName)) {
                    cookieValue = c.getValue();  // ��ȯ �� ����
                }
            }
        }
        return cookieValue;
    }

    // ����� �̸��� ��Ű�� �����մϴ�.
    public static void deleteCookie(HttpServletResponse response, String cName) {
        makeCookie(response, cName, "", 0);
    }
}