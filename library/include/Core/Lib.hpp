#pragma once

#include <string>

struct Lib
{
    Lib();

    std::string getName() const;

private:
    std::string m_name;
};
