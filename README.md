Cluster is already created but documented in `create-cluster.sh`.

`create-web.sh` created the goatchella web server service.
`setup-edge.sh` set up Edge for the instrumented service.

Everything is already running in our test cluster now, the only thing we should be doing is launching the other two nodes of the daemonset as Edge notes.

To run edge on the uninstrumented nodes, run `helm install edge-wg cribl/logstream-workergroup -f ./edge-values-instrumented.yml -n cribl`

To uninstall run `helm uninstall edge-wg -n cribl`
