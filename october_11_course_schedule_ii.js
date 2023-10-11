// October 11: Course Schedule II (JS randomized)
function findOrder(numCourses, prerequisites) {
    let graph = Array.from({length: numCourses}, () => []);
    let indegree = Array(numCourses).fill(0);
    for (let [a, b] of prerequisites) {
        graph[b].push(a);
        indegree[a]++;
    }
    let queue = [];
    for (let i = 0; i < numCourses; i++) {
        if (indegree[i] === 0) queue.push(i);
    }
    let res = [];
    while (queue.length) {
        let node = queue.shift();
        res.push(node);
        for (let nei of graph[node]) {
            indegree[nei]--;
            if (indegree[nei] === 0) queue.push(nei);
        }
    }
    return res.length === numCourses ? res : [];
}

// Test
console.log(findOrder(2, [[1,0]])); // [0,1]
console.log(findOrder(4, [[1,0],[2,0],[3,1],[3,2]])); // [0,2,1,3] or [0,1,2,3]
