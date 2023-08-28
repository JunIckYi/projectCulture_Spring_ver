package com.spring.api.main.service;

import java.util.List;

import com.spring.api.main.vo.MovieVO;

public interface MovieService {
	public List<MovieVO> getNowPlayingMovies();
	public List<MovieVO> getPopularMovies();
	public List<MovieVO> getUpcomingMovies();
	
	public MovieVO getMovieDetail(String id);
	public List<MovieVO>  searchMovie(String searchTitle);
	
}
