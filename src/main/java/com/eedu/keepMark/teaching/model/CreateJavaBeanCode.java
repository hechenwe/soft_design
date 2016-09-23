package com.eedu.keepMark.teaching.model;

import com.sooncode.jdbc.util.create_entity.TableBuilder;
/**
 * 創建實體類代碼 
 * @author pc
 *
 */
public class CreateJavaBeanCode {

	public static void main(String[] args) {
		TableBuilder t = new TableBuilder("127.0.0.1", "3306", "root", "hechenwe@gmail.com", "soft_design_user");

		System.out.println(t.getEntityClassCode("company"));
	}
}
