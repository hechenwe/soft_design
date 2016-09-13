package com.sooncode.soft.module.entity;

import com.sooncode.soft.module.supers.DataState;

/**
 * 公司
 * 
 * @author he chen
 *
 */
public class Company  extends DataState{

	/** 公司编号 */
	private String companyId;

	/** 公司全称 */
	protected String companyAllName;

	/** 公司简称 */
	protected String companySimpleName;

	/** 公司商标资源路径 */
	protected String logoUrl;

	 
	// --------------------------------------------------------

	public String getCompanyId() {
		return companyId;
	}

	public void setCompanyId(String companyId) {
		this.companyId = companyId;
	}

	public String getCompanyAllName() {
		return companyAllName;
	}

	public void setCompanyAllName(String companyAllName) {
		this.companyAllName = companyAllName;
	}

	public String getCompanySimpleName() {
		return companySimpleName;
	}

	public void setCompanySimpleName(String companySimpleName) {
		this.companySimpleName = companySimpleName;
	}

	public String getLogoUrl() {
		return logoUrl;
	}

	public void setLogoUrl(String logoUrl) {
		this.logoUrl = logoUrl;
	}

	 

}
