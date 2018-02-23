package com.prasant.spring.mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Service;

import com.prasant.spring.mvc.dao.OfferDAO;
import com.prasant.spring.mvc.model.Offer;

@Service("offerService")
public class OfferService {
	
	@Autowired
	private OfferDAO offerDao;
	
	public List<Offer> getOffers() {
		return offerDao.getOffers();
	}
	
	@Secured({"ROLE_USER", "ROLE_ADMIN"})
	public boolean createOffer(Offer offer) {
		return offerDao.create(offer);
	}

	public void throwTestException() {
		offerDao.getOfferById(999);		
	}

}
