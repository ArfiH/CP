#include <bits/stdc++.h>

using namespace std;

#ifndef ONLINE_JUDGE
#define debug(x) cerr << #x <<" "; _print(x); cerr << endl;
#else
#define debug(x)
#endif

int main()
{

	#ifndef ONLINE_JUDGE
	freopen("inputf.in", "r", stdin);
	freopen("outputf.in", "w", stdout);
	#endif
		
	#ifndef ONLINE_JUDGE
		freopen("Error.txt", "w", stderr);
	#endif

	map<string, double> prices;
	prices["USD"] = 72.5;	// It take O(log n)
	prices["GBD"] = 18.4;
	prices["Z"]++; // This will increase the value of the elem whose
				   // key is "Z". If such elem does not exist, then
				   // this line will create a elem with "Z" as key
				   // and will initialize it to 1

	// Find 
	auto it = prices.find("JPY");   // It take O(log n)
	cout << (it == prices.end()) << '\n'; // Outputs 1 bcuz there is
										  // no value whose key is "JPY:"
	it = prices.find("GBD");
	cout << (it == prices.end()) << '\n'; // Outputs 0

	cout << it->first << '\n';
	cout << it->second << '\n';


	// Changing mapped value is O(1) using iterators
	it->second = 20.4;
	// Notes: keys cannot be changed this way.

	cout << it->second << '\n';

	cout << (prices.rbegin())->second << '\n';
}