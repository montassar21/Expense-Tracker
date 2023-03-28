package in.example.expensetracker.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import in.example.expensetracker.model.Expense;
@Repository
public interface ExpenseRepository extends JpaRepository<Expense, Long> {

}
