#include <stdio.h>
#include <stdlib.h>

typedef int Element;
typedef enum{false, true}bool;

typedef struct{
    Element* stack;
    int size;
    int top;
}Stack;

Stack* CreateStack(int size)
{
    Stack* pStack = (Stack*)malloc(sizeof(Stack));
    if(pStack == NULL) return NULL;

    pStack->stack = (Element*)malloc(size*sizeof(Element));
    if(pStack->stack == NULL){
        free(pStack);
        return NULL;
    }

    pStack->size = size;
    pStack->top = -1;

    return pStack;
}

void Push(Stack* pStack, Element item){
    if(pStack->top == pStack->size-1) return;

    pStack->stack[++pStack->top] = item;
}

Element Pop(Stack* pStack){
    int i = pStack->stack[pStack->top];
    pStack->stack[pStack->top] = NULL;
    (pStack->top)--;

    return i;
}

Element Top(Stack* pStack){
    return pStack->stack[pStack->top];
}

void DestroyStack(Stack* pStack){
    ClearStack(pStack);
    free(pStack->stack);
    free(pStack);
}

bool IsFullStack(Stack* pStack){
    if(pStack->top == pStack->size -1) return true;
    else return false;
}

bool IsEmptyStack(Stack* pStack){
    if(pStack->top < 0) return true;
    else return false;
}

int CountStackItem(Stack* pStack){
    return pStack->top + 1;
}

void ClearStack(Stack* pStack){
    while(pStack->top >= 0){
        pStack->stack[pStack->top] = NULL;
        (pStack->top)--;
    }
}

