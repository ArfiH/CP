#include <bits/stdc++.h>

using namespace std;

#ifndef ONLINE_JUDGE
#define debug(x) cerr << #x <<" "; _print(x); cerr << endl;
#else
#define debug(x)
#endif

void _print(int t) {cerr << t;}

template <class T> void _print(vector <T> v) {cerr << "[ "; for (T i : v) {_print(i); cerr << " ";} cerr << "]";}

int main() {
	
	// nth_element(RndAccIt l, RndAccIt nth, RndAccIt r);
	// Above statement Finds nth elem after sorting the container
	// This implements IntroSelect Algo O(N). Its return type is void.
	// It's worst case is O(N Log N).
			
	// It reorders the range [l, r) such that:
	// The elem at nth pos will contain the same value if [l, r) is sorted.
	// All elems in [l, nth) is <= elem at nth pos.
	// The elem at nth is <= All elems in range (nth, r). 
	
	//nth_element is a partial sorting algorithm that rearranges elements in [first, last) such that:

    // The element pointed at by nth is changed to whatever element would occur in that position if [first, last) were sorted.
    // All of the elements before this new nth element are less than or equal to the elements after the new nth element. 	

	vector<int> v{5, 10, 6, 4, 3, 2, 6, 7, 9, 3};
 	debug(v);
 	
    // Find Median
    auto m = v.begin() + v.size()/2;
    nth_element(v.begin(), m, v.end());
    cout << "The median is " << v[v.size()/2] << '\n';

    // Find Second Largest number
    // Note: comp function changed
    nth_element(v.begin(), v.begin()+1, v.end(),  greater<int>());
    cout << "\nThe second largest element is " << v[1] << '\n';
    cout << "The largest element is " << v[0] << '\n';
}