// October 22: Merge k Sorted Lists (JS randomized)
function mergeKLists(lists) {
    let arr = [];
    for (let l of lists) {
        while (l) {
            arr.push(l.val);
            l = l.next;
        }
    }
    arr.sort((a, b) => a - b);
    let dummy = {val: 0, next: null}, curr = dummy;
    for (let v of arr) {
        curr.next = {val: v, next: null};
        curr = curr.next;
    }
    return dummy.next;
}

// Test
function ListNode(val, next=null) { this.val = val; this.next = next; }
let a = new ListNode(1, new ListNode(4, new ListNode(5)));
let b = new ListNode(1, new ListNode(3, new ListNode(4)));
let c = new ListNode(2, new ListNode(6));
let merged = mergeKLists([a,b,c]);
let out = [];
while (merged) { out.push(merged.val); merged = merged.next; }
console.log(out); // [1,1,2,3,4,4,5,6]
