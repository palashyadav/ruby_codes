// Majority Element (JS): Boyer-Moore majority vote (JS sample)
function majorityElement(nums) {
    let count = 0, candidate = null;
    for (let num of nums) {
        if (count === 0) candidate = num;
        count += (num === candidate) ? 1 : -1;
    }
    return candidate;
}

console.log(majorityElement([3,2,3]));
