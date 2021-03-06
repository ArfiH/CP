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

	string p, s;
	cin >> p;
	string temp = "";
	getline(cin, temp);
	getline(cin, s);
	s += ' ';

	vector <pair <char, string>> match;
	int lp = p.length();
	int ls = s.length();

	vector <string> words;
	
	int prev = 0;
	string word = "";
	debug(p);
	debug(s);
	bool samePattern = true;

	vector <string> hsh(26);

	for (int i = 0; i < ls; i++) {
		if (s.at(i) != ' ') {
			word += s.at(i);
		}
		else {
			words.push_back(word);
			word = "";
		}
	}
	
	debug(words);
	
	if (lp != words.size()) {
		samePattern = false;
	}

	if (samePattern)	
		for (int i = 0; i < lp; i++) {
			match.push_back(make_pair(p.at(i), words.at(i)));
			if (hsh.at(p.at(i) - 'a') == "" || hsh.at(p.at(i) - 'a') == words.at(i)) {
				hsh.at(p.at(i) - 'a') = words.at(i);
			}
			else {
				samePattern = false;
				break;
			}
		}

	vector < vector <int>> charix(lp);
	vector < vector <int>> wordix(lp);


	if (samePattern) {
		// Check whether indices of 'a' and "dog" are same.
		// Indices of all character of first elem of match pair.
		for (int i = 0; i < lp; i++) {
			vector <int> temp;
			for (int j = 0; j < lp; j++) {
				if (match.at(i).first == match.at(j).first) {
					temp.push_back(j);
				}
			}
			charix.at(i) = temp;
		}

		// Indices of all words
		for (int i = 0; i < lp; i++) {
			vector <int> temp;
			for (int j = 0; j < lp; j++) {
				if (match.at(i).second == match.at(j).second) {
					temp.push_back(j);
				}
			}
			wordix.at(i) = temp;
			if (wordix.at(i) != charix.at(i)) {
				samePattern = false;
				break;
			}
		}
	}


	debug(charix);
	debug(wordix);
	debug(match);
	debug(hsh);
	cout << samePattern;
}





