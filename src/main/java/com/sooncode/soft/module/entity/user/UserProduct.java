package com.sooncode.soft.module.entity.user;

import java.io.Serializable;
/**
*用户产品
* @author hechen 
* 
*/ 
public class UserProduct implements Serializable{ 
	 private static final long serialVersionUID = 1L;
	 /** 用户产品编号 */ 
	 private String userProductId; 
	 /** 产品编号 */
	 private String productId ;
	 /** 用户编号 */
	 private String userId ;

	 /** 产品编号 */
	 public String getProductId() { 
	 	 return productId;
	 }
	 /** 产品编号 */
	 public void setProductId(String productId) {
	 	 this.productId = productId;
	 }

	 /** 用户编号 */
	 public String getUserId() { 
	 	 return userId;
	 }
	 /** 用户编号 */
	 public void setUserId(String userId) {
	 	 this.userId = userId;
	 }

	 /** 用户产品编号 */
	 public String getUserProductId() { 
	 	 return userProductId;
	 }
	 /** 用户产品编号 */
	 public void setUserProductId(String userProductId) {
	 	 this.userProductId = userProductId;
	 }

}

