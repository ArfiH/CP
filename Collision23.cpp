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
	bool flag = false;
	vector <pair<int, pair <int , char>>> p;
	for (int i = 0 ; i < n ; i++) {
		// pair <int, char> pp = {x.at(i), s.at(i)}
		p.push_back(make_pair(y.at(i), make_pair(x.at(i), s.at(i))));
		sort(p.begin(), p.end());		
	}
	debug(p);

	for (int i = 0; i < n - 1; i++) {
		if (p.at(i).ff == p.at(i + 1).ff) {
			if (p.at(i).ss.ss == 'R' && p.at(i+1).ss.ss == 'L') {
				if (p.at(i).ss.ff < p.at(i+1).ss.ff) {
					cout << "Yes\n";
					break;
				}
			}
			else if (p.at(i + 1).ss.ss == 'R' && p.at(i).ss.ss == 'L') {
				if (p.at(i + 1).ss.ff < p.at(i).ss.ff) {
					cout << "Yes\n";
					break;
				}
			}
		}
		if (i == n - 2) {
			cout << "No\n";
		}
	}
}