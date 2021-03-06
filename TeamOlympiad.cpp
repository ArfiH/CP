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
	int n;
	cin >> n;
	vector <int> skill(n);

	for (int i = 0; i < n; i++) {
		int temp;
		cin >> temp;

		skill.at(i) = temp;
	}

	vector <int> temp = skill;
	vector < vector <int> > team;

	int numOfTeams = 0;

	debug(skill);
	sort(skill.begin(), skill.end());
	skill.push_back(0);
	debug(skill);

	vector <int> first;
	first.push_back(0);
	int prev = 0;
	int diff = INT_MAX;
	int c = 0; 
	for (int i = 1; i < n + 1; i++) {
		if (skill.at(i) != skill.at(i - 1)) {
			debug(i - prev);
			first.push_back(i);
			diff = min(diff, i - prev);
			prev = i;
			c++;
		}
	}

	debug(first);
	if (c == 3){
		cout << diff << "\n";

		for (int i = 0; i < diff; i++) {
			bool is1 = true;
			bool is2 = true;
			bool is3 = true;

			for (int j = 0; j < n; j++) {
				if (temp.at(j) == 1 && is1 && is2 && is3) {
					cout << j + 1 << " ";
					temp.at(j) = 0;
					is1 = false;
					j = -1;
					continue;
				}
				if (temp.at(j) == 2 && is2 && is1 == false) {
					cout << j + 1 << " ";
					temp.at(j) = 0;
					is2 = false;
					j = -1;
					continue;
				}
				if (temp.at(j) == 3 && is3 && is1 == false && is2 == false) {
					cout << j + 1 << " ";
					temp.at(j) = 0;
					is3 = false;
					j = -1;
					continue;
				}
			}
			cout << "\n";
		}
	}
	else {
		cout << "0";
	}
}





