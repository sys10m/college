//   list_string.c
//   David Gregg
//   January 2021

#include <stdio.h>
#include <assert.h>
#include <stdlib.h>
#include "deque.h"

// create a new empty deque
struct deque * new_deque() {
    struct deque * result = malloc(sizeof(struct deque));
    int size = 1000;
    result->size = size;
    result->nelements = 0;
    result->elements = malloc(sizeof(char *) * size);
    for (int i = 0; i < size; i++){
        result->elements[i] = malloc(sizeof(char));
    }
    return result;
}

// push a string to the front of the deque
void push_front_deque(struct deque * this, char * str) {
    // move all elements to the right
    for (int i = this->nelements; i > 0; i--){
        this->elements[i] = this->elements[i -  1];
    }
    this->elements[0] = str;
    this->nelements++;
}

// pop a string from the front of the deque
char * pop_front_deque(struct deque * this) {
    // keep the front
    char * toReturn = this->elements[0];
    // move all elements too the left
    for (int i = 0; i < this->nelements; i++){
        this->elements[i] = this->elements[i + 1];
    }
    this->nelements--;
    return toReturn;
}

// push a string to the back of the deque
void push_back_deque(struct deque * this, char * str) {
    this->elements[this->nelements++] = str;
}

// pop a value from the back of the deque
char * pop_back_deque(struct deque * this) {
    return this->elements[--this->nelements];
}

// free the memory used by the deque
void free_deque(struct deque * this) {
    free(this);
}

// return a string from the deque at position "index", where the
// item at the front of the deque has index 0, and subsequent
// items are numbered successively. If there are fewer than index+1
// items in the deque, return a string containing the value "ERROR"
char * item_at_deque(struct deque * this, int index) {
    if (this->nelements <= index || index < 0){
        return "ERROR";
    }
    else{
        return this->elements[index];
    }
}
