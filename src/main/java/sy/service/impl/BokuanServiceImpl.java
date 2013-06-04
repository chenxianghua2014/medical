package sy.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import sy.dao.BaseDaoI;
import sy.model.Tbokuan;
import sy.model.Tproject;
import sy.model.Tuser;
import sy.pageModel.DataGrid;
import sy.pageModel.Bokuan;
import sy.pageModel.Project;
import sy.pageModel.User;
import sy.service.BokuanServiceI;
@Service("bokuanService")
public class BokuanServiceImpl  extends BaseServiceImpl implements BokuanServiceI {
	private BaseDaoI<Tbokuan> bokuanDao;
	private BaseDaoI<Tproject> projectDao;

	public BaseDaoI<Tbokuan> geTbokuanDao() {
		return bokuanDao;
	}

	@Autowired
	public void seTbokuanDao(BaseDaoI<Tbokuan> bokuanDao) {
		this.bokuanDao = bokuanDao;
	}

	@Transactional(propagation = Propagation.SUPPORTS)
	public DataGrid datagrid(Bokuan bokuan) {
		DataGrid j = new DataGrid();
		j.setRows(geTbokuansFromTbokuans(find(bokuan)));
		j.setTotal(total(bokuan));
		return j;
	}
	private List<Bokuan> geTbokuansFromTbokuans(List<Tbokuan> Tbokuans) {
		List<Bokuan> bokuans = new ArrayList<Bokuan>();
		if (Tbokuans != null && Tbokuans.size() > 0) {
			for (Tbokuan tb : Tbokuans) {
				Bokuan b = new Bokuan();
				BeanUtils.copyProperties(tb, b);
				bokuans.add(b);
			}
		}
		return bokuans;
	}

	private List<Tbokuan> find(Bokuan bokuan) {
		String hql = "select new Tbokuan(t.cid,t.cuid,t.ctickets,t.cprojectid,t.cmoney,t.ccountTime,t.ccountId,t.cdatei) from Tbokuan t where 1=1 ";

		List<Object> values = new ArrayList<Object>();
		hql = addWhere(bokuan, hql, values);

		if (bokuan.getSort() != null && bokuan.getOrder() != null) {
			hql += " order by " + bokuan.getSort() + " " + bokuan.getOrder();
		}
		return bokuanDao.find(hql, values, bokuan.getPage(), bokuan.getRows());
	}

	private Long total(Bokuan bokuan) {
		String hql = "select count(*) from Tbokuan t where 1=1 ";
		List<Object> values = new ArrayList<Object>();
		hql = addWhere(bokuan, hql, values);
		return bokuanDao.count(hql, values);
	}

	private String addWhere(Bokuan bokuan, String hql, List<Object> values) {
		return hql;
	}

	public void add(Bokuan bokuan) {
		if (bokuan.getCid() == null || bokuan.getCid().trim().equals("")) {
			bokuan.setCid(UUID.randomUUID().toString());
		}
		Tbokuan t = new Tbokuan();
		BeanUtils.copyProperties(bokuan, t);
		bokuanDao.save(t);
	}

	public void update(Bokuan bokuan) {
		Tbokuan t = bokuanDao.get(Tbokuan.class, bokuan.getCid());
		if (t != null) {			
			BeanUtils.copyProperties(bokuan, t, new String[] { "cid" });
		}
	}

	public void delete(String ids) {
		if (ids != null) {
			for (String id : ids.split(",")) {
				Tbokuan t = bokuanDao.get(Tbokuan.class, id);
				if (t != null) {
					bokuanDao.delete(t);
				}
			}
		}
	}

	public Tbokuan get(Bokuan bokuan) {
		Tbokuan menu = bokuanDao.get(Tbokuan.class, bokuan.getCid());
		return menu;
	}
	

}
