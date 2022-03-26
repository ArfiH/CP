#include <bits/stdc++.h>

using namespace std;

#ifndef ONLINE_JUDGE
#define debug(x) cerr << #x <<" "; _print(x); cerr << endl;
#else
#define debug(x)
#endif

void remove(int x, map<int, int> m) {
	auto it = m.begin();

	for (it; it != m.end(); ++it) {
		if (it->first == x) {
			if (it->second > 1) {
				it->second--;
			}
			else {
				cout << "\nErase " << it->first << '\n';
				m.erase(it);
			}
		}
	}

	it = m.begin();

	for (it; it != m.end(); ++it) {
		cout << it->first << ' ';
	}
	cout << '\n';
}


void getFreqofNextGreaterEq(int x, map<int, int> m) {
	auto it = m.lower_bound(x);
	if (it == m.end()) {
		cout << "Element greater than " << x << " doesn't exist\n";
		return;
	}
	cout << it->first << " : " << it->second << '\n';
}


void getFreqofPrevSmallerEq(int x, map<int, int> m) {
	auto it = m.upper_bound(x);

	if (it == m.begin() && it->first != x) {
		cout << "Element lesser than " << x << " doesn't exist\n";
		return;
	}
	--it;

	cout << it->first << " : " << it->second << '\n';
}


int main()
{

	#ifndef ONLINE_JUDGE
	freopen("inputf.in", "r", stdin);
	freopen("outputf.in", "w", stdout);
	#endif
		
	#ifndef ONLINE_JUDGE
		freopen("Error.txt", "w", stderr);
	#endif

	map<int, int> prices{{2, 2}, {5, 7}, {7, 3}};
	map<int, int> :: iterator it = prices.begin();
	long long sum = 0;

	for (; it != prices.end(); ++it) {
		sum += it->first * it->second;
	}

	cout << "Sum is " << sum << '\n';
	remove(4, prices);

	getFreqofNextGreaterEq(4, prices);
	getFreqofPrevSmallerEq(1, prices);
}