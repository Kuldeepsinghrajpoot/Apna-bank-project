#include <bits/stdc++.h>
using namespace std;

void clear_bit_in_range(int i,int j,int &n){
	int a = (~0)<<(j+1);
	int b = (1<<i)-1;
	int mask = a|b;
	n = n&mask;
}

int main()
{
	freopen("input.txt","r",stdin);
	freopen("output.txt","w",stdout);

	int i,j,n;
	n = 31;
	j = 3;
	i = 1;

	clear_bit_in_range()
	return 0;
}