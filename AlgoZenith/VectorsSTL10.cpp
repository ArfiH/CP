#include <bits/stdc++.h>

using namespace std;

#ifndef ONLINE_JUDGE
#define debug(x) cerr << #x <<" "; _print(x); cerr << endl;
#else
#define debug(x)
#endif

int main()
{

	#ifndef ONLINE_JUDGE
	freopen("inputf.in", "r", stdin);
	freopen("outputf.in", "w", stdout);
	#endif
		
	#ifndef ONLINE_JUDGE
		freopen("Error.txt", "w", stderr);
	#endif
	
	vector<int> a{1, 2, 3, 4, 5};

	long long sum = 0;

	// Range based for loop
	for (auto x: a) {
		sum += x;
	}
	cout << sum << '\n';
	
	// Traversing using iterators:
	// For vector: .begin() and .end() returns RandomAccessIterators
	for (vector<int> :: iterator it = a.begin(); it != a.end(); ++it) {
		cout << *it << ' ';  // *it means value at it 
	}
	cout << '\n';

	// Another way of traversing:
	
	for (auto it = a.begin(); it != a.end(); ++it) {
		cout << *it << ' ';
	}
	cout << '\n';
}