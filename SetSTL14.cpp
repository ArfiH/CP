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
	

	// Set always store data in sorted form
	// and it does not keep duplicates.
	set<int> st;


	// st.insert(x) returns pair<set<T> :: iterator, bool>
	// the first elem of the returned pair is an iterator to
	// the inserted/existing elem.
	// the second elem of the returned pair is a bool which
	// returns true if the elem already exists in the set

	st.insert(1000);
	st.insert(12345);
	st.insert(40);

	cout << *st.begin() << '\n';  // Outputs 40
	cout << *st.rbegin() << '\n'; // Outputs 12345

	st.insert(8);
	st.erase(12345);

	cout << *st.begin() << '\n';  // Outputs 8
	cout << *st.rbegin() << '\n'; // Outputs 1000


	// Creation of Set takes O(n * log n) with unsorted array
	// Creation of Set takes O(n) with sorted array

	cout << st.insert(8).second << '\n';  // Outputs 0
										  // bcuz 8 exists in set

	cout << st.insert(12345).second << '\n';  // Outputs 1 bcuz 12345 
										  // does not exists in set
	

	cout << "size of set is " << st.size() << '\n';


	cout << "Count of 8 is " << st.count(8) << '\n';
	// st.counts will always return either 1 or 0


	st.erase(8);
	cout << "Now, count of 8 is " << st.count(8) << '\n';
	//Note: Both st.erase(x) and st.erase(it) returns an iterator 
	// pointing to the elem after the deleted one.

	// set<T> :: iterator is BiDirectional, i.e we can traverse a
	// setby advancing and backing an iterator.


	// To create a set out of a vector
	vector<int> v{1, 3, 3, 5, 7, 9};
	set<int> st1(v.begin(), v.end());
	for (auto it = st1.begin(); it != st1.end(); ++it) {
		cout << *it << ' ';
	}
	cout << '\n';


	// lower_bound:
	auto it = st1.lower_bound(6);
	if (it != st.end()) {
		cout << *it << '\n';  // Outputs 7
	}
	else {
		cout << "None";
	}
}