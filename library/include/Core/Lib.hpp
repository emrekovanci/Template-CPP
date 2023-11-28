#pragma once

#include <string>

struct Lib
{
    Lib();

    void displayName() const;

private:
    std::string m_name;
};
