package dsdv_lab;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.networklayer.ipv4.RoutingTableRecorder;
import inet.node.dsdv.DsdvRouter;
import inet.physicallayer.wireless.ieee80211.packetlevel.Ieee80211ScalarRadioMedium;
import inet.visualizer.canvas.integrated.IntegratedCanvasVisualizer;

network DsdvLabNetwork
{
    parameters:
        int numNodes = default(6);
        @display("bgb=900,420");

    submodules:
        configurator: Ipv4NetworkConfigurator {
            parameters:
                config = xml("<config><interface hosts='node[*]' address='10.0.0.x' netmask='255.255.255.0'/></config>");
                @display("p=90,60;is=s");
        }

        radioMedium: Ieee80211ScalarRadioMedium {
            parameters:
                @display("p=250,60;is=s");
        }

        routingTableRecorder: RoutingTableRecorder {
            parameters:
                @display("p=430,60;is=s");
        }

        visualizer: IntegratedCanvasVisualizer {
            parameters:
                @display("p=610,60;is=s");
        }

        node[numNodes]: DsdvRouter {
            parameters:
                dsdv.netmask = "255.255.255.0";
                @display("i=device/wifilaptop");
        }
}
