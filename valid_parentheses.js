// Valid Parentheses: Check if parentheses are valid

var isValid = function(s) {
    const stack = [];
    const map = {')': '(', ']': '[', '}': '{'};
    for (let c of s) {
        if (c === '(' || c === '[' || c === '{') {
            stack.push(c);
        } else {
            if (stack.length === 0 || stack.pop() !== map[c]) {
                return false;
            }
        }
    }
    return stack.length === 0;
};

console.log(isValid("()"));
console.log(isValid("()[]{}"));
console.log(isValid("(]"));
console.log(isValid("([)]"));
console.log(isValid("{"));
