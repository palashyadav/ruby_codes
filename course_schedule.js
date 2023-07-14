// Course Schedule: Determine if courses can be taken without circular dependency
function canFinish(numCourses, prerequisites) {
    let graph = Array(numCourses).fill(0).map(() => []);
    let indegree = Array(numCourses).fill(0);
    for (let [course, prereq] of prerequisites) {
        graph[prereq].push(course);
        indegree[course]++;
    }
    let queue = [];
    for (let i = 0; i < numCourses; i++) {
        if (indegree[i] === 0) queue.push(i);
    }
    let count = 0;
    while (queue.length > 0) {
        let course = queue.shift();
        count++;
        for (let next of graph[course]) {
            indegree[next]--;
            if (indegree[next] === 0) queue.push(next);
        }
    }
    return count === numCourses;
}

console.log(canFinish(2, [[1,0]]));
console.log(canFinish(2, [[1,0],[0,1]]));
