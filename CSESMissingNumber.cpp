#include <bits/stdc++.h>

using namespace std;


using ll = long long;

int main()
{
	#ifndef ONLINE_JUDGE
		freopen("inputf.in", "r", stdin);
		freopen("outputf.in", "w", stdout);
	#endif
		
	#ifndef ONLINE_JUDGE
		freopen("Error.txt", "w", stderr);
	#endif

	ll n;
	cin >> n;

	vector<int> v(n);
	for (int i = 0; i < n - 1; i++) {
		ll tmp;
		cin >> tmp;
		v.at(tmp - 1) = 1;
	}

	for (int i = 0; i < n; i++) {
		if (v.at(i) == 0) {
			cout << i + 1 << '\n';
			break;
		}
	}
	return 0;
}