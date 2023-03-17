# Accounts Merge: Merge accounts with same email using Union-Find

class UnionFind
  def initialize(n)
    @parent = (0...n).to_a
  end
  
  def find(x)
    return x if @parent[x] == x
    @parent[x] = find(@parent[x])
  end
  
  def union(x, y)
    px, py = find(x), find(y)
    @parent[px] = py if px != py
  end
  
  def parent
    @parent
  end
end

def accounts_merge(accounts)
  uf = UnionFind.new(accounts.length)
  email_to_index = {}
  
  accounts.each_with_index do |account, i|
    account[1..-1].each do |email|
      if email_to_index.key?(email)
        uf.union(i, email_to_index[email])
      else
        email_to_index[email] = i
      end
    end
  end
  
  groups = {}
  accounts.each_with_index do |account, i|
    root = uf.find(i)
    groups[root] ||= Set.new
    account[1..-1].each { |email| groups[root].add(email) }
  end
  
  groups.map { |i, emails| [accounts[i][0]] + emails.sort }
end

accounts = [["John","johnsmith@mail.com","john00@mail.com"],["John","johnnybravo@mail.com"],["John","johnsmith@mail.com","john_newyork@mail.com"],["Mary","mary@mail.com"]]
p accounts_merge(accounts)
