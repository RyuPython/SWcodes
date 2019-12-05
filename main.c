#include "BinaryTree.h"

int main(){
    char* input;
    printf("type a string.");
    scanf("%s", input);
    int Count = strlen(input);

    TreeNode* pTreeNode = DepthFirst(input, 1, Count);

    Preorder(pTreeNode);
    printf("\n");
    Inorder(pTreeNode);
    printf("\n");
    Postorder(pTreeNode);

    return 0;
}
