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
#define debug(x); cerr << #x <<" "; _print(x); cerr << endl;
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

// #ifndef ONLINE_JUDGE
// 	freopen("inputf.in", "r", stdin);
// 	freopen("outputf.in", "w", stdout);
// #endif
	
// #ifndef ONLINE_JUDGE
// 	freopen("Error.txt", "w", stderr);
// #endif
	int tt;
	cin >> tt;
	while (tt--) {
		ll n;
		cin >> n;

		vector<ll> v(2 * n);
		for (int i = 0; i < 2 * n; i++) {
			cin >> v.at(i);
		}
		// debug(v);
		sort(v.begin(), v.end());
		bool flag = false;
		while (next_permutation(v.begin(), v.end())) {
			ll p1 = 0;
			vector<ll> v1;
			vector<ll> v2;
			copy(v.begin(), v.begin() + n, back_inserter(v1));
  			copy(v.begin() + n, v.begin() + 2 * n, back_inserter(v2));
			
			sort(v1.begin(), v1.end());
			sort(v2.begin(), v2.end());
			
			for (int i = 0; i < n; i++) {
				if (p1 == v1.at(i)) {
					p1++;
				} else {
					break;
				}
			}

			ll p2 = 0;
			for (int i = 0; i < n; i++) {
				if (p2 == v2.at(i)) {
					p2++;
				} else {
					break;
				}
			}
			if (p1 == p2) {
				// debug(v1);
				// debug(v2);
				// debug(p1);
				// debug(p2);
				flag = true;
				break;
			}
		}
		if (flag) {
			cout << "YES\n";
		} else {
			cout << "NO\n";
		}
	}
}