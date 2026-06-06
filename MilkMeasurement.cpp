#include<bits/stdc++.h>

using namespace std;

#define fastio() ios_base::sync_with_stdio(false);cin.tie(NULL);cout.tie(NULL)
#define MOD 1000000007
#define MOD1 998244353
#define INF 1e18
#define nline "\n"
#define pb push_back
#define ppb pop_back
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

void init_code()
{
#ifndef ONLINE_JUDGE
	freopen("error.txt", "w", stderr);
#endif
}

int main()
{
	init_code();
	freopen("measurement.in", "r", stdin);
    freopen("measurement.out", "w", stdout);

	ll n;
	cin >> n;
	
	vector<ll> cowOutput = {7, 7, 7}; // Inititally, each produces 7 gallon milk
	
	map<string, ll> mp = {
		{"Bessie", 0},
		{"Elsie", 1},
		{"Mildred", 2}
	};
	
	map<ll, pair<ll, ll> > day;

	for (int i = 0; i < n; i++) {
		ll dayNo;
		cin >> dayNo;
		string cow;
		cin >> cow;
		ll change;
		cin >> change;

		day[dayNo] = make_pair(mp[cow], change);
	}
	// debug(day);

	ll changeCount = 0;
	for (auto it : day) {
		ll dayNo = it.first;
		pair<ll, ll> pr = it.second;

		// ll oldOutput = cowOutput[pr.first];
		ll oldMax = max(cowOutput[0], max(cowOutput[1], cowOutput[2]));
		vector<ll> oldMaxCows;
		for (int i = 0; i < 3; i++) {
			if (cowOutput[i] == oldMax) {
				oldMaxCows.push_back(i);
			}
		}
		
		cowOutput[pr.first] += pr.second;
		ll newMax = max(cowOutput[0], max(cowOutput[1], cowOutput[2]));
		vector<ll> newMaxCows;
		for (int i = 0; i < 3; i++) {
			if (cowOutput[i] == newMax) {
				newMaxCows.push_back(i);
			}
		}

		if (oldMaxCows != newMaxCows) {
			changeCount++; 
		}
	}

	cout << changeCount << '\n';
	return 0;
}