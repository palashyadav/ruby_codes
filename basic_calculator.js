// Basic Calculator: Evaluate simple math expression with +,-,*,/,()
function calculate(s) {
    let stack = [];
    let num = 0;
    let operator = '+';
    for (let i = 0; i < s.length; i++) {
        let char = s[i];
        if (!isNaN(char) && char !== ' ') {
            num = num * 10 + parseInt(char);
        }
        if (char === '+' || char === '-' || char === '*' || char === '/' || i === s.length - 1) {
            if (operator === '+') stack.push(num);
            else if (operator === '-') stack.push(-num);
            else if (operator === '*') stack.push(stack.pop() * num);
            else if (operator === '/') stack.push(Math.trunc(stack.pop() / num));
            operator = char;
            num = 0;
        }
    }
    return stack.reduce((a, b) => a + b, 0);
}

console.log(calculate("3+2*2"));
console.log(calculate(" 6/2-1 "));
console.log(calculate("2147483647"));
