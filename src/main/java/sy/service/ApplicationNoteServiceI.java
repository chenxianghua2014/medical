package sy.service;

import sy.model.TapplicationNote;
import sy.pageModel.DataGrid;
import sy.pageModel.ApplicationNote;

public interface ApplicationNoteServiceI extends BaseServiceI {

	/**
	 * 获得数据表格
	 * 
	 * @param applicationNote
	 * @return
	 */
	public DataGrid datagrid(ApplicationNote applicationNote);
	/**
	 * 添加
	 * 
	 * @param applicationNote
	 */
	public void add(ApplicationNote applicationNote);
	/**
	 * 修改
	 * 
	 * @param applicationNote
	 */
	public void update(ApplicationNote applicationNote);

	/**
	 * 删除
	 * 
	 * @param ids
	 */
	public void delete(String ids);

	/**
	 * 获得
	 * 
	 * @param applicationNote
	 * @return
	 */
	public TapplicationNote get(ApplicationNote applicationNote);
}

