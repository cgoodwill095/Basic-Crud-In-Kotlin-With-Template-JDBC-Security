package com.example.SportsBookingSystem.Repository;

import com.example.SportsBookingSystem.Entity.AdvertEntity
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
interface AdvertRepository : JpaRepository<AdvertEntity, String>


