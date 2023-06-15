// Majority Element II: Find all elements appearing more than n/3 times
function majorityElement(nums) {
    let map = new Map();
    let result = [];
    let threshold = Math.floor(nums.length / 3);
    for (let num of nums) {
        map.set(num, (map.get(num) || 0) + 1);
    }
    for (let [num, count] of map) {
        if (count > threshold) {
            result.push(num);
        }
    }
    return result;
}

console.log(majorityElement([3,2,1]));
console.log(majorityElement([1,1,1,3,3,2,2,2]));
