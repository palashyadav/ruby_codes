// Closest Binary Search Tree Value: Find closest value to target in BST
function closestValue(root, target) {
    let closest = root.val;
    while (root) {
        if (Math.abs(root.val - target) < Math.abs(closest - target)) {
            closest = root.val;
        }
        if (root.val < target) {
            root = root.right;
        } else {
            root = root.left;
        }
    }
    return closest;
}

class TreeNode {
    constructor(val = 0, left = null, right = null) {
        this.val = val;
        this.left = left;
        this.right = right;
    }
}
