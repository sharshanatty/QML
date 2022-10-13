function createDataBase() {
    var db = LocalStorage.openDatabaseSync("notes","");
    db.transaction(function (tx) {
    tx.executeSql("CREATE TABLE [IF NOT EXISTS] notes (id numeric PRIMARY KEY, note text NOT NULL);");
    });
}

function insertNote(note) {
    var db = dbGetHandle()
    var rowid = 0;
    db.transaction(function (tx) {
        tx.executeSql("INSERT INTO notes (note) VALUES(?);", [note]);
        var result = tx.executeSql('SELECT last_insert_rowid()')
        rowid = result.insertId
    });
    return rowid;
}

function deleteNote(noteId) {
    var db = dbGetHandle()
    db.transaction(function(tx) {
        tx.executeSql("DELETE FROM notes where rowid = ?", [noteId])
    });
}
