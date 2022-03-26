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
	int n;
	cin >> n;

	vector<int> x(n);
	vector<int> y(n);

	// vector<char> s(n);
	for (int i = 0; i < n; i++) {
		cin >> x.at(i) >> y.at(i);
	}
	debug(x);
	debug(y);

	string s;
	cin >> s;

	// int right_min = INT_MAX;
	// int left_max = INT_MIN;
	map<int, int> right_min;
	map<int, int> left_max;
	int mn = INT_MAX;
	int mx = INT_MIN;

	for (int i = 0; i < n; i++) {
		if (s.at(i) == 'R') {
			right_min[y.at(i)] = min(mn, x.at(i));
		}
		else if (s.at(i) == 'L') {
			left_max[y.at(i)] = max(mx, x.at(i));
		}
	}

	debug(right_min);
	debug(left_max);

	// auto it1 = right_min.begin();
	// auto it2 = left_max.begin();

	for (int i = 0; i < n; i++) {
		if (right_min[y.at(i)] > x.at(i) && x.at(i) > left_max[y.at(i)]) {
			
		}
	}
}	