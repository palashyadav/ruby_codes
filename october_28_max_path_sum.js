// October 28: Binary Tree Maximum Path Sum (JS randomized)
function maxPathSum(root) {
    let maxSum = -Infinity;
    function dfs(node) {
        if (!node) return 0;
        let left = Math.max(0, dfs(node.left));
        let right = Math.max(0, dfs(node.right));
        maxSum = Math.max(maxSum, node.val + left + right);
        return node.val + Math.max(left, right);
    }
    dfs(root);
    return maxSum;
}
// Test
function TreeNode(val, left=null, right=null) {
    this.val = val; this.left = left; this.right = right;
}
let root = new TreeNode(-10, new TreeNode(9), new TreeNode(20, new TreeNode(15), new TreeNode(7)));
console.log(maxPathSum(root)); // 42
