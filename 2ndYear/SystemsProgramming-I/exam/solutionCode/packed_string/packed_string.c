//   packed_string.c
//   David Gregg
//   December 2022

#include <stdio.h>
#include <assert.h>
#include <stdlib.h>
#include <string.h>
#include "packed_string.h"


// pack the 7-bit values of the string into memory
unsigned char * string_to_packed(char * string) {
    unsigned char * result = malloc(sizeof(unsigned char) * 1024);
    // loop thro char
    // loop thro bit of the char
        // byte just change base on the bit
    int i = 0;
    int bitOfResultByte = 7;
    int byteCount = -1; // so it starts at byte 0
    while (string[i] != '\0'){
        int bitOfTheChar = 0;
        while(bitOfTheChar < 7){
            // new byte
            if (bitOfResultByte == 7){
                result[++byteCount] = 0;
            }
            // put value in
            result[byteCount] = result[byteCount] | getBitTo(string[i], bitOfTheChar, bitOfResultByte);
            // iterate
            bitOfTheChar++;
            bitOfResultByte--;
            // if new byte
            if (bitOfResultByte < 0){
                bitOfResultByte = 7;
            }
        }
        // iterate
        i++;
    }
    // null terminate
    result[++byteCount] = '\0';
    return result;
}



// unpack bytes of memory containing 7-bit characters into a string
char * packed_to_string(unsigned char * packed_string) {
    char * result = malloc(sizeof(char) * 1024);
    // loop thro bytes
    int byteCount = 0;
    int i = -1; // char count
    int countDestinationBit = 0;
    while (packed_string[byteCount] != '\0'){
        // go thro each bit of the char
        int countSourceBit = 7;
        while (countSourceBit >= 0){
            // new char
            if (countDestinationBit == 0){
                result[++i] = 0;
            }
            // put the bit in
            result[i] = result[i] | getBitTo(packed_string[byteCount], countSourceBit, countDestinationBit);
            // iterate
            countDestinationBit++;
            if (countDestinationBit > 6){
                countDestinationBit = 0;
            }
            countSourceBit--; // if source bit goes <0 then while finish
        }
        // iterate
        byteCount++;
    }

    // null terminate
    if (countDestinationBit == 0){
        i++;
    }
    result[i] = '\0';
    return result;
}

// get a specific bit to a specific location of the byte
unsigned char getBitTo(unsigned char originalByte, int bitPosition, int positionToPlace){
    unsigned char result = originalByte >> bitPosition;
    result = result << positionToPlace;
    // clear other bits
    switch(positionToPlace){
        case 0:
            result = result & 1;
            break;
        case 1:
            result = result & 2;
            break;
        case 2:
            result = result & 4;
            break;
        case 3:
            result = result & 8;
            break;
        case 4:
            result = result & 16;
            break;
        case 5:
            result = result & 32;
            break;
        case 6:
            result = result & 64;
            break;
        case 7:
            result = result & 128;
        default:
            break;
    }
    return result;
}


