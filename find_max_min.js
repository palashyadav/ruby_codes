// Find max and min in array

function findMaxMin(arr) {
  if (arr.length === 0) return { max: null, min: null };
  return {
    max: Math.max(...arr),
    min: Math.min(...arr)
  };
}

console.log(findMaxMin([3, 1, 4, 1, 5, 9]));    // { max: 9, min: 1 }
console.log(findMaxMin([10]));                  // { max: 10, min: 10 }
console.log(findMaxMin([-5, -1, -10]));         // { max: -1, min: -10 }
