package in.example.expensetracker.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.example.expensetracker.model.Expense;
import in.example.expensetracker.repository.ExpenseRepository;
@Service
public class ExpenseServiceImpl implements ExpenseService {
	@Autowired
	ExpenseRepository expenseRepository;
	@Override
	public List<Expense> findAll() {
		return expenseRepository.findAll();
	}
	
	public void save(Expense expense) {
		expense.setCreatedAt(System.currentTimeMillis());
		expenseRepository.save(expense);
	}
	
	public Expense findById(Long id) {
		if(expenseRepository.findById(id).isPresent())
		return expenseRepository.findById(id).get();
	return null;
	}
	public void delete(Long id) {
		Expense expense=findById(id);
		expenseRepository.delete(expense);
	}

}
