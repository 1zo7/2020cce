#include <stdio.h>
struct POINT {
    float x, y, z;
};

struct POINT point[5] = {{0,0,0}, {1,0,0}, {0,1,0}, {0,0,1},{1,1,1}};

int main()
{
    struct POINT *p = & point[0];
    printf("%.2f %.2f %.2f\n", p->x, p->y, p->z);

    p++;
    printf("%.2f %.2f %.2f\n", p->x, p->y, p->z);

    p++;
    printf("%.2f %.2f %.2f\n", p->x, p->y, p->z);
}
