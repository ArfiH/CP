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

#ifndef ONLINE_JUDGE
	freopen("inputf.in", "r", stdin);
	freopen("outputf.in", "w", stdout);
#endif
	
#ifndef ONLINE_JUDGE
	freopen("Error.txt", "w", stderr);
#endif
	int tt;
	cin >> tt;
	while (tt--) {
		int n;
		cin >> n;
		vector<ll> v(n);

		for (int i = 0; i < n; i++) {
			cin >> v.at(i);
			v.at(i) = abs(v.at(i));
		}

		debug(v);
		ll lAtE = INT_MAX;
		ll mAtO = INT_MIN;
		int li = 0;
		int mi = 1;

		// Choose least abs value at even place
		for (int i = 0; i < n; i += 2) {
			if(lAtE > v.at(i)){
				lAtE = v.at(i);
				li = i;
			}		
			
		}

		// Choose max abs value at odd place
		for (int i = 1; i < n; i += 2) {
			if(mAtO < v.at(i)) {
				mAtO = v.at(i);
				mi = i;
			}			
		}

		ll ansBefore = 0;
		for (int i = 0; i < n - 1; i+=2) {
			ansBefore += v.at(i);
			ansBefore -= v.at(i+1);
		}
		if (n & 1) {
			ansBefore += v.at(n - 1);
		}

		if (mi != li) {
			swap(v.at(mi), v.at(li));
		}

		debug(mAtO);
		debug(lAtE);

		ll ans = 0;
		for (int i = 0; i < n - 1; i+=2) {
			ans += v.at(i);
			ans -= v.at(i+1);
		}
		if (n & 1) {
			ans += v.at(n - 1);
		}
		cout << max(ansBefore, ans) << '\n';
	}
}