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
	\
#ifndef ONLINE_JUDGE
	freopen("Error.txt", "w", stderr);
#endif
	int tt;
	cin >> tt;
	while (tt--) {
		int l, r, a;
		cin >> l >> r >> a;

		int diffl = a - l;
		int diffr = r - a;

		debug(diffl);
		debug(diffr);

		// if (diffr > diffl) {
		// 	int i = r;
		// 	int tmp = i % a;
		// 	int m = tmp;
		// 	int mx = i / a + m;
		// 	cout << "here at " << a << '\n';
						
		// 	while (i % a < a - 1 && i >= l && !(i != r && i % a != tmp)) {
		// 		i--;
		// 		m = i % a;
		// 		int ans = i / a + m; 
		// 		mx = max(mx, ans);
		// 	}

		// 	cout << i << '\n';
		// 	cout << mx << '\n';
		// }
		int mx = INT_MIN;
	
		if (diffr > diffl) {
			int i = r;
			while (i % a != a - 1 && i >= l) {
				i--;
				int ans = i / a + i % a;
				mx = max(mx, ans);
			}
			cout << "at " << a << " ans is " << mx << '\n';
		}

		else {
			int i = l;
			while (i % a != a - 1 && i >= l) {
				i++;
				int ans = i / a + i % a;
				mx = max(mx, ans);
				
			}
			cout << "at " << a << " ans is " << mx << '\n';	
		}
	}
}