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
	
	int k = 3;
	int x;
	long long sum = 0;
	vector<int> v;
	vector<int> a;
	int mn = INT_MAX;
	
	while(cin >> x) {
		mn = min(mn, x);
		debug(mn);
		v.pb(x);

		if (k > 0) {
			sum += x;
			// cout << "added " << x << '\n';
			a.pb(x);
			k--;
		}
		else {
			if (x > mn) {
				int mni = -1;
				for (int i = 0; i < v.size(); i++) {
					if (v.at(i) <= mn) {
						mn = v.at(i);
						// cout << "Our mn is "<< mn << '\n';
						mni = i;
					}
				}
				sum -= mn;
				// cout << "removed " << mn << '\n';

				for (int i = 0; i < v.size(); i++) {
					if (v.at(i) <= mn) {
						mn = v.at(i);
						mni = i;
					}
				} 
				debug(mni);

				if (mni != -1) v.at(mni) = INT_MAX;
				
				mn = *min_element(v.begin(), v.end());
				
				debug(mn);
				debug(v);
				sum += x;
				// cout << "added " << x << '\n';
			}
		}
	}
	debug(a);
	cout << "Sum is " << sum << '\n';
}