package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import VO.TestVO;

public class TestDAO {
	SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	public List<TestVO> selectList(){
		List<TestVO> list=sqlSession.selectList("t.result_list");
		return list;
	}
	public int insert(TestVO vo) {
	int res=sqlSession.insert("t.test_insert", vo);
	return res;
	}

}
