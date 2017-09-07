private struct _LevenshteinMatrix {
    let m, n: Int
    
    private var _values: [Int]
    
    init(m: Int, n: Int) {
        self.m = m
        self.n = n
        
        self._values = [Int](repeating: 0, count: m * n)
    }
    
    subscript(i: Int, j: Int) -> Int {
        get {
            return _values[i + j * m]
        }
        set {
            _values[i + j * m] = newValue
        }
    }
    
    func compute(at i: Int, _ j: Int, using u: String, _ v: String) -> Int {
        let indexU = u.index(u.startIndex, offsetBy: i)
        let indexV = v.index(v.startIndex, offsetBy: j)
        
        let a = u[indexU] == v[indexV] ? self[i - 1, j - 1] : Int.max
        let b = self[i - 1, j - 1] + 1 // Replace
        let c = self[i, j - 1] + 1 // Insert
        let d = self[i - 1, j] + 1 // Delete
        
        return min(a, b, c, d)
    }
}

public func levenshteinDistance(_ u: String, _ v: String) -> Int {
    let m = u.characters.count
    let n = v.characters.count
    
    var D = _LevenshteinMatrix(m: m, n: n)
    
    D[0, 0] = 0
    
    for i in 1..<m { D[i, 0] = i }
    for j in 1..<n { D[0, j] = j }
    
    for i in 1..<m {
        for j in 1..<n {
            D[i, j] = D.compute(at: i, j, using: u, v)
        }
    }
    
    return D[m - 1, n - 1]
}

