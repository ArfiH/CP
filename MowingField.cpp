#include <algorithm>
#include <bitset>
#include <complex>
#include <deque>
#include <exception>
#include <fstream>
#include <functional>
#include <iomanip>
#include <ios>
#include <iosfwd>
#include <iostream>
#include <istream>
#include <iterator>
#include <limits>
#include <list>
#include <locale>
#include <map>
#include <memory>
#include <new>
#include <numeric>
#include <ostream>
#include <queue>
#include <set>
#include <sstream>
#include <stack>
#include <stdexcept>
#include <streambuf>
#include <string>
#include <typeinfo>
#include <utility>
#include <valarray>
#include <vector>


#include <array>
#include <atomic>
#include <chrono>
#include <condition_variable>
#include <forward_list>
#include <future>
#include <initializer_list>
#include <mutex>
#include <random>
#include <ratio>
#include <regex>
#include <scoped_allocator>
#include <system_error>
#include <thread>
#include <tuple>
#include <typeindex>
#include <type_traits>
#include <unordered_map>
#include <unordered_set>


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

const int l = 5000;
int arr[l][l];
//const int l = sizeof(arr) / sizeof(arr[0]);

int main() {

fastio();

#ifndef ONLINE_JUDGE
(void)freopen("mowing.in", "r", stdin);
(void)freopen("mowing.out", "w", stdout);
#endif
	
#ifndef ONLINE_JUDGE
	freopen("Error.txt", "w", stderr);
#endif
	int n;
	cin >> n;
	arr[l / 2][l / 2] = 1;
	int i = l / 2, j = l / 2;
	int t = 1;
	int ans = 2147483647;
	bool flag = false;
	
	while(n--) {
		char dir;
		int step;
		cin >> dir;
		cin >> step;
	    
		//for (int i = 0; i < l; i++) {
//			for (int j = 0; j < l; j++) {
//				cout << arr[i][j] << ' ';
//			}
//			cout << '\n';	
//		}

		if (dir == 'S') {
			int c;
			for (c = 1; c <= step; c++) {
				if (arr[i + c][j] != 0) {
					t++;
					int diff = t - arr[i + c][j];
					ans = min(ans, diff);
					flag = true;
					debug (diff);
				} else {
					arr[i + c][j] = ++t;
				}
			}
			i = i + c - 1;
		} else if (dir == 'N') {
			int c;
			for (c = 1; c <= step; c++) {
				if (arr[i - c][j] != 0) { 
					t++;
					int diff = t - arr[i - c][j];
					ans = min(ans, diff);
					flag = true;
					debug (diff);
				} else {
					arr[i - c][j] = ++t;
				}
			}
			i = i - c + 1;
		} else if (dir == 'E') {
			int c;
			for (c = 1; c <= step; c++) {
				if (arr[i][j + c] != 0) {
					t++;
					int diff = t - arr[i][j + c];
					ans = min(ans, diff);
					flag = true;
					debug (diff);
				} else {
					arr[i][j + c] = ++t;
				}
			}
			j = j + c - 1;
		} else if (dir == 'W') {
				int c;
				for (c = 1; c <= step; c++) {
					if (arr[i][j - c] != 0) {
						t++;
						int diff =  t - arr[i][j - c];
						ans = min (ans, diff);
						flag = true;
						debug (diff);
					}
					else {
						arr[i][j - c] = ++t;
					}
				}
				j = j - c + 1;
		}
	}
	if (flag)
		cout << ans << '\n';	
	else
		cout << "-1\n";
}