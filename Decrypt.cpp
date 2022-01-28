// Author : Arfi

#include<bits/stdc++.h>

using namespace std;

#define fastio() ios_base::sync_with_stdio(false);cin.tie(NULL);cout.tie(NULL)

typedef long long ll;

#ifndef ONLINE_JUDGE
#define debug(x) cerr << #x <<" "; _print(x); cerr << endl;
#else
#define debug(x)
#endif


int main(int argc, char* argv[]) {
	fastio();

	// cout << "Enter Encrypted text: ";
	string enc;
	if (argc < 2) {
		cout << "Usage:Decrypt <Encrypted text>\n";
		return 1;
	}
	else {
		enc = argv[1];
		for (int i = 2; i < argc; i++) {
			enc = enc + ' ' + argv[i];
		}
	}
	// getline(cin, enc);

	string plain = "";
	int l = enc.length();

	int key = 1;
	for (int i = 0; i < l; i++) {
		char ch = enc.at(i);
		int ascii = ch - 0;
		char newCh;

		if (ascii >= 65 && ascii <= 90) {
			ascii -= 65;
			ascii = ascii - key;
			if (ascii < 0) {
				newCh = 26 + ascii + 65;
			}
			else {
				newCh = ascii + 65;
			}
		}
		else if (ascii >= 97 && ascii <= 122) {
			ascii -= 97;
			ascii = ascii - key;
			if (ascii < 0) {
				newCh = 26 + ascii + 97;
			}
			else {
				newCh = ascii + 97;
			}
		}
		else if (ascii >= 48 && ascii <= 57) {
			ascii -= 48;
			ascii = ascii - key;
			if (ascii < 0) {
				newCh = (26 + ascii) + 48;
			}
			else {
				newCh = ascii + 48;
			}
		}
		else {
			newCh = ascii - key;
		}
		// cout << "newCh is " << newCh << "\n";
		plain.push_back(newCh);
	}
	cout << "Plain text is " << plain << '\n';

}