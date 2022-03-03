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
	int n, x;
	cin >> n >> x;
	ll amx = 0, amn = 0;
	vector<pair<int, int>> v;
	vector<int> dv;
	vector<int> vmx;
	vector<int> vmn;
	for (int i = 0; i < n; i++) {
		int a, b;
		cin >> a >> b;
		v.pb({a, b});
		dv.pb(abs(a - b));
		amx += max(a, b);
		amn += min(a, b);

		vmx.pb(max(a, b));
		vmn.pb(min(a, b));
	}
	int d1 = amx - x;
	int d2 = x - amn;

	bool isMax = false;

	debug(d1);
	debug(d2);
	debug(dv);

	for (int i = 0; i < n; i++) {
		if(dv.at(i) == d1 || d1 == 0) {
			isMax = true;
			cout << "Yes\n";
			break;
		}
		if (dv.at(i) == d2 || d2 == 0) {
			isMax = true;
			cout << "Yes\n";
			break;
		}
	}
	bool flag = true;
	if (isMax == false) {
		sort(dv.begin(), dv.end());
		debug(dv);

		ll sum = 0;
		
		// Check if sum exists
		

		if (flag) {
			cout << "Yes\n";
		}
		else {
			cout << "No\n";
		}
	}
}