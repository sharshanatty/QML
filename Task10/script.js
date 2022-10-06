function createDataBase() {
    var db = LocalStorage.openDatabaseSync("notes","");
    db.transaction(function (tx) {
    tx.executeSql("CREATE TABLE [IF NOT EXISTS] notes (id numeric PRIMARY KEY, note text NOT NULL);");
    });
}

function insertNote(note) {
 db.transaction(function (tx) {
 tx.executeSql("INSERT INTO notes (note) VALUES(?);", [note]);
 });
}
