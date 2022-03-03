#include <iostream>

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
		
	// Append a character to string:
	// s = s + 'e';  This operation is of order O(n)

	// s += 'e'; This operation is of order O(1)

	// Note: If you want to use getline(cin, s) after taking integer as an input
	// then you need to write getline(cin, s) one more time to store something in s


	int n;
	cin >> n;

	string s;
	getline(cin, s);
	getline(cin, s);
	

	// Get substring from s:
	// s.substr(index, length);

	cout << s.substr(1, 4) << '\n'; // Outputs bcde
	cout << s.substr(0, 5) << '\n'; // Outputs abcde	
	cout << s.substr(0, 10) << '\n'; // Outputs abcde	


	// Convert C++ String into null terminated C String: s.c_str()
	cout << s.c_str() << '\n';
	return 0;
}