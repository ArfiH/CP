#include <bits/stdc++.h>
using namespace std;

int main() {
    
#ifndef ONLINE_JUDGE
freopen("inputf.in", "r", stdin);
freopen("outputf.in", "w", stdout);
#endif

	int x;
	cin >> x;
	if (x == 0 || x % 100 != 0)
		cout << "NO\n";
	else 
		cout << "YES\n";
	return 0;
}