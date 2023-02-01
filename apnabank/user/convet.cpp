#include <bits/stdc++.h>
using namespace std;

int conver_decimal_to_binary(int n){

	int result = 0;
	int power = 1;
	while(n>0){
		int lastbit = (n&1);
		result = lastbit*power;
		power = power*10;
		n=n>>1;
	}
	return power;
}

int main()
{
	freopen("input.txt","r",stdin);
	freopen("output.txt","w",stdout);

	int t;
	cin>>t;
	cout<<conver_decimal_to_binary(t);
	return 0;
}