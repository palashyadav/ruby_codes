// Path Sum III: Count number of paths that sum to target value
function pathSum(root, targetSum) {
    let count = 0;
    function dfs(node, pathSum) {
        if (!node) return;
        pathSum += node.val;
        if (pathSum === targetSum) count++;
        dfs(node.left, pathSum);
        dfs(node.right, pathSum);
    }
    function traverse(node) {
        if (!node) return;
        dfs(node, 0);
        traverse(node.left);
        traverse(node.right);
    }
    traverse(root);
    return count;
}

class TreeNode {
    constructor(val = 0, left = null, right = null) {
        this.val = val;
        this.left = left;
        this.right = right;
    }
}
