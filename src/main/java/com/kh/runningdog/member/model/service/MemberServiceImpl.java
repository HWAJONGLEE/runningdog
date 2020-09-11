package com.kh.runningdog.member.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.runningdog.member.model.dao.MemberDao;
import com.kh.runningdog.member.model.vo.Member;

@Service("memberService")
public class MemberServiceImpl implements MemberService {
	@Autowired
	private MemberDao memberDao;

	@Override
	public ArrayList<Member> selectList() {
		return memberDao.selectList();
	}
	
	@Override
	public Member selectMember(String userId) {
		return memberDao.selectMember(userId);
	}
	
	@Override
	public Member selectLogin(Member member) {
		return memberDao.selectLogin(member);
	}
	
	@Override
	public Member selectUserIdCheck(Member member) {
		return memberDao.selectUserIdCheck(member);
	}
	
	@Override
	public Member selectNicknameCheck(Member member) {
		return memberDao.selectNicknameCheck(member);
	}
	
	@Override
	public Member selectPhoneCheck(Member member) {
		return memberDao.selectPhoneCheck(member);
	}

	@Override
	public int insertMember(Member member) {
		return memberDao.insertMember(member);
	}
	
	@Override
	public int updateMember(Member member) {
		return memberDao.updateMember(member);
	}
	
	@Override
	public int deleteMember(String userId) {
		return memberDao.deleteMember(userId);
	}

	// 채팅에서 유저검색
	@Override
	public ArrayList<Member> selectNicknameCheckList(Member member) {
		return memberDao.selectNicknameCheckList(member);
	}

	@Override
	public int selectNicknameCount(Member member) {
		return memberDao.selectNicknameCount(member);
	}
}
