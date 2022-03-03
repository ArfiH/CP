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
	// clock_t tStart = clock();
	fastio();

#ifndef ONLINE_JUDGE
freopen("inputf.in", "r", stdin);
freopen("outputf.in", "w", stdout);
#endif
	
#ifndef ONLINE_JUDGE
	freopen("Error.txt", "w", stderr);
#endif

	ll t;
	cin >> t;
	while (t--) {
		ll n,k;
		cin >> n >> k;

		vector<ll> v(n);
		for (ll i = 0; i < n; i++) {
			char tmp;
			cin >> tmp;
			v.at(i) = tmp - '0';
		}
		// debug(v);
		
		vector<ll> p(n);
		ll sum = 0;
		ll c = 0;
		for (int i = 0; i < n; i++) {
			if (sum == 0 && v.at(i) == 0) {
				c++;
				continue;
			}
			sum += 10 - v.at(i);
			p.at(i) = sum;
			if (p.at(i) <= k) {
				c++;
			}
			else if (i == c && v.at(i) == 0) {
				c++;
			}
		}
		debug(p);
		cout << c << '\n';

	}
	// printf("Time taken: %.4fs\n", (double)(clock() - tStart)/CLOCKS_PER_SEC);	
}