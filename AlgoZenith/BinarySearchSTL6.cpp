#include <bits/stdc++.h>

using namespace std;

int main() {
	int a[10] = {1, 3, 5, 5, 7, 9, 11, 11, 13};
	cout << binary_search(a, a + 10, 5) << endl; // Outputs 1
	cout << binary_search(a, a + 10, 8) << endl; // Outputs 0

	int b[10] = {5, 4, 3, 2, 1, 6, 10, 9, 8, 7};
	cout << binary_search(b, b + 10, 6) << endl; // Outputs 1
	cout << binary_search(b, b + 10, 3) << endl; // Outputs 0, Incorrect Usage btw
}