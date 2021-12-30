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
		vector <int> num;

		for (int i = 0; i < n; i++) {
			int temp;
			cin >> temp;
			num.push_back(temp);
		}

		debug(num);
	
		// Find difference between the largest and second largest:
		int max_ = INT_MIN;
		int max_ix = 0;

		int min_ = INT_MAX;
		int min_ix = 0;

		for (int i = 0; i < n; i++) {
			if (num[i] > max_) {
				max_ = num[i];
				max_ix = i;
			}
			if (num[i] < min_) {
				min_ = num[i];
				min_ix = i;
			}
		}

		debug(max_);

		int max2 = INT_MIN;
		int max_ix2 = 0;
		
		for (int i = 0; i < n; i++) {
			if (num[i] > max2 && num[i] != max_) {
				max2 = num[i];
				max_ix2 = i;
			}
		}

		debug(max2);
		debug(min_);

		int diff = max_ - max2;
		
		bool flag = true;
		for (int i = 0; i < n; i++) {
			int d = (num.at(i) - min_) % diff;
			if (d != 0) {
				if (diff % d == 0){
					diff = d;
				}
				else {
					flag = false;
				}
			}
		}

		if (flag) {
			cout << diff << "\n";
		}
		else {
			cout << "1\n";
		}
	}
}
