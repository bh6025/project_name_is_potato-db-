package com.potato.myapp.money.model.vo;

public class UserMoneyVO {
	private String 	user_id;
	private int 	income, expense, deposit, goal_deposit;
	
	public UserMoneyVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public UserMoneyVO(String user_id, int income, int expense, int deposit, int goal_deposit) {
		super();
		this.user_id = user_id;
		this.income = income;
		this.expense = expense;
		this.deposit = deposit;
		this.goal_deposit = goal_deposit;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public int getIncome() {
		return income;
	}

	public void setIncome(int income) {
		this.income = income;
	}

	public int getExpense() {
		return expense;
	}

	public void setExpense(int expense) {
		this.expense = expense;
	}

	public int getDeposit() {
		return deposit;
	}

	public void setDeposit(int deposit) {
		this.deposit = deposit;
	}

	public int getGoal_deposit() {
		return goal_deposit;
	}

	public void setGoal_deposit(int goal_deposit) {
		this.goal_deposit = goal_deposit;
	}

	@Override
	public String toString() {
		return "UserMoneyVO [user_id=" + user_id + ", income=" + income + ", expense=" + expense + ", deposit="
				+ deposit + ", goal_deposit=" + goal_deposit + "]";
	}
	
	
}
