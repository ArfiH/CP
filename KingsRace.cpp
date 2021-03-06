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
	ll n;
	cin >> n;

	ll x, y;
	cin >> x >> y;

	pair <ll, ll> white = {1, 1};
	pair <ll, ll> black = {n, n};
	pair <ll, ll> coin = {x, y};

	// Calculate distance of coin from white

	ll distXOfW = coin.first - white.first;
	ll distYOfW = coin.second - white.second;
	ll WMoves = 0;

	if (distXOfW == distYOfW) {
		WMoves = (distXOfW + distYOfW) / 2; 
	}

	else if (distXOfW % 2 == 0 && distYOfW % 2 == 0) {
		WMoves = max(distXOfW, distYOfW);
	}

	else if (distXOfW % 2 != 0 || distYOfW % 2 != 0) {
		WMoves = max(distXOfW, distYOfW);
	}
	
	ll distXOfB = black.first - coin.first;
	ll distYOfB = black.second - coin.second;
	ll BMoves = 0;

	if (distXOfB == distYOfB) {
		BMoves = (distXOfB + distYOfB) / 2; 
	}

	else if (distXOfB % 2 == 0 && distYOfB % 2 == 0) {
		BMoves = max(distXOfB, distYOfB);
	}

	else if (distXOfB % 2 != 0 || distYOfB % 2 != 0) {
		BMoves = max(distXOfB, distYOfB);
	}

	debug(WMoves);
	debug(BMoves);

	if (WMoves <= BMoves && black != coin) {
		cout << "White";
	}
	else {
		cout << "Black";
	}
}





