program tree(input, output);
    type
	nodeptr = ^node;
	node = record
	    info : integer;
	    left : ^node;
        right : ^node
	end;
    var t : nodeptr;
    var x : integer;

    function insert(var root : nodeptr; value : integer) : nodeptr;
    begin
    if(root = nil) then begin
        new(root);
        root^.left := nil;
        root^.right := nil;
        root^.info := value;
    end
    else if(root^.info < value ) then
        root^.right := insert(root^.right, value)
    else if(root^.info > value ) then
        root^.left := insert(root^.left, value);

    insert := root;
    end;

    
    function member(root : nodeptr; value: integer) : integer;
    begin
        if(root = nil) then
            member := 0
        else if(root^.info = value)then
            member := 1
        else if(root^.info < value)then
            member := member(root^.right, value)
        else        
            member := member(root^.left, value);
    end;

begin
    t := nil;

    readln(x);
    while(x <> -1) do
    begin
        t := insert(t, x);
        readln(x)
    end;

    readln(x);

    while(x <> -1) do
    begin
        write(x);
        writeln;
        if(member(t,x) = 1)then begin
            write('true');
            writeln
        end
        else begin
            write('false');
            writeln;
        end;
        readln(x)
    end;
    
end.
