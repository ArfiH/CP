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


 string smaller(string s, string t) {
	int l = s.size();
	int m = t.size();

	for (int i = 0; i < min(l, m); i++) {
		if (s[i] < t[i]) {
			return s;
			break;
		}
		else if (s[i] > t[i]) {
			return t;
			break;
		}
		if (i == min(l, m)-1) {
			if (l < m) {
				return s;  
			}
			else if (l > m) {
				return t;
			}
			else if (l == m) {
				return s;
			}
		}
	}
}


string larger(string s, string t) {
	int l = s.size();
	int m = t.size();

	for (int i = 0; i < min(l, m); i++) {
		if (s[i] < t[i]) {
			return t;
			break;
		}
		else if (s[i] > t[i]) {
			return s;
			break;
		}
		if (i == min(l, m)-1) {
			if (l < m) {
				return t;  
			}
			else if (l > m) {
				return s;
			}
			else if (l == m) {
				return t;
			}
		}
	}
}


int main() {
    
#ifndef ONLINE_JUDGE
freopen("inputf.in", "r", stdin);
freopen("outputf.in", "w", stdout);
#endif

#ifndef ONLINE_JUDGE
	freopen("Error.txt", "w", stderr);
#endif

	
	fastio();

	string s;
	cin >> s;

	int l = s.size();
	std::vector<string> word;
	
	for (int i = 0; i < l; i++) {
		string t = "";
		for (int j = i; j < l; j++) {
			t.push_back(s[j]);
		}

		for (int j = 0; j < i; j++) {
			t.push_back(s[j]);
		}
		// cout << "t " << t << "\n";
		word.push_back(t);
	}

	string min_ = word[0];
	string max_ = word[0];

	for (int i = 0; i < word.size(); i++) {
		min_ = smaller(min_, word[i]);
		max_ = larger(max_, word[i]);
	}
	cout << min_ << "\n";
 	cout << max_ << "\n";
 	debug(min_);
 }
