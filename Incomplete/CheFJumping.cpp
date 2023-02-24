#include<bits/stdc++.h>

using namespace std;

#define fastio() ios_base::sync_with_stdio(false);cin.tie(NULL);cout.tie(NULL)

typedef long long ll;

int main () {
    ll n;
    cin >> n;
    
    ll sum = 0;
    while (sum < n) {
        if (sum == n) {
            cout << "yes\n";
            return 0;
        }
        sum += 1;
        
        if (sum == n) {
            cout << "yes\n";
            return 0;
        }
        sum += 2;

        if (sum == n) {
            cout << "yes\n";
            return 0;
        }
        sum += 3;
        
        
        if (sum == n) {
            cout << "yes\n";
            return 0;
        }
    }
    cout << "no\n";
}
