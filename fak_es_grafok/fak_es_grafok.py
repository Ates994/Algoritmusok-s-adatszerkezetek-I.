from collections import deque


def bfs(graph, start):
    visited = set()
    queue = deque([start])
    traversal = []

    while queue:
        node = queue.popleft()
        if node not in visited:
            visited.add(node)
            traversal.append(node)
            queue.extend(neighbor for neighbor in graph[node] if neighbor not in visited)

    return traversal

if __name__ == "__main__":
    print("Adj meg egy gráfot élek formájában (pl. A-B,B-C,C-D):")
    edges = input().strip().split(",")
    print("Adj meg egy kezdő csúcsot:")
    start = input().strip()

    graph = {}
    for edge in edges:
        u, v = edge.split("-")
        graph.setdefault(u, []).append(v)
        graph.setdefault(v, []).append(u)

    traversal = bfs(graph, start)
    print("A BFS bejárás sorrendje:", traversal)
