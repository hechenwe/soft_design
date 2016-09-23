package com.sooncode.soft.module.entity.user;

import java.io.Serializable;
/**
*用户
* @author hechen 
* 
*/ 
public class User implements Serializable{ 
	 private static final long serialVersionUID = 1L;
	 /** 用户编号 */ 
	 private String userId; 
	 /** 用户昵称(建议用真实姓名) */
	 private String userNickname ;
	 /** 数据状态 */
	 private String dataState ;
	 /** 公司编号 */
	 private String companyId ;
	 /** 用户名(邮箱 或 手机号码) */
	 private String userName ;
	 /** 登录密码 */
	 private String password ;
	 /** 角色编号 */
	 private String roleId ;

	 /** 用户昵称(建议用真实姓名) */
	 public String getUserNickname() { 
	 	 return userNickname;
	 }
	 /** 用户昵称(建议用真实姓名) */
	 public void setUserNickname(String userNickname) {
	 	 this.userNickname = userNickname;
	 }

	 /** 数据状态 */
	 public String getDataState() { 
	 	 return dataState;
	 }
	 /** 数据状态 */
	 public void setDataState(String dataState) {
	 	 this.dataState = dataState;
	 }

	 /** 用户编号 */
	 public String getUserId() { 
	 	 return userId;
	 }
	 /** 用户编号 */
	 public void setUserId(String userId) {
	 	 this.userId = userId;
	 }

	 /** 公司编号 */
	 public String getCompanyId() { 
	 	 return companyId;
	 }
	 /** 公司编号 */
	 public void setCompanyId(String companyId) {
	 	 this.companyId = companyId;
	 }

	 /** 用户名(邮箱 或 手机号码) */
	 public String getUserName() { 
	 	 return userName;
	 }
	 /** 用户名(邮箱 或 手机号码) */
	 public void setUserName(String userName) {
	 	 this.userName = userName;
	 }

	 /** 登录密码 */
	 public String getPassword() { 
	 	 return password;
	 }
	 /** 登录密码 */
	 public void setPassword(String password) {
	 	 this.password = password;
	 }

	 /** 角色编号 */
	 public String getRoleId() { 
	 	 return roleId;
	 }
	 /** 角色编号 */
	 public void setRoleId(String roleId) {
	 	 this.roleId = roleId;
	 }

}

