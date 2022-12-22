//   mystring.c
//   David Gregg
//   December 2022

#include <stdio.h>
#include <assert.h>
#include <stdlib.h>
#include "mystring.h"


// (a) create a new empty list string
struct mystring * new_empty_mystring() {
	// allocate memory for my string
	struct mystring * result = malloc(sizeof(struct mystring));
	return result;
}

// (b) create a new list string with the same contents as a normal
// NULL-terminated C string
struct mystring * new_array2mystring(char * text) {
	struct mystring * result = new_empty_mystring();
	struct ls_node * tail;
	// loop the index of text
	int i = 0;
	while(text[i] != '\0'){
		struct ls_node * element = malloc(sizeof(struct ls_node));
		element->c = text[i];
		if (i == 0){
			result->head = element;
		}
		else{
			tail->next = element;
		}
		tail = element;
		// iterate
		i++;
	}
	return result;
}

// (c) create a new mystring that is a copy of str
struct mystring * mystring_copy(struct mystring * str) {
	struct mystring * result = new_empty_mystring();
	struct ls_node * resultTail;
	struct ls_node * currentStr = str->head;
	while(currentStr != NULL){
		// create the node
		struct ls_node * element = malloc(sizeof(struct ls_node));
		element->c = (char) currentStr->c;
		if (result->head == NULL){
			result->head = element;
		}
		else{
			resultTail->next = element;
		}
		resultTail = element;
		// iterate
		currentStr = currentStr->next;
	}
	return result;
}

// (d) create a new mystring that is the concatenation of two
// mystrings
struct mystring * mystring_concatenate(struct mystring * str1,
				       struct mystring * str2) {
	struct mystring * result = mystring_copy(str1);
	struct ls_node * currentNode = result->head;
	while(currentNode != NULL && currentNode->next != NULL){ // and the node to avoid NullException
		currentNode = currentNode->next;
	}
	currentNode->next = str2->head;
	return result;
}

// (e) create a new mystring containing the same characters as str,
// but in reverse order
struct mystring * mystring_reverse(struct mystring * str) {
	struct ls_node * currentStr = str->head;
	struct mystring * result = new_empty_mystring();
	while(currentStr != NULL){
		// create a node
		struct ls_node * element = malloc(sizeof(struct ls_node));
		element->c = currentStr->c;
		element->next = result->head;
		// update head
		result->head = element;
		// iterate
		currentStr = currentStr->next;
	}
	return result;
}

// is there a match starting at this point in the text
// return 1 if match, 0 if not
int match_substring(struct ls_node * text, struct ls_node * str) {
	struct ls_node * currentText = text;
	struct ls_node * currentStr = str;
	while (currentStr != NULL){
		if (currentStr->c != currentText->c){
			return 0;
		}
		else{
			currentStr = currentStr->next;
			currentText = currentText->next;
		}
	}
	return 1;
}

// (f) return 1 if str is a substring of text; 0 otherwise
int mystring_substring(struct mystring * text, struct mystring * str) {
	struct ls_node * currentText = text->head;
	struct ls_node * strHead = str->head;
	int found = 0;
	while(currentText != NULL && found != 1){
		found = match_substring(currentText, strHead);
		// iterate
		currentText = currentText->next;
	}
	return found;
}


// (g) free the memory used by the mystring
void mystring_free(struct mystring * str) {
  free(str);
}
