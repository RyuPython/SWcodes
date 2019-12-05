#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>

typedef char Element;

typedef struct tTreeNode{
    Element data;
    struct tTreeNode *left, *right;
}TreeNode;

TreeNode* CreateTree(TreeNode *left, Element item, TreeNode *right){
    TreeNode* pNewNode = (TreeNode*)malloc(sizeof(TreeNode));
    if(pNewNode == NULL)
        return NULL;

    strcpy(pNewNode->data, item);

    pNewNode->left = left;
    pNewNode->right = right;

    return pNewNode;
}

bool IsEmpty();

TreeNode* LeftTree(TreeNode *pNode){
    if(IsEmpty(pNode))
        return;
    else
        return pNode->left;
}

Element TreeData(TreeNode *pNode){
    if(IsEmpty(pNode))
        return;
    else
        return pNode->data;
}

TreeNode* RightTree(TreeNode *pNode){
    if(IsEmpty(pNode))
        return;
    else
        return pNode->right;
}

bool IsEmpty(TreeNode *pNode){
    if(!pNode)
        return true;
    else
        return false;
}

void DestroyTree(TreeNode *pNode){
    if(!IsEmpty(pNode->left))
        DestroyTree(pNode->left);
    if(!IsEmpty(pNode->right))
        DestroyTree(pNode->right);
    pNode->data = NULL;
    free(pNode);
}

/*int DepthFirst(TreeNode *pTreeNode, char* item, int Depth, int MaxDepth, int Count, int LLcount, int LLcountMax){
    int pCount = Count;
    pTreeNode->data = item[Count];

    if(LLcount<LLcountMax && Depth<MaxDepth)
        pCount = DepthFirst(pTreeNode->left, item, Depth+1, MaxDepth, pCount+1, LLcount, LLcountMax);
    if(LLcount<LLcountMax && Depth<MaxDepth)
        pCount = DepthFirst(pTreeNode->right, item, Depth+1, MaxDepth, pCount+1, LLcount, LLcountMax);
    if(LLcount>LLcountMax && Depth<MaxDepth-1){
        pCount = DepthFirst(pTreeNode->left, item, Depth+1, MaxDepth, pCount+1, LLcount, LLcountMax);
        pCount = DepthFirst(pTreeNode->right, item, Depth+1, MaxDepth, pCount+1, LLcount, LLcountMax);
    }

    return pCount;
}*/

TreeNode* DepthFirst(char* item, int start, int num){
    int div = 1;
    int temp = num-start+2;
    int remain;
    TreeNode *left,*right;

    printf("%s", item[start]);

    if(num-start>0){
        while(temp > 1){
            div = div*2;
            temp = (num-start+2)/div;
        }
        remain = temp%div;

        if(remain>=div){
            left = DepthFirst(item, start+1, div*2);
            right = DepthFirst(item, start+div*2+1, num);
        }else{
            left = DepthFirst(item, start+1, div+remain);
            right = DepthFirst(item, start+div+remain+1, num);
        }
    }

    TreeNode* pTreeNode = CreateTree(left, item[start], right);

    return pTreeNode;
}

void Preorder(TreeNode *root){
    if(root==NULL)
        return;

    printf("%s", root->data);
    Preorder(root->left);
    Preorder(root->right);
}

void Inorder(TreeNode *root){
    if(root==NULL)
        return;

    Inorder(root->left);
    printf("%s", root->data);
    Inorder(root->right);
}

void Postorder(TreeNode *root){
    if(root==NULL)
        return;

    Postorder(root->left);
    Postorder(root->right);
    printf("%s", root->data);
}
