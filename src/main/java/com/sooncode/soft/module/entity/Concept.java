package com.sooncode.soft.module.entity;

import com.sooncode.soft.module.supers.DataState;

/**
 * 概念
 * 
 * @author he chen
 *
 */
public class Concept extends DataState {
	/** 概念编号 */
	private String conceptId;

	/** 产品编号 */
	private String productId;

	/** 概念名称 */
	private String conceptName;

	/** 概念定义 */
	private String definition;

	/** 举例说明 */
	private String conceptExplain;

	public String getConceptId() {
		return conceptId;
	}

	public void setConceptId(String conceptId) {
		this.conceptId = conceptId;
	}

	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	public String getConceptName() {
		return conceptName;
	}

	public void setConceptName(String conceptName) {
		this.conceptName = conceptName;
	}

	public String getDefinition() {
		return definition;
	}

	public void setDefinition(String definition) {
		this.definition = definition;
	}

	public String getConceptExplain() {
		return conceptExplain;
	}

	public void setConceptExplain(String conceptExplain) {
		this.conceptExplain = conceptExplain;
	}

}
