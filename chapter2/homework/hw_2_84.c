//
// Created by kaiser on 18-10-11.
//

unsigned f2u(float x) {
    return *(unsigned *) &x;
}

int float_le(float x, float y) {
    unsigned ux = f2u(x);
    unsigned uy = f2u(y);

    unsigned sx = ux >> 31;
    unsigned sy = uy >> 31;

    return (ux << 1 == 0 && uy << 1 == 0) ||
            (sx && !sy) ||
            (!sx && !sy && ux <= uy) ||
            (sx && sy && ux >= uy);
}