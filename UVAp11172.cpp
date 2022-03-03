// Author : Arfi

#include<bits/stdc++.h>

using namespace std;

#define fastio() ios_base::sync_with_stdio(false);cin.tie(nullptr);
#define nl "\n"
#define pb push_back
#define ppb pop_back
#define mp make_pair
#define ff first
#define ss second
#define sz(x) ((int)(x).size())
#define all(x) (x).begin(), (x).end()

typedef long long ll;
typedef unsigned long long ull;
typedef long double lld;

#ifndef ONLINE_JUDGE
#define debug(x) cerr << #x <<" "; _print(x); cerr << endl;
#else
#define debug(x)
#endif

void _print(ll t) {cerr << t;}
void _print(int t) {cerr << t;}
void _print(string t) {cerr << t;}
void _print(char t) {cerr << t;}
void _print(lld t) {cerr << t;}
void _print(double t) {cerr << t;}
void _print(ull t) {cerr << t;}

template <class T, class V> void _print(pair <T, V> p);
template <class T> void _print(vector <T> v);
template <class T> void _print(set <T> v);
template <class T, class V> void _print(map <T, V> v);
template <class T> void _print(multiset <T> v);
template <class T, class V> void _print(pair <T, V> p) {cerr << "{"; _print(p.ff); cerr << ","; _print(p.ss); cerr << "}";}
template <class T> void _print(vector <T> v) {cerr << "[ "; for (T i : v) {_print(i); cerr << " ";} cerr << "]";}
template <class T> void _print(set <T> v) {cerr << "[ "; for (T i : v) {_print(i); cerr << " ";} cerr << "]";}
template <class T> void _print(multiset <T> v) {cerr << "[ "; for (T i : v) {_print(i); cerr << " ";} cerr << "]";}
template <class T, class V> void _print(map <T, V> v) {cerr << "[ "; for (auto i : v) {_print(i); cerr << " ";} cerr << "]";}

int main() {
	fastio();

#ifndef ONLINE_JUDGE
freopen("inputf.in", "r", stdin);
freopen("outputf.in", "w", stdout);
#endif
	
#ifndef ONLINE_JUDGE
	freopen("Error.txt", "w", stderr);
#endif
	int t;
	cin >> t;

	while (t--) {
		int n;
		cin >> n;
		vector<int> v(n);
		for (int i = 0; i < n; i++) {
			cin >> v.at(i);
		}

		sort(v.begin(), v.end());
		debug(v);

		// Find mid elem:
		int mid1 = v.at(n / 2 - 1);
		int mid2 = v.at(n / 2);
		// debug(mid1);
		// debug(mid2);

		// Sum at mid1 side:
		int smid1 = 0;
		for (int i = 0; i < n/2-1; i++) {
			smid1 += mid1 - v.at(i);
		}

		// Sum at mid2 side:
		int smid2 = 0;
		for (int i = n/2; i < n; i++) {
			smid2 += v.at(i) - mid2;
		}

		// debug(smid1);
		// debug(smid2);

		int mid = 0;
		if (smid1 > smid2) {
			mid = n/2 - 1;
		}
		else {
			mid = n / 2;
		}
		debug(mid);

		int sum = 0;
		int tmp = 0;
		for (int i = mid; i > 0; i--) {
			tmp = tmp + (v.at(i) - v.at(i - 1));
		}
		debug(tmp);
		sum = tmp * 2;
		debug(sum);

		tmp = 0;
		for (int i = mid; i < n - 1; i++) {
			tmp = tmp + (v.at(i + 1) - v.at(i));
		}
		debug(tmp);
		sum += 2 * tmp;
		cout << sum << '\n';
	}

}