DSDV LAB - OMNeT++ / INET 4.6.x
================================

Files
-----
1. DsdvLabNetwork.ned  : network topology (6 DSDV wireless nodes)
2. omnetpp.ini         : routing, traffic, animation and result settings
3. export_results.sh   : optional CSV export of recorded PingApp results

How to use
----------
1. Create a new OMNeT++ project that references the INET 4.6.x project.
2. Copy DsdvLabNetwork.ned and omnetpp.ini into a source/package folder.
3. Keep the NED package name as: dsdv_lab
4. Run the General configuration in Qtenv.
5. Observe:
   - radio signal animation,
   - active network route animation,
   - routing-table arrows,
   - Ping output in the event log/console.
6. After the run, inspect the results folder:
   - .sca : scalar performance results
   - .vec/.vci : vector results, including RTT
   - .rt : routing-table change log

Routing table during simulation
-------------------------------
Double-click a node, open ipv4 -> routingTable to inspect the live table.
The RoutingTableRecorder also writes every routing/interface table change to the .rt file.

Important
---------
INET 4.6.x describes its DSDV implementation as partial/unfinished. This experiment is
intended for teaching routing-table formation, proactive updates, multi-hop forwarding,
animation and basic performance measurement rather than standards-conformance testing.
