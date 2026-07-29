#include <iostream>
#include <vector>
#include <fstream>

class Student {
	std::string m_first	{"first"}; // Similar to std::string m_first = "first" but Braces help prevent certain narrowing conversions like int m_x = 3.14 will not generate error but int m_x{3.14} will.
	std::string m_last	{"last"};
	int 		m_id 	{}; // Default is 0 
	float 		m_avg 	{}; // Default is 0.f

public:
	Student () {} // Default constructor (executed if we ran Student s;)
	
	Student (const std::string& first, const std::string& last, int id, float avg)
		: m_first	(first)
		, m_last	(last)
		, m_id		(id)
		, m_avg		(avg)
	{
	}

	float getAvg() const {
		return m_avg;
	}

	int getId() const {
		return m_id;
	}

	const std::string& getFirst() const {
		return m_first;
	}

	const std::string& getLast() const {
		return m_last;
	}

	void setAvg(float newAvg) {
		m_avg = newAvg;
	}

	void print() const {
		std::cout << m_first << '\n';
		std::cout << m_last << '\n';
		std::cout << m_id << '\n';
		std::cout << m_avg << '\n';
	}
};

class Course {
	std::string m_name{"Course"};
	std::vector<Student> m_students;

public:
	Course() {};
	Course(const std::string& name)
		: m_name(name) 
	{};

	void addStudent(const Student& s) {
		m_students.push_back(s);
	}

	const std::vector<Student>& getStudents() const {
		return m_students;
	}

	void print() const {
		for (const auto& stu : m_students) {
			stu.print();
		}
	}

	void loadFromFile(const std::string& filename) {
		std::ifstream fin(filename);
		std::string first, last;
		int id;
		float avg;

		while (fin >> first) { // this means, get the next string which is not a whitespace or newline
			fin >> last >> id >> avg;
			addStudent(Student(first, last, id, avg));
		}
	}
};

int main (int argc, char* argv[]) {
	Course c("COMP4300");
	c.loadFromFile("students.txt");
	c.print();
	return 0;
}