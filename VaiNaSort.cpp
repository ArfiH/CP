// Author : Arfi

#include<bits/stdc++.h>

using namespace std;

#define fastio() ios_base::sync_with_stdio(false);cin.tie(NULL);cout.tie(NULL)

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
	int x;
	int c = 1;
	bool isSort = true;
	bool isNew = false;

	while (cin >> x && x) {
		isSort = true;
		int i = 1;
		//cout << "Initially x is " << x <<endl;
		for (i = 1; i <= n; ++i) {
			//cout << "x is " << x << " When i is " << i << " and n is " << n << endl;
			if (x != i) {
				isSort = false;
				++c;
				for (int j = i + 1; j <= n; ++j) {
					cin >> x;
					//cout << "x is " << x << " when n is " << n << endl; 
					//if (x == 0) cout << "Wrong code\n";
				}
				break;
			}
			//cout << "x was " << x << endl;
			
			//cout << "x is " << x << endl;
			if (i == n && isSort) {
				cout << c << "\n";
				i = 0;
				c = 1;
				isNew = true;
				//cout << "n was " << n << endl;
				cin >> n;
				//cout << "n is " << n << endl;
				break;
			}
			else {
				cin >> x;
			}
		}

	}
}





