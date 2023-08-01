import ballerina/io;

function init() {
    // オブジェクトのようにモジュール内の他の全ての変数が初期化されるタイミングで呼び出される
    io:println("initialize!");
}

