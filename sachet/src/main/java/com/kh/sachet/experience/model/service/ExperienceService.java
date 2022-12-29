package com.kh.sachet.experience.model.service;

import java.util.ArrayList;

import com.kh.sachet.common.model.vo.PageInfo;
import com.kh.sachet.experience.model.vo.Experience;

public interface ExperienceService {
	
	int selectListCount();

	ArrayList<Experience> selectExperienceList(PageInfo pi);
	
	Experience selectExperience(int eno);
	
	ArrayList<Experience> selectCompanyExperienceList(int userNo);

	int selectBoothNo(int userNo);

	int insertExperience(Experience e);

	int updateExperience(Experience e);
	
}
