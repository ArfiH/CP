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
	while(tt--) {
		double a, b, c;
		cin >> a >> b >> c;
		debug (a);
		debug(b);
		debug(c);
		double m1 = (2.0 * b - c) / a;
		double m2 = (a + c) / (2.0 * b);
		double m3 = (2.0 * b - a) / c; 
		bool flag = false;
		// cout << m1 << "  " << m2 << "  "<< m3 << '\n';
		debug(m1);
		debug(m2);
		debug(m3);
		
		if (m1 == int(m1) && (2 * b == a * m1 + c)) {
			if (m1 > 0) {
				flag = true;
			}
			// cout << "Used m1 " << m1 << '\n';
		}
		if (m2 == int(m2) && (2 * b * m2 == a + c)) {
			if (m2 > 0) {
				flag = true;
			}
			// cout <<"Used m2 " << m2 << '\n';
		}
		if (m3 == int(m3) && (2 * b == a + c * m3)) {
			if (m3 > 0) {
				flag = true;
			}
			// cout << "Used m3 " << m3 << '\n';
		}
			
		if (flag) 
			cout << "YES\n";
		else 
			cout << "NO\n";
	}
}