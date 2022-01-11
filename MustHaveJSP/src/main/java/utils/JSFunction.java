package utils;

import javax.servlet.jsp.JspWriter;

public class JSFunction {
    // �޽��� �˸�â�� ��� �� ����� URL�� �̵��մϴ�.
    public static void alertLocation(String msg, String url, JspWriter out) {
        try {
            String script = ""  // ������ �ڹٽ�ũ��Ʈ �ڵ�
                          + "<script>"
                          + "    alert('" + msg + "');"
                          + "    location.href='" + url + "';"
                          + "</script>";
            out.println(script);  // �ڹٽ�ũ��Ʈ �ڵ带 out ���� ��ü�� ���(����)
        }
        catch (Exception e) {}
    }

    // �޽��� �˸�â�� ��� �� ���� �������� ���ư��ϴ�.
    public static void alertBack(String msg, JspWriter out) {
        try {
            String script = ""
                          + "<script>"
                          + "    alert('" + msg + "');"
                          + "    history.back();"
                          + "</script>";
            out.println(script);
        }
        catch (Exception e) {}
    }

}