#include <bits/stdc++.h>

using namespace std;

int main() {
	// FwdIt upper_bound(FwdIt l, FwdIt r, val)
	// Finds the right-most pos where val can be inserted into 
	// such that the range remain sorted/partitioned.
	// Equivalently, finds the left-most elem that is greater than val.

	int a[10] = {1, 3, 5, 5, 5, 7, 9, 11, 13};
	cout << distance(a, upper_bound(a, a + 10, 5)) << '\n';  // Outputs 5
	cout << distance(a, upper_bound(a, a + 10, 8)) << '\n';  // Outputs 6

	// Note: If every elems in the range is less than val, then r is returned.
 	int b[10] = {5, 4, 3, 2, 1, 6, 10, 9, 8 ,7};
 	cout << distance(b, upper_bound(b, b + 10, 20)) << '\n'; // Outputs 10
}