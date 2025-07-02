<%@page import="jspproject1.Messager"%>
<%
    Messager messager = new Messager("Raffi"); 

    if ("POST".equalsIgnoreCase(request.getMethod())) {
        String pengirim = request.getParameter("pengirim");
        String pesan = request.getParameter("pesan");
        if (pengirim != null && !pengirim.trim().isEmpty() && pesan != null && !pesan.trim().isEmpty()) {
            messager.addMessage(pengirim, pesan);
            response.sendRedirect("raffi.messageboard.jsp");
            return;
        }
    }

    request.setAttribute("list", messager.getList());
    request.setAttribute("pemilik", messager.getTujuan());

    RequestDispatcher dispatcher = request.getRequestDispatcher("raffi.messageboard.view.jsp");
    dispatcher.forward(request, response);
%>