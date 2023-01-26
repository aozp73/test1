package shop.mtcoding.test1.model;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import shop.mtcoding.test1.dto.BoardDetailDto;

@Mapper
public interface BoardContentRepository {

    public BoardDetailDto findByUserId(int id);

    public int updateById(@Param("id") int id, @Param("content") String content);
}
