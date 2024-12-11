package com.example.SportsBookingSystem.Repository;

import com.example.SportsBookingSystem.Entity.PlayerEntity
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
interface PlayerRepository : JpaRepository<PlayerEntity, String>

