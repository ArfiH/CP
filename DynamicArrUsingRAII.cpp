#include<iostream>

using std::cout;

class IntArray {
	size_t m_size {0};
	int* m_arr;

public:
	IntArray(size_t size) : m_size(size), m_arr(new int[size]{}) 
	{}

	~IntArray() {
		delete [] m_arr;
		cout << "Array destroyed\n";
	}

	void print() const {
		cout << "[ ";
		for (size_t i = 0; i < m_size; i++) {
			cout << m_arr[i] << ' ';
		}
		cout << "]\n";
	}

	size_t size() const {
		return m_size;
	}

	int get(size_t index) const {
		return m_arr[index];
	}

	void set(size_t index, int val) {
		m_arr[index] = val;
	}
};

int main() {
	IntArray arr(3);
	arr.set(2, 7);
	cout << arr.get(2) << '\n';
	arr.print();
}