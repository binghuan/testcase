#!/bin/bash
echo "Author: BH_Lin"
echo "http://studiobinghuan.blogspot.com.tw?view=flipcard"
echo "----"
result=$(env x='() { :;}; echo vulnerable' bash -c "echo this is a test")
echo "${result}"
result2=$(echo "${result}" | grep -i -E "vulnerable")
#result2=$(echo "${result}" | grep -i -E "safe")
if [  "${result2}" != "" ]; then
	echo -e "\a"
	echo "X﹏X The system is vulnerable"
else
	echo "∩__∩y The system is safe"
fi