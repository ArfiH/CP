// Author : Arfi
// Atcoder abc 239
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
	int a, b, c, d;
	cin >> a >> b >> c >> d;
	int mn = a + c;
	int mx = b + d;

	int np = 0; // Numebr of primes between mn and mx
	int nc = 0; // Number of composites between mn and mx;

	vector<int> p = {2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 
	41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 
	107, 109, 113, 127, 131, 137, 139, 149, 151, 157, 163, 167,
	173, 179, 181, 191, 193, 197, 199 }; 

	int m = b;
	bool isTaha = false;
	while (m >= a && !isTaha) {
		auto it1 = upper_bound(p.begin(), p.end(), m + c) - p.begin();
		int i = it1;
		int j = p.at(i);
		// debug(j);

		int taha = m;
		int aoki = c;
		for (aoki = c; aoki < d; aoki++) {
			int n = taha + aoki;
			// cout << "n is " << n << '\n';
			if (n == j) {
				np++;
				// cout << "np\n";
				i--;
				j = p.at(i);
				debug(j);
				break;
			}
			else {
				nc++;
				// cout << "nc\n";
			}
			if (aoki == d) {
				cout << "Tahakashi\n";
				isTaha = true;
				break;
			}
		}
		m--;
	}
	if (!isTaha) {
		cout << "Aoki\n";
	}
	// cout << np << ' ' << nc << '\n';
}