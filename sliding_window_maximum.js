// Sliding Window Maximum: Max value in every window of size k

var maxSlidingWindow = function(nums, k) {
    const result = [];
    const deque = [];
    
    for (let i = 0; i < nums.length; i++) {
        while (deque.length > 0 && deque[0] < i - k + 1) {
            deque.shift();
        }
        
        while (deque.length > 0 && nums[deque[deque.length - 1]] < nums[i]) {
            deque.pop();
        }
        
        deque.push(i);
        
        if (i >= k - 1) {
            result.push(nums[deque[0]]);
        }
    }
    
    return result;
};

console.log(maxSlidingWindow([1, 3, 1, 2, 0, 5], 3));
console.log(maxSlidingWindow([1], 1));
console.log(maxSlidingWindow([1, 3, -1, -3, 5, 3, 6, 7], 3));
