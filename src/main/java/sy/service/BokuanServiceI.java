package sy.service;

import java.util.List;

import sy.model.Tbokuan;
import sy.pageModel.DataGrid;
import sy.pageModel.Bokuan;
import sy.pageModel.Project;
import sy.pageModel.User;

public interface BokuanServiceI extends BaseServiceI {
	/**
	 * 获得数据表格
	 * 
	 * @param bokuan
	 * @return
	 */
	public DataGrid datagrid(Bokuan bokuan);
	/**
	 * 添加
	 * 
	 * @param bokuan
	 */
	public void add(Bokuan bokuan);
	/**
	 * 修改
	 * 
	 * @param bokuan
	 */
	public void update(Bokuan bokuan);

	/**
	 * 删除
	 * 
	 * @param ids
	 */
	public void delete(String ids);

	/**
	 * 获得
	 * 
	 * @param bokuan
	 * @return
	 */
	public Tbokuan get(Bokuan bokuan);
	
	
}
