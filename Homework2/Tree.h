#include <cstdlib>

template<class T>
class Node{
    T value;
    Node<T> *left, *right;
public:
    Node(const T &data)
    : value(data), left(NULL), right(NULL)
    {
    }

    void Value(const T &data){value = data;}
    bool member(const T &data);   
    void insert(const T &data);

    ~Node() {
        delete left;
        delete right;
    }
};

//Member functions of the Node Class

template <class T>
bool Node<T>::member(const T &data){
    if(data < value){
        if(left != NULL){
            return left->member(data);
        }
        else{
            return false;
        }
    }
    if(data > value){
        if(right != NULL){
            return right->member(data);
        }
        else{
            return false;
        }
    }
    return true;
}

template <class T>
void Node<T>::insert(const T &data){
    if(data < value){
        if(left == NULL){
            left = new Node<T>(data);
        }
        else{
            left->insert(data);
        }
    }
    if(data > value){
        if(right == NULL){
            right = new Node<T>(data);
        }
        else{
            right->insert(data);
        }
    }
}

template<class T>
class Tree{
    Node<T> *root;
public:
    Tree()
    : root(NULL)
    {
    }
    bool member(const T &data);
    void insert(const T &data);
};

//Member functions for Tree

template<class T>
bool Tree<T>::member(const T &data){
    if(root == NULL){
        return false;
    }
    else{
        return root->member(data);
    }
}

template<class T>
void Tree<T>::insert(const T &data){
    if(root == NULL){
        root = new Node<T>(data);
    }
    else{
        root->insert(data);
    }
}