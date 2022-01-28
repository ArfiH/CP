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

int max_xor(int arr[], int n);

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

	vector <ll> arr;


	ll l = (2 * n - 1) * n;
	for (int i = 0; i < l; i++) {
		cin >> arr.at(i);
	}
	cout << max_xor(arr, l) << endl;

	return 0;
}

int max_xor(vector <ll>& arr, ll n)
{
	int maxx = 0, mask = 0;

	set<int> se;

	for (int i = 30; i >= 0; i--) {

		// set the i'th bit in mask
		// like 100000, 110000, 111000..
		mask |= (1 << i);

		for (int i = 0; i < n; ++i) {

			// Just keep the prefix till
			// i'th bit neglecting all
			// the bit's after i'th bit
			se.insert(arr[i] & mask);
		}

		int newMaxx = maxx | (1 << i);

		for (int prefix : se) {

			// find two pair in set
			// such that a^b = newMaxx
			// which is the highest
			// possible bit can be obtained
			if (se.count(newMaxx ^ prefix)) {
				maxx = newMaxx;
				break;
			}
		}

		// clear the set for next
		// iteration
		se.clear();
	}

	return maxx;
}
