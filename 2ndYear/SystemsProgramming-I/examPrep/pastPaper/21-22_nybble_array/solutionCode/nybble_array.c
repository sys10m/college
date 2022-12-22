//   nybble_array.c
//   David Gregg
//   December 2021

#include <stdio.h>
#include <assert.h>
#include <stdlib.h>
#include "nybble_array.h"


// create a new array of nybbles with space for "size"
// nybbles and initialize the values of the array to zero
struct nybble_array * nybble_array_new(int size) {
  struct nybble_array * result = malloc (sizeof(struct nybble_array *));
  result->size_in_bytes = size/2;
  result->size_in_nybbles = size;
  result->data_bytes = malloc(sizeof(unsigned char) * size);
  return result;
}

// return the nybble value at position index
unsigned get_nybble_value(struct nybble_array * this, int index) {
  unsigned char toReturn = this->data_bytes[index/2];
  if (index%2 == 0){
    return toReturn>>4;
  }
  else{
    return toReturn & 15;
  }
}

// set the nybble at position index to value
void set_nybble_value(struct nybble_array * this, int index, unsigned value) {
  // and the original array with all 1s except from the 4 bits in the index
  unsigned char indexWiped = this->data_bytes[index/2] & ~(15<<(4 - 4*(index%2)));
  this->data_bytes[index/2] = (unsigned char) (indexWiped | (value<<(4 - 4*(index%2))));
}

// free the memory used by a nybble array
void nybble_array_free(struct nybble_array * this) {
  free(this);
}

// given an array of unsigned integers with values 0 to 15 create
// a new nybble_array with the same values
struct nybble_array * unsigned_to_nybble_array(unsigned * array, int size) {
  struct nybble_array * result = nybble_array_new(size);
  for (int i = 0; i < size; i++){
    set_nybble_value(result, i, array[i]);
  }
  return result;
}

// given an array of nybbles, create a new array of unsigned integers o
// with the same values
unsigned * nybble_array_to_unsigned(struct nybble_array * this) {
  unsigned * result = malloc(sizeof(unsigned) * this->size_in_nybbles);
  for (int i = 0; i < this->size_in_nybbles; i++){
    result[i] = get_nybble_value(this, i);
  }
  return result;
}

// print the raw byte content of the nybble array
void print_raw_bytes_nybble_array(struct nybble_array * this) {
  for ( int i = 0; i < this->size_in_bytes; i++ ) {
    printf("%x ", this->data_bytes[i]);
  }
  printf("\n");
}

