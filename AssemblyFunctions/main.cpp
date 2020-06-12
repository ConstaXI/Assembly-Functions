#include <iostream>

using namespace std;

extern "C" int sum(int a, int b);
extern "C" int power(int a, int b);
extern "C" int array_sum(int array[], int size);

int main(int argc, char** argv[]) {
	int a = 2, b = 4;
	unsigned const int size = 9;
	int array[size] = { 0, 2, 4, 8, 16, 32, 64, 128, 256 };

	printf("a + b = %d\n", sum(a, b));
	printf("a ^ b = %d\n", power(a, b));
	printf("Sum of the elements of the array = %d", array_sum(array, size));

	return 0;
}