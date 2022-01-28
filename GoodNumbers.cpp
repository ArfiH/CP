// Author : Arfi

#include<bits/stdc++.h>

using namespace std;

#define fastio() ios_base::sync_with_stdio(false);cin.tie(NULL);cout.tie(NULL)

typedef long long ll;

int main() {

	fastio();

#ifndef ONLINE_JUDGE
freopen("inputf.in", "r", stdin);
freopen("outputf.in", "w", stdout);
#endif
	
#ifndef ONLINE_JUDGE
	freopen("Error.txt", "w", stderr);
#endif
	ll n, k, q;
	cin >> n >> k >> q;

	vector <ll> like(10);
	for (int i = 0; i < n; i++) {
		int temp1, temp2;
		cin >> temp1 >> temp2;
		like.at(temp1-1)++;
		if (temp2 < like.size())
			like.at(temp2)--;	
	}
	
	vector <ll> p(10);
	ll s = 0;
	for (int i = 0; i < 10; i++) {
		s += like.at(i);
		p.at(i) = s;
	}

	for (int i = 0; i < q; i++) {
		int l, r;
		cin >> l >> r;
		ll c = 0;
		for (int j = l - 1; j < r; j++) {
			if (p.at(j) >= k) {
				c++;
			}
		}
		cout << c << "\n";
	}

}





