// Trapping Rain Water II: 3D water trapping in elevation map

var trapRainWater = function(heightMap) {
    if (!heightMap || heightMap.length === 0) return 0;
    
    const m = heightMap.length;
    const n = heightMap[0].length;
    const visited = Array.from({ length: m }, () => Array(n).fill(false));
    const pq = [];
    
    for (let i = 0; i < m; i++) {
        for (let j = 0; j < n; j++) {
            if (i === 0 || i === m - 1 || j === 0 || j === n - 1) {
                pq.push([heightMap[i][j], i, j]);
                visited[i][j] = true;
            }
        }
    }
    
    pq.sort((a, b) => a[0] - b[0]);
    let water = 0;
    const dirs = [[0, 1], [0, -1], [1, 0], [-1, 0]];
    
    while (pq.length > 0) {
        const [h, i, j] = pq.shift();
        
        for (const [dx, dy] of dirs) {
            const ni = i + dx;
            const nj = j + dy;
            
            if (ni >= 0 && ni < m && nj >= 0 && nj < n && !visited[ni][nj]) {
                water += Math.max(0, h - heightMap[ni][nj]);
                pq.push([Math.max(h, heightMap[ni][nj]), ni, nj]);
                pq.sort((a, b) => a[0] - b[0]);
                visited[ni][nj] = true;
            }
        }
    }
    
    return water;
};

console.log(trapRainWater([[1,4,3,1,3,2],[3,2,1,3,2,4],[2,3,3,2,3,1]]));
