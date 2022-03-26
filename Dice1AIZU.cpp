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
	vector<int> v(6);
	for (int i = 0; i < 6; i++) {
		cin >> v.at(i);
	}
	string s;
	cin >> s;
	int l = s.length();

	for (int i = 0; i < l; i++) {
		if (s.at(i) == 'S') {
			swap(v.at(0), v.at(1));
			swap(v.at(0), v.at(5));
			swap(v.at(0), v.at(4));
		}
		else if(s.at(i) == 'E') {
			swap(v.at(2), v.at(5));
			swap(v.at(0), v.at(2));
			swap(v.at(0), v.at(3));
		}
		else if(s.at(i) == 'W') {
			swap(v.at(0), v.at(3));
			swap(v.at(0), v.at(2));
			swap(v.at(2), v.at(5));
		}
		else {
			swap(v.at(0), v.at(4));
			swap(v.at(0), v.at(5));
			swap(v.at(0), v.at(1));
		}
	}
	cout << v.at(0) << '\n';
}