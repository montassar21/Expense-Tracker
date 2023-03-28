package in.example.expensetracker.model;
import java.math.BigDecimal;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
@Entity
@Table(name="tbl_expenses")
@Setter
@Getter
@ToString
public class Expense {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
     private Long id;
 @Column(name="description")
 private String expensename;
 @Column(name="amount")
 private BigDecimal amount;
 @Column(name="note")
 private String note;
 @Column(name="created_at")
 private Long createdAt;
 
 
 public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getExpensename() {
		return expensename;
	}
	public void setExpensename(String expensename) {
		this.expensename = expensename;
	}
	public BigDecimal getAmount() {
		return amount;
	}
	public void setAmount(BigDecimal amount) {
		this.amount = amount;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	public Long getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(Long createdAt) {
		this.createdAt = createdAt;
	}
	@Override
	public String toString() {
		return "Expense [id=" + id + ", expensename=" + expensename + ", amount=" + amount + ", note=" + note
				+ ", createdAt=" + createdAt + "]";
	}
	

}