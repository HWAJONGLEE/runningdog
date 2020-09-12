package com.kh.runningdog.dboard.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.kh.runningdog.common.ImageUtil.Image;
import com.kh.runningdog.common.ImageUtil.ImageLoader;
import com.kh.runningdog.dboard.model.service.DboardService;
import com.kh.runningdog.dboard.model.vo.Dboard;

@Controller
public class DboardController {
	private static final Logger logger = LoggerFactory.getLogger(DboardController.class);
	
	@Autowired
	private DboardService dboardService;
	
	@RequestMapping("dlistPage.do")
	public String moveDlistPage() {
		return "animal/chooseList";
	}
	
	@RequestMapping("dinsertPage.do")
	public String moveDinsertPage() {
		return "animal/chooseWrite";
	}
	
	@RequestMapping(value="dinsert.do", method=RequestMethod.POST)
	public String insertDboard(Dboard dboard, HttpServletRequest request,HttpServletResponse response,
			@RequestParam(name="upfile", required=false) MultipartFile file, Model model)  {
		logger.info("dinsert.do run..." + dboard + "Image file : " + file.getOriginalFilename());
	
		String viewImage = file.getOriginalFilename();
		dboard.setviewImage(viewImage);
		dboard.setdContent(dboard.getdContent().replace("\r\n","<br>"));
        Image img = null;
		if(!(viewImage == null || viewImage.equals(" "))) {
			 String savePath = request.getSession().getServletContext().getRealPath("resources/dboard/dboardImage");
			 SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
	         String viewRename = sdf.format(new java.sql.Date(System.currentTimeMillis()));
	         String listRename = viewRename + "l." + viewImage.substring(viewImage.lastIndexOf(".") + 1);
	         viewRename += "v." + viewImage.substring(viewImage.lastIndexOf(".") + 1);
	         String viewPath = savePath + "\\" + viewRename; //view 이미지 파일 경로
	         String listPath = savePath + "\\" + listRename; //list 이미지 파일 경로

			try {
				//하나의 스트림에 파일 연결은 하나 밖에 못함으로 
				//저장한 파일 복사해서 이미지 리사이징 처리
				file.transferTo(new File(savePath + "\\" + viewRename));
				FileInputStream fin = new FileInputStream(viewPath);
				FileOutputStream fout = new FileOutputStream(listPath);

				int data = -1;
				byte[] buffer = new byte[1024];
				while ((data = fin.read(buffer, 0, buffer.length)) != -1) {
					fout.write(buffer, 0, buffer.length);
				}
				img = ImageLoader.fromFile(listPath);

				//너비 300으로 리사이징 처리 화질은 최대한 보정
				img.getResizedToWidth (300) .soften (0.0f) .writeToJPG (new File (listPath), 0.95f);

			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}

	         dboard.setviewImage(viewRename);
	         dboard.setlistImage(listRename);
	      } 
	      String url="";
	      if(dboardService.insertDboard(dboard) > 0) {
	         url= "redirect:dboardList.do";
	      } else {
	    	model.addAttribute("msg", "게시글 등록 실패 다시 확인해 주세요");
	    	model.addAttribute("url","dboardList.do");
	    	url ="common/errorDboard";
	      }
	      return url;
		}
	@RequestMapping(value="dboardList.do" ,method= {RequestMethod.POST,RequestMethod.GET})
	public String dboardList(HttpServletRequest request, Model model, @ModelAttribute("Dboard")Dboard dboard,
								HttpServletResponse response) {
		
		dboard.setSearchFiled(request.getParameter("searchFiled"));
		dboard.setSearchValue(request.getParameter("searchValue"));
		dboard.setdCategory(request.getParameter("dCategory"));
		dboard.setdLocal(request.getParameter("dLocal"));
		 logger.info("SearchFiled : " + dboard.getSearchFiled());
		 logger.info("SearchValue : " + dboard.getSearchValue());
		 int totalCount = dboardService.selectListCount(dboard); //게시물 총갯수를 구한다
		 dboard.setTotalCount(totalCount); //페이징 처리를 위한 setter 호출
		 model.addAttribute("pageVO", dboard);
		 logger.info("PageSize // 한 페이지에 보여줄 게시글 수 : " + dboard.getPageSize());
		 logger.info("PageNo // 페이지 번호 : " + dboard.getPageNo());
		 logger.info("StartRowNo //조회 시작 row 번호 : " + dboard.getStartRowNo());
		 logger.info("EndRowNo //조회 마지막 now 번호 : " + dboard.getEndRowNo());
		 logger.info("FirstPageNo // 첫 번째 페이지 번호 : " + dboard.getFirstPageNo());
		 logger.info("FinalPageNo // 마지막 페이지 번호 : " + dboard.getFinalPageNo());
		 logger.info("PrevPageNo // 이전 페이지 번호 : " + dboard.getPrevPageNo());
		 logger.info("NextPageNo // 다음 페이지 번호 : " + dboard.getNextPageNo());
		 logger.info("StartPageNo // 시작 페이지 (페이징 네비 기준) : " + dboard.getStartPageNo());
		 logger.info("EndPageNo // 끝 페이지 (페이징 네비 기준) : " + dboard.getEndPageNo());
		 logger.info("totalCount // 게시 글 전체 수 : " + totalCount);
		 
		 ArrayList<Dboard> dboardList = dboardService.selectList(dboard);
		
		model.addAttribute("dLocal", dboard.getdLocal());
		model.addAttribute("dCategory", dboard.getdCategory());
		model.addAttribute("totalCount", totalCount);
		model.addAttribute("dboardList", dboardList);

		String url = "";
		if (totalCount > 0) {
			url = "animal/chooseList";
		}else {
	    	model.addAttribute("msg", "검색 결과가 존재 하지 않습니다");
	    	model.addAttribute("url","dboardList.do");
	    	url ="common/errorDboard";
		}
		return url;
	}
	@RequestMapping("dboardView.do")
	public String selectOne(@RequestParam("dNum") int dNum, @RequestParam("pageNo") int pageNo, Model model,
							HttpServletResponse response) {
		Dboard dboard = dboardService.selectOne(dNum);
		logger.info("dboard View게시글 번호" + dNum);
		logger.info("dboard View페이지 번호" + pageNo);
		String url = "";
		if(dboard != null) {
			model.addAttribute("dboard", dboard);
			model.addAttribute("pageNo", pageNo);
			url ="animal/chooseView";
		}else {
	    	model.addAttribute("msg", "게시글 보기 실패");
	    	model.addAttribute("url","dboardList.do");
	    	url ="common/errorDboard";
		}
		return url;
	}
	
	
}
