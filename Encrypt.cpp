// Author : Arfi

#include<bits/stdc++.h>

using namespace std;

#define fastio() ios_base::sync_with_stdio(false);cin.tie(NULL);cout.tie(NULL)

typedef long long ll;

int main(int argc, char* argv[]) {
	fastio();

	string plain;
	// cout << "argc is " << argc << "\n";
	if (argc < 2) {
		cout << "Usage:Encrypt <Plain text>\n";
		return 1;
	}
	else {
		plain = argv[1];
		for (int i = 2; i < argc; i++) {
			plain = plain + ' ' + argv[i];
		}
	}
	// getline(cin, plain);

	string enc = "";
	int l = plain.length();

	int key = 1;
	for (int i = 0; i < l; i++) {
		char ch = plain.at(i);
		int ascii = ch - 0;
		char newCh;

		if (ascii >= 65 && ascii <= 90) {
			ascii -= 65;
			newCh = ((ascii + key) % 26) + 65;
		}
		else if (ascii >= 97 && ascii <= 122) {
			ascii -= 97;
			newCh = ((ascii + key) % 26) + 97;
		}
		else if (ascii >= 48 && ascii <= 57) {
			ascii -= 48;
			newCh = ((ascii + key) % 10) + 48;
		}
		else {
			newCh = ascii + key;
		}
		// cout << "newCh is " << newCh << "\n";
		enc.push_back(newCh);
	}
	cout << "Encrypted text is " << enc << '\n';

}