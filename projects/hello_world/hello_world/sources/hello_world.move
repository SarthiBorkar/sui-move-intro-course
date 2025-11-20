
module hello_world::hello_world;

use std::string;
use sui::math;

public struct hello_worldObject has key, store {
    id: UID,
    text: string::String,
}

public fun mint(ctx: &mut TxContext) {
    let object= hello_worldObject {
        id: object::new(ctx),
        text: b"Hello, World!".to_string(),
    };
    transfer::public_transfer(object, ctx.sender());
}

public fun create_transcript_object(histroy: u8, math: u8, literature: u8, ctx: &mut TxContext) {
    let transcript_object = TranscriptObject {
        id: object::new(ctx),
        histroy,
        math,
        literature, 
    };
    transfer::transfer(transcript_object, ctx.sender());
}