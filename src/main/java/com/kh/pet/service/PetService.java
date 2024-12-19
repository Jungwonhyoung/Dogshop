package com.kh.pet.service;

import java.util.List;

import com.kh.pet.vo.PetVO;
import com.kh.pet.vo.VisitVO;



public interface PetService {
	
	void insertPetCutInfo(PetVO petVO);
		
	List<PetVO> selectPetList(PetVO petVO);
	
	List<PetVO> selectPetInfo(String petTell);
	
	List<VisitVO> selectDateMoney(String visitDate);
	
	List<PetVO> selectPetSearch(String petTell);
	
	List<PetVO> selectPetselect(String petTell);
	
	List<PetVO> selectDetailPetSearch(int petNum);
	
	List<PetVO> selectSearchPet(String petTell);
	
	List<PetVO> selectThatDayCutForHome(String visitDate);
	
	List<PetVO> selectPetList2(PetVO petVO);
}









