package com.neuedu.tool;

public class Pager {
	private int pageNow;
	private int pageSize = 5;  //一个页面5条信息
	private int totalPage;
	private int totalSize;
	private boolean hasFirst;
	private boolean hasPre;
	private boolean hasNext;
	private boolean hasLast;
	public Pager(int pageNow, int totalSize) {
		this.pageNow = pageNow;
		this.totalSize = totalSize;
	}
	public int getPageNow() {
		return pageNow;
	}
	public void setPageNow(int pageNow) {
		this.pageNow = pageNow;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getTotalPage() {
		totalPage = totalSize / pageSize;
		if(totalSize % pageSize != 0)
			totalPage++;
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public int getTotalSize() {
		return totalSize;
	}
	public void setTotalSize(int totalSize) {
		this.totalSize = totalSize;
	}
	public boolean isHasFirst() {
		return pageNow > 1;
	}
	public void setHasFirst(boolean hasFirst) {
		this.hasFirst = hasFirst;
	}
	public boolean isHasPre() {
		return isHasFirst();
	}
	public void setHasPre(boolean hasPre) {
		this.hasPre = hasPre;
	}
	public boolean isHasNext() {
		return isHasLast();
	}
	public void setHasNext(boolean hasNext) {
		this.hasNext = hasNext;
	}
	public boolean isHasLast() {
		return pageNow < this.getTotalPage();
	}
	public void setHasLast(boolean hasLast) {
		this.hasLast = hasLast;
	}
	
}
