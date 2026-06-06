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
	freopen("traffic.in", "r", stdin);
    freopen("traffic.out", "w", stdout);

	ll n;
	cin >> n;

	vector< pair<string, pair<ll, ll> > > v(n);
	for (int i = 0; i < n; i++) {
		string s;
		cin >> s;
		ll a, b;
		cin >> a >> b;
		v[i] = {s, {a, b}};	
	}

	// debug(v);

	ll flowLower = 0, flowUpper = 1e6 - 1;

	for (int i = n - 1; i >= 0; i--) {
		if (v[i].first == "none") {	
			flowLower = max(flowLower, v[i].second.first);
			flowUpper = min(flowUpper, v[i].second.second);
		}
		else if (v[i].first == "on") {
			flowLower -= v[i].second.second;
			flowUpper -= v[i].second.first; 
			flowLower = max(0ll, flowLower);	
		}
		else if (v[i].first == "off") {	
			flowLower += v[i].second.second;
			flowUpper += v[i].second.first; 
		}
	}
	cout << flowLower << ' ' << flowUpper << '\n';

	flowLower = 0ll, flowUpper = 1e6 - 1;

	for (int i = 0; i < n; i++) {
		if (v[i].first == "none") {
			flowLower = max(flowLower, v[i].second.first);
			flowUpper = min(flowUpper, v[i].second.second);
		}
		else if (v[i].first == "on") {
			flowLower += v[i].second.second;
			flowUpper += v[i].second.first; 	
		}
		else if (v[i].first == "off") {	
			flowLower -= v[i].second.second;
			flowUpper -= v[i].second.first; 
			flowLower = max(0ll, flowLower);	
		}
		// cout << flowLower << ' ' << flowUpper << '\n';
	}
	
	cout << flowLower << ' ' << flowUpper << '\n';
	return 0;
}