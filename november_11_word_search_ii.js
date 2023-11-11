// November 11: Word Search II (JS randomized)
function findWords(board, words) {
    const m = board.length, n = board[0].length;
    const trie = {};
    for (let w of words) {
        let node = trie;
        for (let ch of w) {
            if (!node[ch]) node[ch] = {};
            node = node[ch];
        }
        node.word = w;
    }
    const res = new Set();
    function dfs(i, j, node) {
        if (i < 0 || j < 0 || i >= m || j >= n) return;
        const ch = board[i][j];
        if (!node[ch]) return;
        node = node[ch];
        if (node.word) res.add(node.word);
        board[i][j] = '#';
        dfs(i+1,j,node); dfs(i-1,j,node); dfs(i,j+1,node); dfs(i,j-1,node);
        board[i][j] = ch;
    }
    for (let i=0;i<m;i++) for (let j=0;j<n;j++) dfs(i,j,trie);
    return Array.from(res);
}

// Test
console.log(findWords([
  ['o','a','a','n'],
  ['e','t','a','e'],
  ['i','h','k','r'],
  ['i','f','l','v']
], ['oath','pea','eat','rain'])); // ['oath','eat']
