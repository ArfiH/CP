// Author : Arfi

#include<bits/stdc++.h>

using namespace std;

#define fastio() ios_base::sync_with_stdio(false);cin.tie(NULL);cout.tie(NULL)

int main() {
	// To do Code

	fastio();

	int n;
	while (cin >> n && n) {
		vector<long double> v(n);
		long double s = 0;
		long double sumOfS = 0;
		for (int i = 0; i < n; i++) {
			cin >> v.at(i);
			sumOfS += v.at(i);
		}
		long double m = sumOfS / n;

		long double s_m = 0;
		for (int i = 0; i < n; i++) {
			s_m += (v.at(i) - m) * (v.at(i) - m);
		}

		long double ans = pow(s_m / n, 0.5);
		cout << fixed << setprecision(8) << ans << '\n';
	}
}