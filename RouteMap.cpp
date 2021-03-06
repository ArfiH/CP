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

#define MAX_LEN 1e5

int main() {

	fastio();

#ifndef ONLINE_JUDGE
freopen("inputf.in", "r", stdin);
freopen("outputf.in", "w", stdout);
#endif
	
#ifndef ONLINE_JUDGE
	freopen("Error.txt", "w", stderr);
#endif
	ll n, m;
	
		
	cin >> n >> m;	
	string s, t;
	// s.pb(' ');
	// t.pb(' ');
	cin.ignore();
	getline(cin, s);
	getline(cin, t);

	// debug(n);
	// debug(m);
	// debug(s);
	// debug(t);
	vector <string> local;
	vector <string> express;

	int ls = s.length();
	int lt = t.length();
	string tmp = "";
	int count = 0;

	for (int i = 0; i < ls; i++) {
		if (s.at(i) == ' ' || i == ls - 1) {
			if (i == ls - 1)
				tmp.pb(s.at(i));
			local.pb(tmp);
			tmp = "";
		}
		else {
			tmp.pb(s.at(i));
		}
	}

	for (int i = 0; i < lt; i++) {
		if (t.at(i) == ' ' || i == lt - 1) {
			if (i == lt - 1)
				tmp.pb(t.at(i));
			express.pb(tmp);
			tmp = "";
		}
		else {
			tmp.pb(t.at(i));
		}
	}
	// debug(local);
	// debug(express);

	for (int i = 0; i < n; i++) {
		if (local.at(i) == express.at(count)) {
			count++;
			cout << "Yes\n";
		}
		else {
			cout << "No\n";
		}
	}
}





