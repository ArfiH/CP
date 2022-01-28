// Author : Arfi

#include<bits/stdc++.h>

using namespace std;

#define fastio() ios_base::sync_with_stdio(false);cin.tie(NULL);cout.tie(NULL)
#define MOD 1000000007
#define MOD1 998244353
#define INF 1e18
#define nline "\n"
#define pb push_back
#define ppb pop_back
#define mp make_pair
#define ff first
#define ss second
#define PI 3.141592653589793238462
#define set_bits __builtin_popcountll
#define sz(x) ((int)(x).size())
#define all(x) (x).begin(), (x).end()

typedef long long ll;
typedef unsigned long long ull;
typedef long double lld;
// typedef tree<pair<int, int>, null_type, less<pair<int, int>>, rb_tree_tag, tree_order_statistics_node_update > pbds; // find_by_order, order_of_key

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
	int t;
	cin >> t;

	while (t--) {
		int n;
		cin >> n;

		vector<ll> v(n);
		ll mx = 0;
		int mi = -1;
		
		bool canSolve = false;
		for (int i = 0; i < n; i++) {
			cin >> v.at(i);
			if (v.at(i) > mx) {
				mx = v.at(i);
				mi = i;
			}
		}
		// debug(v);
		// debug(mi);
	
		
		if(mx == v.at(0) || mx == v.at(n - 1)) {
			canSolve = true;
		}
		
		int d = 0; // Direction: Left is 0 & Right is 1
		if ((n & 1) == 1) {
			// When n is Odd
			int mid = (n + 1) / 2;
			mid -= 1;
			// if (mi == mid && n != 1) {
			// 	canSolve = false;
			// }
			if (mi < mid) {
				d = 0;
			}
			else {
				d = 1;
			}
		}
		else {
			// When n is Even
			int mid = n / 2;
			mid -= 1;
			if (mi < mid) {
				d = 0;
			}
			else {
				d = 1;
			}
		}
		int mid = n / 2;
		
		if (d == 0) {
			// max is in left half 
			// debug(v);
			reverse(v.begin(), v.begin() + mi);	
			
			// reverse rest
			// debug(v);
			reverse(v.begin() + mi, v.begin() + n);
			
			// swap(v.at(0), v.at(n - 1));
		}
		else {
			// max is in right half
			if (mi != 0) {
				reverse(v.begin() + mi - 1, v.begin() + n);
			}
			// debug(v);
			// reverse rest
			reverse(v.begin(), v.begin() + mi - 1);
			// debug(v);
			// swap(v.at(0), v.at(n - 1));
		}
		
		// debug(v);
		if (canSolve) {
			for (int i = 0; i < n; i++) {
				cout << v.at(i) << " ";
			}
			cout << "\n";
		}
		else {
			cout << "-1\n";
		}
	}
}





