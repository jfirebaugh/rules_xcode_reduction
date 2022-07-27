#include "tools/cpp/runfiles/runfiles.h"
#include <iostream>

using bazel::tools::cpp::runfiles::Runfiles;

int main() {
    std::string error;
    std::unique_ptr<Runfiles> runfiles(Runfiles::CreateForTest(&error));

    if (runfiles == nullptr) {
        std::cerr << error << std::endl;
        return 1;
    }

    std::cout << runfiles->Rlocation("rules_xcode_reduction/data.txt") << std::endl;
    return 0;
}
