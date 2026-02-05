package com.burugula.ticketresale.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.burugula.ticketresale.model.Movie;
import org.springframework.stereotype.Repository;

@Repository

public interface MovieRepository extends JpaRepository<Movie, Long> {
}
