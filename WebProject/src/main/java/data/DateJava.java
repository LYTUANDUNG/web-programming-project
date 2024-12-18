package data;

public class DateJava {
	private int days;
	private int months;
	private int years;

	public DateJava(int days, int months, int years) {
		this.days = days;
		this.months = months;
		this.years = years;
	}

	public String birthdaymergeDate() {
		return String.format("%02d-%02d-%04d", days, months, years);
	}

	public static DateJava fromSQLDate(java.sql.Date sqlDate) {
		return new DateJava(sqlDate.toLocalDate().getYear(), sqlDate.toLocalDate().getMonthValue(),
				sqlDate.toLocalDate().getDayOfMonth());
	}

	public int getDays() {
		return days;
	}

	public void setDays(int days) {
		this.days = days;
	}

	public int getMonths() {
		return months;
	}

	public void setMonths(int months) {
		this.months = months;
	}

	public int getYears() {
		return years;
	}

	public void setYears(int years) {
		this.years = years;
	}

}
