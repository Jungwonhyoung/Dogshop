package com.kh.pet.vo;

import java.util.Arrays;
import java.util.List;

public class PetVO {
	private int petNum;
	private String petName;
	private String petBreed;
	private String petTell;
	private String[] petTells;
	private String petAddr;
	private VisitVO visitVO;
	private List<VisitVO> visitList;
	
	//검색을 위한 변수
	private String searchValue;
	
	public String getSearchValue() {
		return searchValue;
	}
	public void setSearchValue(String searchValue) {
		this.searchValue = searchValue;
	}
	public List<VisitVO> getVisitList() {
		return visitList;
	}
	public void setVisitList(List<VisitVO> visitList) {
		this.visitList = visitList;
	}
	
	public VisitVO getVisitVO() {
		return visitVO;
	}
	public void setVisitVO(VisitVO visitVO) {
		this.visitVO = visitVO;
	}
	public int getPetNum() {
		return petNum;
	}
	public void setPetNum(int petNum) {
		this.petNum = petNum;
	}
	public String getPetName() {
		return petName;
	}
	public void setPetName(String petName) {
		this.petName = petName;
	}
	public String getPetBreed() {
		return petBreed;
	}
	public void setPetBreed(String petBreed) {
		this.petBreed = petBreed;
	}
	
	public String getPetTell() {
		return petTell;
	}
	public void setPetTell(String petTell) {
		this.petTell = petTell;
	}
	public void setPetTells(String[] petTells) {
		this.petTell = petTells[0] + "-" +  petTells[1] + "-" + petTells[2];
	}
	public String getPetAddr() {
		return petAddr;
	}
	public void setPetAddr(String petAddr) {
		this.petAddr = petAddr;
	}
	@Override
	public String toString() {
		return "PetVO [petNum=" + petNum + ", petName=" + petName + ", petBreed=" + petBreed + ", petTell=" + petTell
				+ ", petTells=" + Arrays.toString(petTells) + ", petAddr=" + petAddr + ", visitVO=" + visitVO
				+ ", visitList=" + visitList + ", searchValue=" + searchValue + "]";
	}

	 
	
		
}
