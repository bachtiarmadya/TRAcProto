/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;
import services.DbConnection;

/**
 *
 * @author bachtiar
 */
@Entity
@Table(name = "Tbl_User")
@XmlRootElement
@NamedQueries({
  @NamedQuery(name = "TblUser.findAll", query = "SELECT t FROM TblUser t")
  , @NamedQuery(name = "TblUser.findByUserId", query = "SELECT t FROM TblUser t WHERE t.userId = :userId")
  , @NamedQuery(name = "TblUser.findByName", query = "SELECT t FROM TblUser t WHERE t.name = :name")
  , @NamedQuery(name = "TblUser.findByEmail", query = "SELECT t FROM TblUser t WHERE t.email = :email")
  , @NamedQuery(name = "TblUser.findByPassword", query = "SELECT t FROM TblUser t WHERE t.password = :password")
  , @NamedQuery(name = "TblUser.findByRbac", query = "SELECT t FROM TblUser t WHERE t.rbac = :rbac")
  , @NamedQuery(name = "TblUser.findByToken", query = "SELECT t FROM TblUser t WHERE t.token = :token")
  , @NamedQuery(name = "TblUser.findByCreatedAt", query = "SELECT t FROM TblUser t WHERE t.createdAt = :createdAt")
  , @NamedQuery(name = "TblUser.findByUpdatedAt", query = "SELECT t FROM TblUser t WHERE t.updatedAt = :updatedAt")})
public class TblUser implements Serializable {

  private static final long serialVersionUID = 1L;
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Basic(optional = false)
  @Column(name = "UserId")
  private Integer userId;
  @Basic(optional = false)
  @Column(name = "Name")
  private String name;
  @Basic(optional = false)
  @Column(name = "Email")
  private String email;
  @Basic(optional = false)
  @Column(name = "Password")
  private String password;
  @Basic(optional = false)
  @Column(name = "Rbac")
  private String rbac;
  @Basic(optional = false)
  @Column(name = "Token")
  private String token;
  @Basic(optional = false)
  @Column(name = "CreatedAt")
  private String createdAt;
  @Basic(optional = false)
  @Column(name = "UpdatedAt")
  private String updatedAt;

  DbConnection conn = new DbConnection();

  public TblUser() {
  }

  public TblUser(Integer userId) {
    this.userId = userId;
  }

  public TblUser(Integer userId, String name, String email, String password, String rbac, String token, String createdAt, String updatedAt) {
    this.userId = userId;
    this.name = name;
    this.email = email;
    this.password = password;
    this.rbac = rbac;
    this.token = token;
    this.createdAt = createdAt;
    this.updatedAt = updatedAt;
  }

  public Integer getUserId() {
    return userId;
  }

  public void setUserId(Integer userId) {
    this.userId = userId;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

  public String getPassword() {
    return password;
  }

  public void setPassword(String password) {
    this.password = password;
  }

  public String getRbac() {
    return rbac;
  }

  public void setRbac(String rbac) {
    this.rbac = rbac;
  }

  public String getToken() {
    return token;
  }

  public void setToken(String token) {
    this.token = token;
  }

  public String getCreatedAt() {
    return createdAt;
  }

  public void setCreatedAt(String createdAt) {
    this.createdAt = createdAt;
  }

  public String getUpdatedAt() {
    return updatedAt;
  }

  public void setUpdatedAt(String updatedAt) {
    this.updatedAt = updatedAt;
  }

  @Override
  public int hashCode() {
    int hash = 0;
    hash += (userId != null ? userId.hashCode() : 0);
    return hash;
  }

  @Override
  public boolean equals(Object object) {
    // TODO: Warning - this method won't work in the case the id fields are not set
    if (!(object instanceof TblUser)) {
      return false;
    }
    TblUser other = (TblUser) object;
    if ((this.userId == null && other.userId != null) || (this.userId != null && !this.userId.equals(other.userId))) {
      return false;
    }
    return true;
  }

  @Override
  public String toString() {
    return "model.TblUser[ userId=" + userId + " ]";
  }

  public List LoginAdmin(String email, String password) {
    List data = new ArrayList();
    ResultSet rs = null;
    try {
      String sql = "SELECT * FROM `Tbl_User` WHERE `Email` = '" + email + "' AND `Password` = '" + password + "'";
      rs = conn.ambilData(sql);
      while (rs.next()) {
        TblUser usr = new TblUser();
        usr.setUserId(rs.getInt("UserId"));
        usr.setName(rs.getString("Name"));
        usr.setEmail(rs.getString("Email"));
        usr.setPassword(rs.getString("Password"));
        usr.setRbac(rs.getString("Rbac"));
        usr.setToken(rs.getString("Token"));
        usr.setCreatedAt(rs.getString("CreatedAt"));
        usr.setUpdatedAt(rs.getString("UpdatedAt"));
        data.add(usr);
      }
    } catch (Exception a) {
      System.out.println("Terjadi kesalahaan login, pada :\n" + a);
    } finally {
      conn.diskonek(rs);
    }
    return data;
  }

}
