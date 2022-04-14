package team.project.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import team.project.dao.OrdersDAO;
import team.project.util.PagingUtil;
import team.project.vo.CartVO;
import team.project.vo.OrderProductVO;
import team.project.vo.OrdersVO;
import team.project.vo.SearchVO;

@Service
public class OrdersServiceImpl implements OrdersService{
	@Autowired
	private OrdersDAO ordersDAO;

	@Override
	public List<OrdersVO> ordersList(int member_index) throws Exception {
		List<OrdersVO> list = ordersDAO.ordersList(member_index);
		return list;
	}
	
	@Override
	public List<OrdersVO> ordersListAll(int member_index) throws Exception {
		List<OrdersVO> list = ordersDAO.ordersListAll(member_index);
		return list;
	}

	@Override
	public OrdersVO ordersDetail(String member_order_index) throws Exception {
		OrdersVO ordersDetail = ordersDAO.ordersDetail(member_order_index);
		return ordersDetail;
	}

	@Override
	public OrdersVO ordersDetailJoin(String member_order_index) throws Exception {
		OrdersVO ordersDetailJoin = ordersDAO.ordersDetailJoin(member_order_index);
		return ordersDetailJoin;
	}
	
	/* 회원 구매 페이지 */
	
	
	
	
	
	
	
	
	
	

	/* 여기서 부터는 관리자페이지 */
	// 회원 주문 조회 리스트 출력
	@Override
	public List<OrdersVO> adminMemberOrdersList(SearchVO searchvo, int nowPage) throws Exception {
		
		// 페이징 처리
		PagingUtil paging = adminMemberOrdersPaging(searchvo, nowPage);
		
		//페이징 내부 값 세팅
		paging.setStart(paging.getStart() - 1);
		paging.setSearchValue(searchvo.getSearchValue());
		return ordersDAO.adminMemberOrdersList(paging);
	}
	
	// 회원 주문 조회 페이징
	@Override
	public PagingUtil adminMemberOrdersPaging(SearchVO searchvo, int nowPage) throws Exception{
		int cnt = ordersDAO.adminMemberOrdersCount(searchvo);
		return new PagingUtil(cnt, nowPage, 10, 5);
		
	}
	
	// 회원 주문 상세조회 할때 대략적인 정보
	@Override
	public OrdersVO adminMemberOrder(OrdersVO ordersvo) throws Exception {
		return ordersDAO.adminMemberOrder(ordersvo);
	}


}
