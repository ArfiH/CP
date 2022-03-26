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

	queue<int> q;
	q.push(10);
	q.push(20);
	q.push(30);

	while (!q.empty()) {
		cout << q.front() << ' ';
		q.pop(); 
	}
	// Outputs 10 20 30

	cout << '\n';
	q.push(2);
	q.push(3);
	q.push(4);

	cout << q.back() << '\n'; // Outputs 4
	cout << q.front() << '\n'; // Outputs 2
	q.pop();
	cout << q.front() << '\n'; // Outputs 3
}