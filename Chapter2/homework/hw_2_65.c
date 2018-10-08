//
// Created by kaiser on 18-10-8.
//

#include "../config.h"
#include <stddef.h>

int odd_ones(unsigned x) {
    int count = 0;
    for (size_t i = 1; i < INT_BIT; i += 2) {
        if (((x >> i) & 1) == 1)
            ++count;
    }
    if (count % 2)
        return 0;
    else
        return 1;
}