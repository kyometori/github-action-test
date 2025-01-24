#!/bin/bash

# Function to run a test case
run_test() {
    expected=$1
    actual=$2
    test_name=$3

    if [ "$actual" != "$expected" ]; then
        echo "[FAIL] $test_name: Expected '$expected', but got '$actual'"
        exit 1
    else
        echo "[PASS] $test_name"
    fi
}

# Test case 1: Simple positive integers
output=$(./a.out 1 2)
run_test "3" "$output" "Test 1: Adding 1 and 2"

# Test case 2: Simple positive integers
output=$(./a.out 5 7)
run_test "12" "$output" "Test 2: Adding 5 and 7"

# Test case 3: Negative and positive integer
output=$(./a.out -1 3)
run_test "2" "$output" "Test 3: Adding -1 and 3"

# Test case 4: Adding zero
output=$(./a.out 0 0)
run_test "0" "$output" "Test 4: Adding 0 and 0"

# Test case 5: Adding negative numbers
output=$(./a.out -5 -7)
run_test "-12" "$output" "Test 5: Adding -5 and -7"

# Test case 6: Large numbers
output=$(./a.out 1000000 2000000)
run_test "3000000" "$output" "Test 6: Adding 1,000,000 and 2,000,000"

# Test case 7: Large negative numbers
output=$(./a.out -1000000 -2000000)
run_test "-3000000" "$output" "Test 7: Adding -1,000,000 and -2,000,000"

# Test case 8: Zero and a positive number
output=$(./a.out 0 123456)
run_test "123456" "$output" "Test 8: Adding 0 and 123456"

# Test case 9: Zero and a negative number
output=$(./a.out 0 -123456)
run_test "-123456" "$output" "Test 9: Adding 0 and -123456"

# Test case 10: Large difference
output=$(./a.out 999999999 1)
run_test "1000000000" "$output" "Test 10: Adding 999,999,999 and 1"

# All tests passed
echo "All tests passed successfully!"
exit 0

