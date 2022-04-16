#include <iostream>
#include "Tree.h"


int main(){
    Tree<int> t;
    t.insert(15);
    t.insert(10);
    t.insert(20);
    t.insert(5);
    t.insert(30);
    t.insert(25);

    std::cout << "Tree Member: " << 15 << " :" << t.member(15) << std::endl;
    std::cout << "Tree Member: " << 5 << " :" << t.member(5) << std::endl;
    std::cout << "Tree Member: " << 25 << " :" << t.member(25) << std::endl;
    std::cout << "Tree Member: " << 7 << " :" << t.member(7) << std::endl;
    std::cout << "Tree Member: " << 11 << " :" << t.member(11) << std::endl;
    std::cout << "Tree Member: " << 44 << " :" << t.member(44) << std::endl;
    
}