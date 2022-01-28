#include<bits/stdc++.h>
using namespace std;

int main(){

    #ifdef ONLINEJUDGE
        clock_t tStart = clock();
        freopen("inputf.in","r",stdin); //can need to change file . this one for taking input
        freopen("outputf.in","w",stdout); // this one for output
    #endif

        int n;
        scanf("%d", &n);
        cout << "Final n is " << n << '\n';

    #ifdef ONLINEJUDGE
        fprintf(stdout, "\n>> Runtime: %.10fs\n", (double) (clock() - tStart) / CLOCKS_PER_SEC); // this line gives your code runtime
    #endif

    return 0;
}