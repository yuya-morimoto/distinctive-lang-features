import ballerina/io;

var clientObject = client object {
    resource function get greeting/[string name]() returns string {
        return "Hello, " + name;
    }
};

public function main() {
    string result = clientObject->/greeting/yuya;
    io:println(result);
}
