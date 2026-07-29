#include <iostream>
#include <vector>
#include <fstream>

using std::cout;
using std::string;
using std::vector;

class Student {
	string m_first	{""};
	string m_last	{""};
	int m_id		{0};
	float m_avg		{0.f};

public:
	Student() {}
	Student(const string& first, const string& last, int id, float avg) 
		: m_first	(first)
		, m_last	(last)
		, m_id		(id)
		, m_avg		(avg)
	{}

	const string& getFirst() const {
		return m_first;
	} 	

	const string& getLast() const {
		return m_last;
	}

	int getId() const {
		return m_id;
	}

	float getAvg() const {
		return m_avg;
	}

	void print() const {
		cout << m_first << '\n';
		cout << m_last << '\n';
		cout << m_id << '\n';
		cout << m_avg << '\n';
	}
};

class Course {
	string m_name	{"Course"};
	vector<Student> m_students;

public:
	Course() {};
	Course(const string& name) 
		: m_name (name)
	{}

	const string& getName() const {
		return m_name;
	}

	const vector<Student>& getStudents() const {
		return m_students;
	}

	void addStudent(Student s) {
		m_students.push_back(s);
	}

	void print() const {
		for (auto& stu : m_students) {
			stu.print();
		}
	}
};

int main() {
	Student s1;
	Student s2("Arfi", "Hussain", 1, 89.3);
	Student s3("Moazzam", "Arfi", 1, 99.3);
	s2.print();
	cout << '\n';
	s3.print();

	Course c("COMP4300");
	c.addStudent(s3);
	c.print();
}