int func(string str,string str2, int n)
{
	if (str[n] <= str2[n])
		return 0;
	else if (str[n] >= str2[n])
		return 1;
	else 
		return func(str,str2, ++n);
}

