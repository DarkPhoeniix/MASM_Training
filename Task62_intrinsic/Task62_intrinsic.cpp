
#include <iostream>
#include <chrono>
#include <xmmintrin.h>

int main()
{
    __m128 v1 = { 1.00000f, 2.00000f, 3.00000f, 4.00000f };
    __m128 v2 = { 1.00002f, 1.00002f, 1.00001f, 1.00001f };
    const int million = 1000000;

    std::chrono::steady_clock::time_point t1, t2;
    std::chrono::duration<double, std::milli> span;

    t1 = std::chrono::steady_clock::now();
    for (int i = 1; i < million; i++)
    {
        v1 = _mm_mul_ps(v1, v2);
    }
    t2 = std::chrono::steady_clock::now();
    span = t2 - t1;

    std::cout << "\n\tIntrinsics : " << span.count() << " ms";
    std::cout << std::endl << "\n\t";

    return 0;
}