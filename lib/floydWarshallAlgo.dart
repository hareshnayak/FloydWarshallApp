
import 'dart:io';

final V = 12;
final inf  = 99999;
List<int> gar = List.generate(V, (int index)=>0);

void floydWarshall(List<List<int>> graph) //[][V]
{
  List<List<int>> dist = List.generate(V, (i) => List.generate(V, (j)=> 0), growable: false);
  int i, j, k;
  for (i = 0; i < V; i++)
    for (j = 0; j < V; j++)
      dist[i][j] = graph[i][j];
  for (k = 0; k < V; k++) {
    for (i = 0; i < V; i++) {
      for (j = 0; j < V; j++) {
        if (dist[i][j] > (dist[i][k] + dist[k][j]) && (dist[k][j] != inf && dist[i][k] != inf))
          dist[i][j] = dist[i][k] + dist[k][j];
      }
    }
  }
  helper(dist);
}

void helper(List<List<int>> dist) {
  int q;
  q = stdin.readByteSync();
  while (q-- != null) {
    int a, b;
    a = stdin.readByteSync();
    b = stdin.readByteSync();
    int ans;
    List<Map<int, int>> v = new List();
    for (int i = 0; i < V; i++) {
      if (gar[i] == 1) {
        Map<int, int> m1 = {dist[a][i]: i};
        Map<int, int> m2 = {dist[b][i]: i};
        v.add(m1);
        v.add(m2);
      }
    }
    v.sort();
    if (v.length > 0) {
      ans = v.first.keys.first;
      gar[v[0][ans]] = 0;
    }
    print(ans);
  }
}

