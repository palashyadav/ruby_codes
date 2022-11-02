// Challenge: Write a function that finds the longest word in a string

function longestWord(str) {
  const words = str.split(' ');
  let longest = '';
  
  words.forEach(word => {
    if (word.length > longest.length) {
      longest = word;
    }
  });
  
  return longest;
}

// Test cases
console.log(longestWord("The quick brown fox jumps"));     // Output: "quick" or similar
console.log(longestWord("Hello JavaScript world"));         // Output: "JavaScript"
console.log(longestWord("a bb ccc"));                       // Output: "ccc"
console.log(longestWord("programming"));                    // Output: "programming"
console.log(longestWord(""));                               // Output: ""
