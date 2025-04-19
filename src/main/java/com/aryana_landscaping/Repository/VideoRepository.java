package com.aryana_landscaping.Repository;

import com.aryana_landscaping.Entity.Photo;
import com.aryana_landscaping.Entity.Video;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface VideoRepository extends JpaRepository<Video, Long> {
    List<Video> findAllByOrderByIdDesc();
}

