#include <stdio.h>

struct POINT {
    float x, y;
};

int main()
{
    struct POINT a = {4.1, 3.2};
    printf("%f %f\n", a.x, a.y);

    return 0;
}
