#include <MathLib/Addition.h>
#include <MathLib/Division.h>
#include "PrintLib/PrintResult.h"

int main() {
    const auto addOutput = addition(2.f, 3.f);
    const auto divOutput = division(2.f, 3.f);
    printResult(addOutput, divOutput);
    return 0;
}
