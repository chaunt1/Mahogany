import VPlayApps 1.0
import QtQuick 2.0

/*

// EXAMPLE USAGE:
// add the following piece of code inside your App { } to display the List Page

ListOrderPage {

}

*/

ListPage {

    // TODO add your model
    model: [{ type: "Fruits", text: "Banana" },
        { type: "Fruits", text: "Apple" },
        { type: "Vegetables", text: "Potato" }]

    section.property: "type"

}