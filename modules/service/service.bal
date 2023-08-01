import ballerina/io;

import ballerina/udp;

listener udp:Listener u = new (8080);

udp:Service obj = service object {
    remote function onDatagram(udp:Datagram & readonly dg) {
        io:println("bytes received: ", dg.data.length());
    }
};

function init() returns error? {
    check u.attach(obj);
}
