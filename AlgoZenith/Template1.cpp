#include <bits/stdc++.h>

using namespace std;

template <class T> T triple(T x);

int main () {
	cout << triple(1) << "\n";
	cout << triple('a') << "\n";
	cout << triple(1.0) << "\n";
	cout << triple(true) << "\n";
}

template <class T> T triple(T x) {
	return x + x + x;
}
