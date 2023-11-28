#include <Core/Lib.hpp>

#include <iostream>

Lib::Lib() :
    m_name { "Library" }
{
}

void Lib::displayName() const
{
    std::cout << m_name;
}
