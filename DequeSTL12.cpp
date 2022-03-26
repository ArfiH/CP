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
	
	deque<int> dq{1, 3, 4, 5, 6, 7};
	dq.push_back(8);

	dq.push_front(0);

	deque<int> :: iterator it = dq.begin();
	for (it = dq.begin(); it != dq.end(); ++it) {
		cout << *it << ' '; // Outputs 0 1 3 4 5 6 7 8 
	}
	cout << '\n';

	dq.pop_back();
	for (it = dq.begin(); it != dq.end(); ++it) {
		cout << *it << ' '; // Outputs 0 1 3 4 5 6 7 
	}
	cout << '\n';

	dq.pop_front();
	for (it = dq.begin(); it != dq.end(); ++it) {
		cout << *it << ' '; // Outputs 1 3 4 5 6 7 
	}
}