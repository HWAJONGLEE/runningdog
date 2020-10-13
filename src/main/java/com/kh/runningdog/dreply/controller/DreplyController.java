package com.kh.runningdog.dreply.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.runningdog.dreply.model.service.DreplyService;
import com.kh.runningdog.dreply.model.vo.Dreply;

@Controller
public class DreplyController {
		
private static final Logger logger = LoggerFactory.getLogger(DreplyController.class);
	
	@Autowired
	private DreplyService dreplyService;
	

	
	@RequestMapping(value="insertDreply.do", method= RequestMethod.POST)
	public String insertDreply (Dreply dreply, Model model) {
		logger.info("리플 insert 값 : "+ dreply + "게시글 번호 : " + dreply.getdNum());
		logger.info("댓글 insert dreply 값 :" + dreply);
		
		dreply.setDreContent(dreply.getDreContent().replaceAll("\r\n", "<br>"));
		
		String url = "";
		if (dreplyService.insertDreply(dreply) > 0) {
			model.addAttribute("msg", "댓글을 등록 했습니다.");
			model.addAttribute("url", "dboardView.do?dNum=" + dreply.getdNum());
			url = "common/alertDboard";
		}else {
			model.addAttribute("msg", "댓글 등록에 실패 했습니다.");
			model.addAttribute("url", "dboardView.do?dNum=" + dreply.getdNum());
			url = "common/alertDboard";
		}
		return url;
	}
	
	@RequestMapping("updateDreply.do")
	public String updateDreply (Dreply dreply, Model model) {
		logger.info("댓글 update 값 : "+ dreply);
		
		dreply.setDreContent(dreply.getDreContent().replaceAll("\r\n", "<br>"));
		
		String url = "";
		if (dreplyService.updateDreply(dreply) > 0) {
			model.addAttribute("msg", "댓글수정 완료.");
			model.addAttribute("url", "dboardView.do?dNum=" + dreply.getdNum());
			url = "common/alertDboard";
		}else {
			model.addAttribute("msg", "댓글 수정 실패.");
			model.addAttribute("url", "dboardView.do?dNum=" + dreply.getdNum());
			url = "common/alertDboard";
		}
		return url;
	}
	
	
	@RequestMapping("updateDreplyDel.do")
	public String updateDreplyDel (Dreply dreply, Model model)  {
		logger.info("댓글 삭제 할 값 : " + dreply);
		
		
		String url = "";
		if (dreplyService.updateDreplyDel(dreply) > 0) {
			model.addAttribute("msg", "댓글을 삭제 했습니다.");
			model.addAttribute("url", "dboardView.do?dNum=" + dreply.getdNum());
			url = "common/alertDboard";
		}else {
			model.addAttribute("msg", "댓글 삭제 실패.");
			model.addAttribute("url", "dboardView.do?dNum=" + dreply.getdNum());
			url = "common/alertDboard";
		}
		return url;
	}
	
	@RequestMapping(value="insertDreplyLevel.do", method=RequestMethod.POST)
	public String insertDreplyLevel (Dreply dreply,Model model){
		
		dreply.setDreContent(dreply.getDreContent().replaceAll("\r\n", "<br>"));
		
		logger.info("대댓글 작성 할 값 :" + dreply );		
		String url = "";
		if (dreplyService.insertDreplyLevel(dreply) > 0) {
			model.addAttribute("msg", "댓글을 등록 했습니다.");
			model.addAttribute("url", "dboardView.do?dNum=" + dreply.getdNum());
			url = "common/alertDboard";
		}else {
			model.addAttribute("msg", "댓글 등록에 실패 했습니다.");
			model.addAttribute("url", "dboardView.do?dNum=" + dreply.getdNum());
			url = "common/alertDboard";
		}
		return url;
	}
}
	
