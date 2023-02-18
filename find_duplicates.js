function findDuplicates(arr) {
  const seen = new Set();
  const duplicates = new Set();
  
  for (let num of arr) {
    if (seen.has(num)) {
      duplicates.add(num);
    }
    seen.add(num);
  }
  
  return Array.from(duplicates);
}

console.log(findDuplicates([1, 2, 2, 3, 3, 3, 4]));
console.log(findDuplicates([5, 5, 5]));
console.log(findDuplicates([1, 2, 3]));
