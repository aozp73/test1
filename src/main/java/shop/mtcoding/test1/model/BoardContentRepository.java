package shop.mtcoding.test1.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import shop.mtcoding.test1.dto.BoardDto;

@Mapper
public interface BoardContentRepository {

    public List<BoardDto> findAllByUserId(int id);

    public BoardDto findByUserId(int id);

    public int updateById(@Param("id") int id, @Param("content") String content);
}
