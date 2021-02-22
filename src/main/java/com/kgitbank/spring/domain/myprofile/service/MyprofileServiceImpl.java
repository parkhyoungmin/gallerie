package com.kgitbank.spring.domain.myprofile.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kgitbank.spring.domain.account.mapper.AccountMapper;
import com.kgitbank.spring.domain.model.MemberVO;
import com.kgitbank.spring.domain.myprofile.mapper.MyprofileMapper;
import com.kgitbank.spring.global.util.SecurityPwEncoder;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class MyprofileServiceImpl implements MyprofileService {

	@Autowired
	private MyprofileMapper mapper;
	
	@Autowired
	private SecurityPwEncoder encoder;
	
	// 회원정보 수정
	public int updateMyprofile(MemberVO vo) {
		return mapper.updateMyprofile(vo);
	}
	
	// 현재 비밀번호 비교하려고 가져오는 쿼리문
	public int currentpw(MemberVO vo) {
		return mapper.currentpw(vo);
	}

	// 비밀번호 수정
	public int updatepw(MemberVO vo) {
		return mapper.updatepw(vo);
	}
	
}
