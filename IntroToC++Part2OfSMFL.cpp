#include <iostream>

using std::cout;
using std::string;

// RAII Dynamic Array Class
template<typename T>
class DynamicArray {
	T* m_arr;
	size_t m_size;

public:
	DynamicArray(size_t size) 
		: m_size	(size)
		, m_arr		(new T[size]{})
	{
		cout << "Array constructed\n";
	}

	~DynamicArray() {
		delete [] m_arr;
		cout << "Array destoryed\n";
	}

	size_t size() const {
		return m_size;
	}

	T get(size_t index) const {
		return m_arr[index];
	}

	void set(size_t index, T val) {
		m_arr[index] = val;
	}

	void print() const {
		cout << "[ ";
		for (size_t i = 0; i < m_size; i++) {
			cout << m_arr[i] << ' ';
		}
		cout << "]\n";
	}

	const T& operator [] (size_t index) const {  // This is called when running: cout << arr[0];
		return m_arr[index];
	}

	T& operator [] (size_t index) {  // This is called when running: arr[0] = 15;
		return m_arr[index];
	}
};

int main () {
	DynamicArray<int> intArr(3);
	// intArr.set(0, 0);
	intArr.set(1, 1);
	intArr.set(2, 2);
	intArr.print();
	
	DynamicArray<float> floatArr(3);
	floatArr.set(1, 90.5f);
	floatArr.print();
	floatArr[1] = 97.7;
	cout << floatArr[1] << '\n';
}