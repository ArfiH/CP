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
		string t;
		cin >> t;
		string s = "";
		// debug(t);
		
		int e = 0;
		int o = 0;
		int z =  0;

		// Shifts zeroes to the last
		int zeroct = 0;
		for (int i = 0; i < t.length(); i++) {
			if (t.at(i) == '0')
				zeroct++;
			else
				s += t.at(i);
		}
		for (int i = 0; i < zeroct; i++) {
			s += '0';
		}
		debug(s);
		bool possible = false;

		for (int i = 0; i < s.length(); i++) {
			if ((s.at(i) - '0') & 1) {
				// debug((s.at(i) - '0'));
				o++;
				if (o >= 2) {
					possible = true;
					break;
				}
			}
			else if (s.at(i) == '0') {
				z++;
				if (e >= 2 || (e >= 1 && z > 1)) {
					possible = true;
					break;
				}
			}
			else {
				e++;
				if (e >= 2) {
					possible = true;
					break;
				}
			}
		}

		if (possible == false) {
			cout << "NO\n";
		} else {
			cout << "YES\n";
		}

	}
}