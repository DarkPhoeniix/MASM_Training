
#include <iostream>
#include <chrono>

extern "C" int DoRun(float*, float*, int);

int main()
{
    float arr[64] = { 1.00000f, 2.00000f, 3.00000f, 4.00000f };
    float mul[64] = { 1.00002f, 2.00002f, 3.00001f, 4.00001f };
    const int million = 1000000;

    std::chrono::steady_clock::time_point t1, t2;
    std::chrono::duration<double, std::milli> span;

    t1 = std::chrono::steady_clock::now();
    for (int i = 1; i < million; i++)
    {
        for (int j = 0; j < 4; j++)
        {
            arr[j] *= mul[j];
        }
    }
    t2 = std::chrono::steady_clock::now();
    span = t2 - t1;

    std::cout << "\n\tC++ : " << span.count() << " ms" << std::endl;

    t1 = std::chrono::steady_clock::now();
    DoRun(arr, mul, million);
    t2 = std::chrono::steady_clock::now();
    span = t2 - t1;

    std::cout << "\n\tASM : " << span.count() << " ms" << std::endl;
    std::cout << "\n\t";

    return 0;
}
