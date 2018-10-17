/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.TblUser;

/**
 *
 * @author bachtiar
 */
public class Ctl_Login extends HttpServlet {

  protected void doGet(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {

    String action = request.getParameter("action");
    if (action.equals("logout")) {
      HttpSession session = request.getSession();
      session.invalidate();
      response.sendRedirect("index.jsp");
    }

  }

  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
    String proses = request.getParameter("post");

    if (proses.equals("Login")) {
      String email = request.getParameter("email");
      String password = request.getParameter("password");

      //String tag=request.getParameter("tag");
      if (password == null || password.equals("")) {   //validasi apabila field belum diisi
        response.sendRedirect("login.jsp");
      } else {
        TblUser tblUser = new TblUser();
        List<TblUser> listUser = new ArrayList<TblUser>();
        listUser = tblUser.LoginAdmin(email, password);
        if (listUser.isEmpty()) {
          response.sendRedirect("login.jsp");
          PrintWriter out = response.getWriter();
          request.getRequestDispatcher("login.jsp").include(request, response);
        } else {
          HttpSession session = request.getSession(true);
          session.setAttribute("Name", listUser.get(0).getName());
          session.setAttribute("Email", listUser.get(0).getEmail());
          session.setAttribute("Password", listUser.get(0).getPassword());
          session.setAttribute("Rbac", listUser.get(0).getRbac());
          session.setAttribute("Token", listUser.get(0).getToken());
          session.setAttribute("CreatedAt", listUser.get(0).getCreatedAt());
          session.setAttribute("UpdatedAt", listUser.get(0).getUpdatedAt());

          response.sendRedirect("index.jsp");
        }
      }
    }

  }
}
