package com.kh.pet.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.kh.pet.service.PetService;
import com.kh.pet.vo.PetVO;
import com.kh.pet.vo.VisitVO;
import com.kh.pet.util.MyDateUtil;


@Controller
@RequestMapping("/pet")
public class PetController {

	@Resource(name="petService")
	private PetService petService;
	
	@GetMapping("/home")
	public String home(Model model) {
		String date = MyDateUtil.getNowDateToString();//2022-05
		List<PetVO> dateCutList = petService.selectThatDayCutForHome(date);
		
		
		model.addAttribute("dateCutList", dateCutList);
		
		return "pet/home";
	}
	
	@GetMapping("/dogReg")
	public String dogReg() {

	
		return "pet/dog_reg";
	}

	@PostMapping("/insertDogReg")
	public String insertDogReg(PetVO petVO, HttpSession session){
		petService.insertPetCutInfo(petVO);
	
		return "pet/home";
	}
	
	@GetMapping("/petList")
	public String petList(Model model, PetVO petVO) {
		List<PetVO> list = petService.selectPetList(petVO);
		
		model.addAttribute("petList",list);
		return "pet/pet_list";
	}
	
	
	@GetMapping("/petInfo")
	public String petInfo() {
		
		
		return "pet/pet_info";
	}
	
	@GetMapping("/reservation")
	public String reservation() {
		
		return "pet/reservation";
	}
	@GetMapping("/calculate")
	public String calculate(Model model) {
		//오늘의 년월 데이터
		String date = MyDateUtil.getNowYearMonthToString();//2022-05
		List<VisitVO> sellList = petService.selectDateMoney(date);
		
		//리스트 데이터를 js에서 받기 위해서는
		//리스트를 문자열 형태로 바꾸어 주어야 한다.
		try {
			ObjectMapper mapper = new ObjectMapper();
	        String jsonStr = mapper.writeValueAsString(sellList);
	        System.out.println(jsonStr);
	        model.addAttribute("sellList", jsonStr);
	        
	     } catch (JsonProcessingException e) {
	        // TODO Auto-generated catch block
	        e.printStackTrace();
	     }
		
		return "pet/calculate";
	}
	
	
	@GetMapping("/petSearch")
	public String petSearch() {
		
		
		return "pet/petSearch";
	}
	
	@ResponseBody
	@PostMapping("/petSearch")
	public List<PetVO> petSearch(String petTell) {
		//나오는 데이터를 화면에 출력한뒤 원하는 개를 선택시 그 개의 미용전적 검색
		return petService.selectPetSearch(petTell);
	}
	
	@ResponseBody
	@PostMapping("petSearchInfo")
	public List<PetVO> petSearchInfo(int petNum) {
		List<PetVO> list = petService.selectDetailPetSearch(petNum);
		System.out.println(list);
		return list;
	}
	
	@ResponseBody
	@PostMapping("/calculateAgain")
	//달력에서 이전, 다음 버튼 클릭하면 실행
	public String calculateAgain(String sellMonth, Model model) {
	
//		//오늘의 년월 데이터
//		String date = MyDateUtil.getNowYearMonthToString();//2022-05
		List<VisitVO> sellList = petService.selectDateMoney(sellMonth);
		String jsonStr = "";
		try {
			ObjectMapper mapper = new ObjectMapper();
	        jsonStr = mapper.writeValueAsString(sellList);
	     } catch (JsonProcessingException e) {
	        e.printStackTrace();
	     }
		
		return jsonStr;
	}
	
	
	@ResponseBody
	@PostMapping("/dogRegAgain")
	//달력에서 이전, 다음 버튼 클릭하면 실행
	public List<PetVO> dogRegAgain(PetVO petVO, Model model) {
		
//		//오늘의 년월 데이터
//		String date = MyDateUtil.getNowYearMonthToString();//2022-05
		//List<PetVO> searchList = petService.selectSearchPet(searchData);
		
		List<PetVO> list = petService.selectPetList(petVO);
		
		
		return list;
	}
	
	@ResponseBody
	@PostMapping("/calculateVisitPetList")
	public List<PetVO> calculateVisitPetList(PetVO petVO) {
		String date = MyDateUtil.getNowYearMonthToString();
		
		
		return petService.selectPetList2(petVO);
	}
	
}










