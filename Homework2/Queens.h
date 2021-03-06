#include <stdlib.h>

class Piece{
protected:
    int _row, _col;

public:
    int row() const {return _row;}
    int column() const {return _col;}
    void place(int row, int column) { _row = row; _col = column; }
    virtual bool menaces(const Piece *p) const = 0;
};

class Rook: virtual public Piece{
public:
    virtual bool menaces(const Piece *p) const {
        return (_row == p->row() || _col == p->column());
    }
};

class Bishop: virtual public Piece{
public:
    virtual bool menaces(const Piece *p) const {
        int rows = abs(_row - p->row());
        int cols = abs(_col - p->column());
        return rows == cols;
    }
};

class Knight: virtual public Piece{
public:
    virtual bool menaces(const Piece *p) const {
        int rows = abs(_row - p->row());
        int cols = abs(_col - p->column());
        return ((rows == 2 && cols == 1) || (rows == 1 && cols ==2));
    }
};

class Queen: virtual public Rook, Bishop{
public:
    virtual bool menaces(const Piece *p) const{
        return Rook::menaces(p) || Bishop::menaces(p);
    }
};

class Amazon: virtual public Queen, Knight{
public:
    virtual bool menaces(const Piece *p) const{
        return Queen::menaces(p) || Knight::menaces(p);
    }
};