#!bin/sh

row=63
col=100

create_board()
{
        for(( i = 0; i < row; i++)); do
                for((j = 0; j < col; j++)); do
                        board[$i,$j]="_"
                done
        done
}

print_board()
{
        for(( i = 0; i < row; i++)); do
                for((j = 0; j < col; j++)); do
                        echo -n "${board[$i,$j]}"
                done
                echo ""
        done
}

make_y()
{
    local remain=$1
    local size=$2
    local start_col=$3
    local start_row=$4
    local count=1
    #count variable used for simple track of number
    if [ $remain -eq 0 ]
    then
        return
    fi
    
    for((i = start_row; i > start_row - size; i--))
    do
        board[$i,$start_col]="1"
    done

    for((i = start_row - size; i > start_row - size * 2; i--))
    do
        board[$i,$((start_col + count))]="1"
        board[$i,$((start_col - count))]="1"
        ((count++))
    done
    
    make_y $((remain - 1)) $((size / 2)) $((start_col - size)) $((start_row - size * 2))
    make_y $((remain - 1)) $((size / 2)) $((start_col + size)) $((start_row - size * 2))
}

declare -A board
#somehow this declare is mandatory for my code to work.. :/
read n
create_board
make_y $n 16 49 62 
print_board

