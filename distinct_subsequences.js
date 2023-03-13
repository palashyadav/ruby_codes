// Distinct Subsequences: Count unique subsequences

var numDistinct = function(s, t) {
    let m = s.length, n = t.length;
    let dp = Array(n + 1).fill(0);
    dp[0] = 1;
    
    for (let i = 1; i <= m; i++) {
        for (let j = n; j >= 1; j--) {
            if (s[i-1] === t[j-1]) {
                dp[j] += dp[j-1];
            }
        }
    }
    
    return dp[n];
};

console.log(numDistinct("rabbbit", "rabbit"));
console.log(numDistinct("babgbag", "bag"));
