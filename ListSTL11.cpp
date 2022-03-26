#include <bits/stdc++.h>

using namespace std;

int main()
{

	#ifndef ONLINE_JUDGE
	freopen("inputf.in", "r", stdin);
	freopen("outputf.in", "w", stdout);
	#endif
		
	#ifndef ONLINE_JUDGE
		freopen("Error.txt", "w", stderr);
	#endif
		
	list<int> l{20, 30};

	l.push_front(10);
	l.push_front(0);
	l.push_back(40);
	cout << l.front() << '\n';  // Outputs 0
	cout << l.back() << '\n';	// Outputs 40

	auto it = l.begin();
	
	for (; it != l.end(); ++it) {
		cout << *it << ' ';	
	}
	// Outputs 0 10 20 30 40

	cout << '\n';
	it = l.insert(l.end(), 50);
	// Above statement will insert 50 before the elem pointed by it
	// and it returns an iterator pointing to the elem inserted
	// and it takes O(1)

	auto it2 = l.begin();
	for (; it2 != l.end(); ++it2) {
		cout << *it2 << ' ';	
	}
	// Outputs 0 10 20 30 40 50

	cout << '\n';
	it = l.erase(l.begin());
	// This removes the elem pointed by it and returns an iterator
	// pointing to the elem after it and it takes O(1)

	auto it3 = l.begin();
	for (; it3 != l.end(); ++it3) {
		cout << *it3 << ' ';	
	}
	// Outputs 10 20 30 40 50
}