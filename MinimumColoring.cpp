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
		int n, m;
		cin >> n >> m;
		int x1, y1;
		cin >> x1 >> y1;
		int x2, y2;
		cin >> x2 >> y2;

		int p1 = x1 + y1;
		int p2 = x2 + y2;

		vector<int> vv(m, 0);
		vector<vector<int>> v(n, vv);

		bool color3 = false;

		// If they have different parity -> color3 = false
		if (((p1 & 1) && !(p2 & 1))
			|| (!(p1 & 1) && (p2 & 1))) {
			color3 = false;
		} else {
			// If the have same parity -> color3 = true
			// => new color is required
			color3 = true;
		}

		if (!color3) {
			// (x1, y1) is odd
			if ((x1 + y1) & 1) {
				for (int i = 0; i < n; i++) {
					for (int j = 0; j < m; j++) {
						if ((i + j) & 1) {
							v.at(i).at(j) = 1;
						} else {
							v.at(i).at(j) = 2;
						}
					}
				}
				// if (x1, y1) is even
			} else if (!((x1 + y1) & 1)) {
				for (int i = 0; i < n; i++) {
					for (int j = 0; j < m; j++) {
						if ((i + j) & 1) {
							v.at(i).at(j) = 2;
						} else {
							v.at(i).at(j) = 1;
						}
					}
				}
			}
		} else {
			if ((x1 + y1) & 1) {
				for (int i = 0; i < n; i++) {
					for (int j = 0; j < m; j++) {
						if ((i + j) & 1) {
							if (i == x2 && j == y2) {
								v.at(i).at(j) = 2;
							} else {
								v.at(i).at(j) = 1;
							}
						} else {
							v.at(i).at(j) = 3;
						}
					}
				}
			}
			else {
				for (int i = 0; i < n; i++) {
					for (int j = 0; j < m; j++) {
						if (!((i + j) & 1)) {
							if (i == x2 - 1 && j == y2 - 1) {
								v.at(i).at(j) = 2;
							} else {
								v.at(i).at(j) = 1;
							}
						} else {
							v.at(i).at(j) = 3;
						}
					}
				}
			}
		}
		debug(v);

		for (int i = 0; i < n; i++) {
			for (int j  = 0; j < m; j++) {
				cout << v.at(i).at(j) << ' ';
			}
			cout << '\n';
		}
	}
}