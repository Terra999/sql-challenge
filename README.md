# sql-challenge
SQL Homework - Employee Database: A Mystery in Two Parts

As a new data engineer at Pewlett Hackard my first major task was to research all the employees of the corporation from the 1980s and 1990s. The database of employees that I had to use consisted of six CSV files. None-the-less, I was able to design tables to hold data in the CSVs, import the CSVs into a SQL database, and provide the following information about the data:

#1 Details of each employee: employee number, last name, first name, sex, and salary.

#2 A list of first name, last name, and hire date for employees who were hired in 1986.

#3 A list of the managers of each department with the following information: department number, department name, the manager's employee number, last name, first name.

#4 A list the department of each employee with the following information: employee number, last name, first name, and department name.

#5 A list first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

#6 A list of all employees in the Sales department, including their employee number, last name, first name, and department name.

#7 A list of all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

#8 And finally, in descending order, present a frequency count of employee last names, i.e., how many employees share each last name.

As I examined the data, I was overcome with a creeping suspicion that the dataset was fake. I surmised that my boss handed me spurious data in order to test the data engineering skills of a new employee. To confirm my hunch, I decided to take the following steps to generate a visualization of the data, with which I confronted my boss:

I imported the SQL database into Pandas using the following code to get started:

from sqlalchemy import create_engine
engine = create_engine('postgresql://localhost:5432/<your_db_name>')
connection = engine.connect()

I created a histogram to visualize the most common salary ranges for employees and then I created a bar chart of average salary by title.

I then confirmed that this was an April Fool's joke and I successfully passed the "new hire" test!
