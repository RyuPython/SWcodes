#include <stdio.h>
#include <stdlib.h>

typedef int Element;
typedef enum{false, true}bool;

typedef struct tStackNode{
    Element data;
    struct tStackNode *next;
}StackNode;

typedef struct{
    int count;
    StackNode *top;
}Stack;

Stack* CreateStack(int size)
{
    Stack *pStack = (Stack *)malloc(sizeof(Stack));
    if(pStack == NULL) return NULL;

    pStack->count = 0;
    pStack->top = NULL;

    return pStack;
}

void Push(Stack* pStack, Element item){
    StackNode *pNewNode = (StackNode *)malloc(sizeof(StackNode));
    if(pNewNode == NULL) return;

    pNewNode->data = item;
    pNewNode->next = pStack->top;
    pStack->top = pNewNode;
    pStack->count++;
}

Element Pop(Stack* pStack){
    StackNode *temp = pStack->top->next;
    Element i = pStack->top->data;
    free(pStack->top);
    pStack->top = temp;
    pStack->count--;

    free(temp);

    return i;
}

Element Top(Stack* pStack){
    return pStack->top->data;
}

void DestroyStack(Stack *pStack){
    ClearStack(pStack);
    free(pStack);
}

bool IsEmptyStack(Stack *pStack){
    if(pStack->count == 0) return true;
    else if(pStack->count > 0) return false;
    else return;
}

int CountStackItem(Stack *pStack){
    return pStack->count;
}

void ClearStack(Stack *pStack){
    while(pStack->count > 0){
        StackNode *temp = pStack->top->next;
        free(pStack->top);
        pStack->top = temp;
        pStack->count--;
    }
}
