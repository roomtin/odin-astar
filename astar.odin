package astar

Node :: struct {
    G: int,
    H: int,
    F: int,
    neighbors: [dynamic]Node
}

solve_path :: proc(s, t: Node) /*-> ^[]Node*/ {
    unsearched := [dynamic]Node{s}
    processed : [dynamic]Node

    defer {
        delete(unsearched)
        delete(processed)
    }

    for len(unsearched) > 0 {
        current := unsearched[0]
        for n in unsearched {
            if n.F < current.F || n.F == current.F && n.H < current.H {
                current = n
            }
        }

        append(&processed, current)
        ordered_remove(&unsearched, 0)
    }

    for n in current.neighbors {

    }

}
