#include <bits/stdc++.h>

using namespace std;

template <class T> T triple(T x);

int main () {
	cout << triple(1) << "\n";     // Outputs 3
	cout << triple('a') << "\n";   // Outputs #
	cout << triple(1.0) << "\n";   // Outputs 3
	cout << triple(true) << "\n";  // Outputs 1
}

template <class T> T triple(T x) {
	return x + x + x;
}
