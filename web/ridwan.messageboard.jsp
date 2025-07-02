<%-- 
    Document   : kevin.messageboard
    Created on : 2 Jul 2025, 09.59.59
    Author     : Lenovo
--%>

<%@page import="jspproject1.Messager"%>
<%
    Messager messager = new Messager("Ridwan"); 

    if ("POST".equalsIgnoreCase(request.getMethod())) {
        String pengirim = request.getParameter("pengirim");
        String pesan = request.getParameter("pesan");
        if (pengirim != null && !pengirim.trim().isEmpty() && pesan != null && !pesan.trim().isEmpty()) {
            messager.addMessage(pengirim, pesan);
            response.sendRedirect("ridwan.messageboard.jsp");
            return;
        }
    }

    request.setAttribute("list", messager.getList());
    request.setAttribute("pemilik", messager.getTujuan());

    RequestDispatcher dispatcher = request.getRequestDispatcher("kevin.messageboard.view.jsp");
    dispatcher.forward(request, response);
%>