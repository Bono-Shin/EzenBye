package team.project.service;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import team.project.dao.BannerDAO;
import team.project.vo.BannerVO;

@Service
public class BannerServiceImpl implements BannerService {
	
	@Autowired
	private BannerDAO bannerDao;

	@Override
	public List<BannerVO> bannerList() throws Exception {
		List<BannerVO> bList = bannerDao.bannerList();
		
		return bList;
	}

	@Override
	public void bannerInsert(BannerVO bannervo, MultipartFile bannerFile, HttpServletRequest request) throws Exception {
		
		// ���ϸ��� vo�� ���
		bannervo.setImage(bannerFile.getOriginalFilename());
		
		// ������ ���ε� �ϴ� ����
		String path = request.getSession().getServletContext().getRealPath("C:\\Users\\311\\git\\EzenBye\\FoodContainer\\src\\main\\webapp\\resources\\img\\���");
		File dir = new File(path);
		if (!dir.exists()) dir.mkdirs();
		if (!bannerFile.getOriginalFilename().isEmpty()) bannerFile.transferTo(new File(path, bannerFile.getOriginalFilename()));
		
		bannerDao.bannerInsert(bannervo);
	}

	@Override
	public int bannerDelete(int[] bannerIndexArr) throws Exception {
		
		// listŸ������ ��ȯ�ϴ� ����
		List<Integer> bannerIndexList = new ArrayList<Integer>();
		if(bannerIndexArr.length != 0) {
			for(int i = 0; i < bannerIndexArr.length; i++){
				bannerIndexList.add(bannerIndexArr[i]);
			}
		}
		
		return bannerDao.bannerDelete(bannerIndexList);
	}

}
 