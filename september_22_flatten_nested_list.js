// Flatten Nested List Iterator (JS sample implementation)
class NestedIterator {
  constructor(nestedList) {
    this.stack = [];
    for (let i = nestedList.length - 1; i >= 0; i--) this.stack.push(nestedList[i]);
  }
  hasNext() {
    while (this.stack.length) {
      let top = this.stack[this.stack.length - 1];
      if (Array.isArray(top)) {
        this.stack.pop();
        for (let i = top.length - 1; i >= 0; i--) this.stack.push(top[i]);
      } else return true;
    }
    return false;
  }
  next() {
    return this.stack.pop();
  }
}

// example usage omitted in this sample
