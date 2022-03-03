#include <bits/stdc++.h>

using namespace std;

int main() {

	// It finds the leftmost pos where val can be inserted so that range remain sorted.
	// Equivalently, finds the leftmost elem >= val.

	int a[10] = {1, 3, 5, 5, 5, 7, 9, 11, 13};
	cout << lower_bound(a, a + 10, 5) - a << '\n';          // Outputs 2
 	cout << distance(a, lower_bound(a, a + 10, 5)) << '\n'; // Outputs 2

 	cout << distance(a, lower_bound(a, a + 10, 8)) << '\n'; // Outputs 6

 	// Note: If every elems in the range is less than val, then r is returned.
 	int b[10] = {5, 4, 3, 2, 1, 6, 10, 9, 8 ,7};
 	cout << distance(b, lower_bound(b, b + 10, 20)) << '\n'; // Outputs 10
}