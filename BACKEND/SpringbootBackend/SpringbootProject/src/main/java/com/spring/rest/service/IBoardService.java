package com.spring.rest.service;

import java.util.List;

import com.spring.rest.vo.Board;

public interface IBoardService {
	public void insertBoard(Board b);
	public void updateBoard(Board b);
	public void deleteBoard(int code);
	public List<Board> selectBoardList();
	public Board selectBoardOne(int code);
}
