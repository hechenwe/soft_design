package com.sooncode.soft.module.entity.user;

import java.io.Serializable;
/**
*公司
* @author hechen 
* 
*/ 
public class Company implements Serializable{ 
	 private static final long serialVersionUID = 1L;
	 /** 公司编号 */ 
	 private String companyId; 
	 /** 数据状态 */
	 private String dataState ;
	 /** 公司全称 */
	 private String companyAllName ;
	 /** 公司商标资源路径 */
	 private String logoUrl ;
	 /** 公司简称 */
	 private String companySimpleName ;

	 /** 数据状态 */
	 public String getDataState() { 
	 	 return dataState;
	 }
	 /** 数据状态 */
	 public void setDataState(String dataState) {
	 	 this.dataState = dataState;
	 }

	 /** 公司编号 */
	 public String getCompanyId() { 
	 	 return companyId;
	 }
	 /** 公司编号 */
	 public void setCompanyId(String companyId) {
	 	 this.companyId = companyId;
	 }

	 /** 公司全称 */
	 public String getCompanyAllName() { 
	 	 return companyAllName;
	 }
	 /** 公司全称 */
	 public void setCompanyAllName(String companyAllName) {
	 	 this.companyAllName = companyAllName;
	 }

	 /** 公司商标资源路径 */
	 public String getLogoUrl() { 
	 	 return logoUrl;
	 }
	 /** 公司商标资源路径 */
	 public void setLogoUrl(String logoUrl) {
	 	 this.logoUrl = logoUrl;
	 }

	 /** 公司简称 */
	 public String getCompanySimpleName() { 
	 	 return companySimpleName;
	 }
	 /** 公司简称 */
	 public void setCompanySimpleName(String companySimpleName) {
	 	 this.companySimpleName = companySimpleName;
	 }

}

