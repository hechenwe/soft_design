package com.sooncode.soft.module.entity.user;

import java.io.Serializable;
/**
*角色
* @author hechen 
* 
*/ 
public class Role implements Serializable{ 
	 private static final long serialVersionUID = 1L;
	 /** 角色编号 */ 
	 private String roleId; 
	 /** 数据状态 */
	 private String dataState ;
	 /** 角色代码 */
	 private String roleCode ;
	 /** 角色名称 */
	 private String roleName ;

	 /** 数据状态 */
	 public String getDataState() { 
	 	 return dataState;
	 }
	 /** 数据状态 */
	 public void setDataState(String dataState) {
	 	 this.dataState = dataState;
	 }

	 /** 角色代码 */
	 public String getRoleCode() { 
	 	 return roleCode;
	 }
	 /** 角色代码 */
	 public void setRoleCode(String roleCode) {
	 	 this.roleCode = roleCode;
	 }

	 /** 角色名称 */
	 public String getRoleName() { 
	 	 return roleName;
	 }
	 /** 角色名称 */
	 public void setRoleName(String roleName) {
	 	 this.roleName = roleName;
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

