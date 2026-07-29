#include <iostream>

using std::cout;

class Point {
	float m_x {0.f};
	float m_y {0.f};

public:
	Point(float newX, float newY) {
		set(newX, newY);
	}

	void print() const {
		cout << "{ " << m_x << ", " << m_y << " }\n";
	}

	void set(float newX, float newY) {
		m_x = newX;
		m_y = newY;
	}

	Point operator+(const Point& other) const {
		return Point(this->m_x + other.m_x, this->m_y + other.m_y);
	}
};

int main () {
	Point pt1(4.0f, 5.5f);
	Point pt2(3.0f, 1.3f);
	Point pt3 = pt1 + pt2;
	pt3.print();
}