package com.kh.pet.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.pet.vo.PetVO;
import com.kh.pet.vo.VisitVO;




@Service("petService")
public class PetServiceImpl implements PetService {
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public void insertPetCutInfo(PetVO petVO) {
		sqlSession.insert("petMapper.insertPetCutInfo", petVO);
	}

	@Override
	public List<PetVO> selectPetList(PetVO petVO) {
		
		 return sqlSession.selectList("petMapper.selectPetList", petVO);
	}

	@Override
	public List<PetVO> selectPetInfo(String petTell) {
		return sqlSession.selectList("petMapper.selectPetInfo", petTell);
	}

	@Override
	public List<VisitVO> selectDateMoney(String visitDate) {
		//쿼리에 petDate를 보냄
		return sqlSession.selectList("petMapper.calculateThatDayMoneyForCalender", visitDate);
	}

	@Override
	public List<PetVO> selectPetSearch(String petTell) {
		return sqlSession.selectList("petMapper.selectPetSearch", petTell);
	}

	@Override
	public List<PetVO> selectPetselect(String petTell) {
		
		return sqlSession.selectList("petMapper.selectPetselect",petTell);
	}

	@Override
	public List<PetVO> selectDetailPetSearch(int petNum) {
		return sqlSession.selectList("petMapper.selectDetailPetSearch", petNum);
	}

	@Override
	public List<PetVO> selectSearchPet(String petTell) {
		return sqlSession.selectList("petMapper.selectSearchPet",petTell);
	}

	@Override
	public List<PetVO> selectThatDayCutForHome(String visitDate) {
		return sqlSession.selectList("petMapper.selectThatDayCutForHome",visitDate   );
	}


	@Override
	public List<PetVO> selectPetList2(PetVO petVO) {
		
		 return sqlSession.selectList("petMapper.selectPetList2", petVO);
	}

	
	

}








