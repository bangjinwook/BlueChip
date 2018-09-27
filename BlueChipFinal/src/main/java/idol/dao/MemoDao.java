package idol.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import idol.dto.MemoDto;

@Repository
public class MemoDao extends SqlSessionDaoSupport{
	public List<MemoDto> getMemoList()
	{
		return getSqlSession().selectList("selectAllOfMemo");
	}
}
