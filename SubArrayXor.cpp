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


string processString(string s) {
	string t = "";
	int i = 0;
	if (s == "1") {
		return "1";
	} 
	if (s == "0") {
		return "0";
	}
	while (s.at(i) == '0') {	
		i++;
	}
	for (; i < s.length(); i++) {
		t += s.at(i);
	}
	return t;
}


unsigned long long getMod(string str, int n, int k)
{
 
    // pwrTwo[i] will store ((2^i) % k)
    unsigned long long pwrTwo[n];
    pwrTwo[0] = 1 % k;
    for (ll i = 1; i < n; i++)
    {
        pwrTwo[i] = pwrTwo[i - 1] * (2 % k);
        pwrTwo[i] %= k;
    }
 
    // To store the result
    unsigned long long res = 0;
    ll i = 0, j = n - 1;
    while (i < n)
    {
 
        // If current bit is 1
        if (str[j] == '1')
        {
 
            // Add the current power of 2
            res += (pwrTwo[i]);
            res %= k;
        }
        i++;
        j--;
    }
    return res;
}
 

int main() {
	fastio();

#ifndef ONLINE_JUDGE
	freopen("inputf.in", "r", stdin);
	freopen("outputf.in", "w", stdout);
#endif
	
#ifndef ONLINE_JUDGE
	freopen("Error.txt", "w", stderr);
#endif
	int tt;
	cin >> tt;
	while (tt--) {
		int n;
		cin >> n; 
		string s;
		cin >> s;

		// cout << "For s = " << s << '\n';

	    vector<string> v;
		// Pick starting point
	    for (int len = 1; len <= n; len++)
	    {   
	        // Pick ending point
	        for (int i = 0; i <= n - len; i++)
	        {
	            // Print characters from current
	            // starting point to current ending
	            // point. 
	            int j = i + len - 1;
	            string tmp = "";
	            for (int k = i; k <= j; k++) {
	            	tmp += s.at(k);
	            }
	            
	            // tmp = processString(tmp);
				string temp = "";
				for (int l = 0; l < n - tmp.length(); l++) {
					temp += '0';
				}
				temp += tmp;
	            v.pb(temp);
	            // cout << endl;
	        }
	    }
	    // debug(st);
	    debug(v);

	    vector<string> d;
	    // Calculating xor of first 2 substr:
	    string a = v.at(0);
	    string b = v.at(1);
	    string d1 = "";

		for (int i = 0; i < n; i++) {
			if (a.at(i) == b.at(i)) {
				d1 += '0';
			}
			else {
				d1 += '1';
			}
	    }
	    // d.push_back(d1);
	    debug(d1);
	    // Calculating XOR of rest of the elems:
	    for (int i = 2; i < v.size(); i++) {
	    	string nd = "";
	    	for (int j = 0; j < n; j++) {
	    		if (d1.at(j) == v.at(i).at(j)) {
	    			nd += '0';
	    		}
	    		else {
	    			nd += '1';
	    		}
	    	}
	    	d1 = nd;
	    	// cout << d1 << '\n';
	    }
	    // unsigned long long X = binaryToDecimal(d1);
	    int k = 998244353;
	    unsigned long long X = getMod(d1, n, k);
	    cout << X << '\n';
	}
}