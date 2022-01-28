#include <bits/stdc++.h>

using namespace std;

int main() {
	vector<int> v{2, 3, 1, 4, 6, 8, 9, 5, 10, 7};
	
	// reverse(BiDirIt l, BiDirIt r);
	// It reverses the range [l, r)
	// It works in O(N);
	
	// To sort in desc, either use sort(arr, arr +n greater<int>()) OR
	// use : sort(arr, arr + n);
	//       reverse(arr, arr + n);

	// To reverse String
	char s[] = "Hello Universe!";
	reverse(s, s + strlen(s));
	cout << s << '\n';

	// You can not use reverse function for singly linked list bcuz it does not
	// support BiDirIt.
}