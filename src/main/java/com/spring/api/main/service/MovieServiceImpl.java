package com.spring.api.main.service;


import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.spring.api.main.vo.MovieVO;



@Service
public class MovieServiceImpl implements MovieService{
	
	@Autowired
	private RestTemplate restTemplate;
	private final String API_KEY = "2f086445ca13875b5bf9a9f2fb2bfa36";
	
	public List<MovieVO> getNowPlayingMovies() {
		int page=2;
		String url = "https://api.themoviedb.org/3/movie/now_playing?api_key=" + API_KEY +"&language=ko-KO&watch_region=kr&page="+page;
		ResponseEntity<String> response = restTemplate.getForEntity(url, String.class);
		String responseBody = response.getBody();
		
		List<MovieVO> data = new ArrayList<>();
		ObjectMapper objectMapper = new ObjectMapper();
		try {
			JsonNode rootNode = objectMapper.readTree(responseBody);
            JsonNode results = rootNode.path("results");
           
            for (JsonNode node : results) {
            	MovieVO movieVO = new MovieVO();
            	
            	String adult = node.path("adult").asText();
            	String backdrop_path = node.path("backdrop_path").asText();
            	String title = node.path("title").asText();
                String overview = node.path("overview").asText();
                String vote_average = node.path("vote_average").asText();
                String vote_count = node.path("vote_count").asText();
                if(overview=="") {
                	overview = "준비중 입니다.";
                }
                String releaseDate = node.path("release_date").asText();
                String posterPath = node.path("poster_path").asText();
                String id = node.path("id").asText();
                
                movieVO.setAdult(Boolean.parseBoolean(adult));
                movieVO.setBackdrop_path(backdrop_path);
                movieVO.setTitle(title);
                movieVO.setOverview(overview);
                movieVO.setRelease_date(releaseDate);
                movieVO.setPoster_path(posterPath);
                movieVO.setId(id);
                movieVO.setVote_average(vote_average);
                movieVO.setVote_count(Integer.parseInt(vote_count));
                data.add(movieVO);

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
		return data;
	}
	
	
	public List<MovieVO> getPopularMovies() {
		int page=1;
		String url = "https://api.themoviedb.org/3/movie/popular?api_key=" + API_KEY +"&language=ko-KO&watch_region=kr&page="+page;
		ResponseEntity<String> response = restTemplate.getForEntity(url, String.class);
		String responseBody = response.getBody();
		
		List<MovieVO> data = new ArrayList<>();
		ObjectMapper objectMapper = new ObjectMapper();
		try {
			JsonNode rootNode = objectMapper.readTree(responseBody);
            JsonNode results = rootNode.path("results");
            
            int i = 1;
            for (JsonNode node : results) {
            	MovieVO movieVO = new MovieVO();
            	
            	String adult = node.path("adult").asText();
            	String backdrop_path = node.path("backdrop_path").asText();
            	String title = node.path("title").asText();
                String overview = node.path("overview").asText();
                String vote_average = node.path("vote_average").asText();
                String vote_count = node.path("vote_count").asText();
                if(overview=="") {
                	overview = "준비중 입니다.";
                }
                String releaseDate = node.path("release_date").asText();
                String posterPath = node.path("poster_path").asText();
                String id = node.path("id").asText();
                
                movieVO.setAdult(Boolean.parseBoolean(adult));
                movieVO.setBackdrop_path(backdrop_path);
                movieVO.setTitle(title);
                movieVO.setOverview(overview);
                movieVO.setRelease_date(releaseDate);
                movieVO.setPoster_path(posterPath);
                movieVO.setId(id);
                movieVO.setVote_average(vote_average);
                movieVO.setVote_count(Integer.parseInt(vote_count));
                movieVO.setRank(i);
                
                data.add(movieVO);
                i++;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
		return data;
	}
	
	
	public List<MovieVO> getUpcomingMovies() {
		int page=1;
		String url = "https://api.themoviedb.org/3/movie/upcoming?api_key=" + API_KEY +"&language=ko-KO&region=kr&page="+page;
		ResponseEntity<String> response = restTemplate.getForEntity(url, String.class);
		String responseBody = response.getBody();
		
		List<MovieVO> data = new ArrayList<>();
		ObjectMapper objectMapper = new ObjectMapper();
		try {
			JsonNode rootNode = objectMapper.readTree(responseBody);
            JsonNode results = rootNode.path("results");

            for (JsonNode node : results) {
            	MovieVO movieVO = new MovieVO();
            	
            	String adult = node.path("adult").asText();
            	String backdrop_path = node.path("backdrop_path").asText();
            	String title = node.path("title").asText();
                String overview = node.path("overview").asText();
                String vote_average = node.path("vote_average").asText();
                String vote_count = node.path("vote_count").asText();
                if(overview=="") {
                	overview = "준비중 입니다.";
                }
                String releaseDate = node.path("release_date").asText();
                String posterPath = node.path("poster_path").asText();
                String id = node.path("id").asText();
                
                movieVO.setAdult(Boolean.parseBoolean(adult));
                movieVO.setBackdrop_path(backdrop_path);
                movieVO.setTitle(title);
                movieVO.setOverview(overview);
                movieVO.setRelease_date(releaseDate);
                movieVO.setPoster_path(posterPath);
                movieVO.setId(id);
                movieVO.setVote_average(vote_average);
                movieVO.setVote_count(Integer.parseInt(vote_count));
                data.add(movieVO);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
		return data;
	}
	
	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public MovieVO getMovieDetail(String id) {
		String url = "https://api.themoviedb.org/3/movie/" + id + "?api_key=" + API_KEY + "&language=ko-KO";
		MovieVO movie = restTemplate.getForObject(url, MovieVO.class);
	    return movie;
	}
	
	public List<MovieVO>  searchMovie(String searchTitle) { /*primary_release_year=2023&*/
		String url = "https://api.themoviedb.org/3/search/movie?api_key=2f086445ca13875b5bf9a9f2fb2bfa36&language=ko-KO&include_adult=false&region=kr&query="+searchTitle;
		ResponseEntity<String> response = restTemplate.getForEntity(url, String.class);
		String responseBody = response.getBody();
		
		List<MovieVO> data = new ArrayList<>();
		ObjectMapper objectMapper = new ObjectMapper();
		try {
			JsonNode rootNode = objectMapper.readTree(responseBody);
            JsonNode results = rootNode.path("results");

            for (JsonNode node : results) {
            	MovieVO movieVO = new MovieVO();
                
            	String adult = node.path("adult").asText();
            	String backdrop_path = node.path("backdrop_path").asText();
            	String title = node.path("title").asText();
                String overview = node.path("overview").asText();
                String vote_average = node.path("vote_average").asText();
                String vote_count = node.path("vote_count").asText();
                if(overview=="") {
                	overview = "준비중 입니다.";
                }
                String releaseDate = node.path("release_date").asText();
                String posterPath = node.path("poster_path").asText();
                String id = node.path("id").asText();
                
                movieVO.setAdult(Boolean.parseBoolean(adult));
                movieVO.setBackdrop_path(backdrop_path);
                movieVO.setTitle(title);
                movieVO.setOverview(overview);
                movieVO.setRelease_date(releaseDate);
                movieVO.setPoster_path(posterPath);
                movieVO.setId(id);
                movieVO.setVote_average(vote_average);
                movieVO.setVote_count(Integer.parseInt(vote_count));
                data.add(movieVO);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
		return data;
	}

}
