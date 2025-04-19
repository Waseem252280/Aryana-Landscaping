package com.aryana_landscaping.Repository;

import com.aryana_landscaping.Entity.Photo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface PhotoRepository extends JpaRepository<Photo, Long> {
    List<Photo> findAllByOrderByIdDesc();
}
