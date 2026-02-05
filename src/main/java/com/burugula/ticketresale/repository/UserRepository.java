package com.burugula.ticketresale.repository;

import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;
import com.burugula.ticketresale.model.User;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
  User findByUsernameAndPassword(String username, String password);
}
