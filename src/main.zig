const std = @import("std");
const print = std.debug.print;
const c = @cImport({
    @cInclude("h3api.h");
});

pub fn main() !void {
    // Prints to stderr (it's a shortcut based on `std.io.getStdErr()`)
    var index: c.H3Index = undefined;
    const id = c.stringToH3("8f2830828052d25", &index);

    print("This is the cell: `{}`\n", .{id});
    print("This is the index: `{}`: `{}`\n", .{ index, @TypeOf(index) });
}
