package finalp.test;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class MemoDao extends SqlSessionDaoSupport{
	public List<MemoDto> getMemoList()
	{
		return getSqlSession().selectList("selectAllOfMemo");
	}
}
