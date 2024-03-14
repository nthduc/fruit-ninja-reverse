.class public final enum Lcom/helpshift/websockets/WebSocketError;
.super Ljava/lang/Enum;
.source "WebSocketError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/helpshift/websockets/WebSocketError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/helpshift/websockets/WebSocketError;

.field public static final enum COMPRESSION_ERROR:Lcom/helpshift/websockets/WebSocketError;

.field public static final enum CONTINUATION_NOT_CLOSED:Lcom/helpshift/websockets/WebSocketError;

.field public static final enum DECOMPRESSION_ERROR:Lcom/helpshift/websockets/WebSocketError;

.field public static final enum EXTENSIONS_CONFLICT:Lcom/helpshift/websockets/WebSocketError;

.field public static final enum EXTENSION_PARSE_ERROR:Lcom/helpshift/websockets/WebSocketError;

.field public static final enum FLUSH_ERROR:Lcom/helpshift/websockets/WebSocketError;

.field public static final enum FRAGMENTED_CONTROL_FRAME:Lcom/helpshift/websockets/WebSocketError;

.field public static final enum FRAME_MASKED:Lcom/helpshift/websockets/WebSocketError;

.field public static final enum HOSTNAME_UNVERIFIED:Lcom/helpshift/websockets/WebSocketError;

.field public static final enum HTTP_HEADER_FAILURE:Lcom/helpshift/websockets/WebSocketError;

.field public static final enum INSUFFICENT_DATA:Lcom/helpshift/websockets/WebSocketError;

.field public static final enum INSUFFICIENT_MEMORY_FOR_PAYLOAD:Lcom/helpshift/websockets/WebSocketError;

.field public static final enum INTERRUPTED_IN_READING:Lcom/helpshift/websockets/WebSocketError;

.field public static final enum INVALID_PAYLOAD_LENGTH:Lcom/helpshift/websockets/WebSocketError;

.field public static final enum IO_ERROR_IN_READING:Lcom/helpshift/websockets/WebSocketError;

.field public static final enum IO_ERROR_IN_WRITING:Lcom/helpshift/websockets/WebSocketError;

.field public static final enum MESSAGE_CONSTRUCTION_ERROR:Lcom/helpshift/websockets/WebSocketError;

.field public static final enum NON_ZERO_RESERVED_BITS:Lcom/helpshift/websockets/WebSocketError;

.field public static final enum NOT_IN_CREATED_STATE:Lcom/helpshift/websockets/WebSocketError;

.field public static final enum NOT_SWITCHING_PROTOCOLS:Lcom/helpshift/websockets/WebSocketError;

.field public static final enum NO_CONNECTION_HEADER:Lcom/helpshift/websockets/WebSocketError;

.field public static final enum NO_MORE_FRAME:Lcom/helpshift/websockets/WebSocketError;

.field public static final enum NO_SEC_WEBSOCKET_ACCEPT_HEADER:Lcom/helpshift/websockets/WebSocketError;

.field public static final enum NO_UPGRADE_HEADER:Lcom/helpshift/websockets/WebSocketError;

.field public static final enum NO_UPGRADE_IN_CONNECTION_HEADER:Lcom/helpshift/websockets/WebSocketError;

.field public static final enum NO_WEBSOCKET_IN_UPGRADE_HEADER:Lcom/helpshift/websockets/WebSocketError;

.field public static final enum OPENING_HAHDSHAKE_REQUEST_FAILURE:Lcom/helpshift/websockets/WebSocketError;

.field public static final enum OPENING_HANDSHAKE_RESPONSE_FAILURE:Lcom/helpshift/websockets/WebSocketError;

.field public static final enum PERMESSAGE_DEFLATE_INVALID_MAX_WINDOW_BITS:Lcom/helpshift/websockets/WebSocketError;

.field public static final enum PERMESSAGE_DEFLATE_UNSUPPORTED_PARAMETER:Lcom/helpshift/websockets/WebSocketError;

.field public static final enum PROXY_HANDSHAKE_ERROR:Lcom/helpshift/websockets/WebSocketError;

.field public static final enum SOCKET_CONNECT_ERROR:Lcom/helpshift/websockets/WebSocketError;

.field public static final enum SOCKET_INPUT_STREAM_FAILURE:Lcom/helpshift/websockets/WebSocketError;

.field public static final enum SOCKET_OUTPUT_STREAM_FAILURE:Lcom/helpshift/websockets/WebSocketError;

.field public static final enum SOCKET_OVERLAY_ERROR:Lcom/helpshift/websockets/WebSocketError;

.field public static final enum SSL_HANDSHAKE_ERROR:Lcom/helpshift/websockets/WebSocketError;

.field public static final enum STATUS_LINE_BAD_FORMAT:Lcom/helpshift/websockets/WebSocketError;

.field public static final enum STATUS_LINE_EMPTY:Lcom/helpshift/websockets/WebSocketError;

.field public static final enum TEXT_MESSAGE_CONSTRUCTION_ERROR:Lcom/helpshift/websockets/WebSocketError;

.field public static final enum TOO_LONG_CONTROL_FRAME_PAYLOAD:Lcom/helpshift/websockets/WebSocketError;

.field public static final enum TOO_LONG_PAYLOAD:Lcom/helpshift/websockets/WebSocketError;

.field public static final enum UNEXPECTED_CONTINUATION_FRAME:Lcom/helpshift/websockets/WebSocketError;

.field public static final enum UNEXPECTED_ERROR_IN_READING_THREAD:Lcom/helpshift/websockets/WebSocketError;

.field public static final enum UNEXPECTED_ERROR_IN_WRITING_THREAD:Lcom/helpshift/websockets/WebSocketError;

.field public static final enum UNEXPECTED_RESERVED_BIT:Lcom/helpshift/websockets/WebSocketError;

.field public static final enum UNEXPECTED_SEC_WEBSOCKET_ACCEPT_HEADER:Lcom/helpshift/websockets/WebSocketError;

.field public static final enum UNKNOWN_OPCODE:Lcom/helpshift/websockets/WebSocketError;

.field public static final enum UNSUPPORTED_EXTENSION:Lcom/helpshift/websockets/WebSocketError;

.field public static final enum UNSUPPORTED_PROTOCOL:Lcom/helpshift/websockets/WebSocketError;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 40
    new-instance v0, Lcom/helpshift/websockets/WebSocketError;

    const/4 v1, 0x0

    const-string v2, "NOT_IN_CREATED_STATE"

    invoke-direct {v0, v2, v1}, Lcom/helpshift/websockets/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/websockets/WebSocketError;->NOT_IN_CREATED_STATE:Lcom/helpshift/websockets/WebSocketError;

    .line 46
    new-instance v0, Lcom/helpshift/websockets/WebSocketError;

    const/4 v2, 0x1

    const-string v3, "SOCKET_INPUT_STREAM_FAILURE"

    invoke-direct {v0, v3, v2}, Lcom/helpshift/websockets/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/websockets/WebSocketError;->SOCKET_INPUT_STREAM_FAILURE:Lcom/helpshift/websockets/WebSocketError;

    .line 52
    new-instance v0, Lcom/helpshift/websockets/WebSocketError;

    const/4 v3, 0x2

    const-string v4, "SOCKET_OUTPUT_STREAM_FAILURE"

    invoke-direct {v0, v4, v3}, Lcom/helpshift/websockets/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/websockets/WebSocketError;->SOCKET_OUTPUT_STREAM_FAILURE:Lcom/helpshift/websockets/WebSocketError;

    .line 58
    new-instance v0, Lcom/helpshift/websockets/WebSocketError;

    const/4 v4, 0x3

    const-string v5, "OPENING_HAHDSHAKE_REQUEST_FAILURE"

    invoke-direct {v0, v5, v4}, Lcom/helpshift/websockets/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/websockets/WebSocketError;->OPENING_HAHDSHAKE_REQUEST_FAILURE:Lcom/helpshift/websockets/WebSocketError;

    .line 64
    new-instance v0, Lcom/helpshift/websockets/WebSocketError;

    const/4 v5, 0x4

    const-string v6, "OPENING_HANDSHAKE_RESPONSE_FAILURE"

    invoke-direct {v0, v6, v5}, Lcom/helpshift/websockets/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/websockets/WebSocketError;->OPENING_HANDSHAKE_RESPONSE_FAILURE:Lcom/helpshift/websockets/WebSocketError;

    .line 70
    new-instance v0, Lcom/helpshift/websockets/WebSocketError;

    const/4 v6, 0x5

    const-string v7, "STATUS_LINE_EMPTY"

    invoke-direct {v0, v7, v6}, Lcom/helpshift/websockets/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/websockets/WebSocketError;->STATUS_LINE_EMPTY:Lcom/helpshift/websockets/WebSocketError;

    .line 76
    new-instance v0, Lcom/helpshift/websockets/WebSocketError;

    const/4 v7, 0x6

    const-string v8, "STATUS_LINE_BAD_FORMAT"

    invoke-direct {v0, v8, v7}, Lcom/helpshift/websockets/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/websockets/WebSocketError;->STATUS_LINE_BAD_FORMAT:Lcom/helpshift/websockets/WebSocketError;

    .line 82
    new-instance v0, Lcom/helpshift/websockets/WebSocketError;

    const/4 v8, 0x7

    const-string v9, "NOT_SWITCHING_PROTOCOLS"

    invoke-direct {v0, v9, v8}, Lcom/helpshift/websockets/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/websockets/WebSocketError;->NOT_SWITCHING_PROTOCOLS:Lcom/helpshift/websockets/WebSocketError;

    .line 88
    new-instance v0, Lcom/helpshift/websockets/WebSocketError;

    const/16 v9, 0x8

    const-string v10, "HTTP_HEADER_FAILURE"

    invoke-direct {v0, v10, v9}, Lcom/helpshift/websockets/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/websockets/WebSocketError;->HTTP_HEADER_FAILURE:Lcom/helpshift/websockets/WebSocketError;

    .line 94
    new-instance v0, Lcom/helpshift/websockets/WebSocketError;

    const/16 v10, 0x9

    const-string v11, "NO_UPGRADE_HEADER"

    invoke-direct {v0, v11, v10}, Lcom/helpshift/websockets/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/websockets/WebSocketError;->NO_UPGRADE_HEADER:Lcom/helpshift/websockets/WebSocketError;

    .line 100
    new-instance v0, Lcom/helpshift/websockets/WebSocketError;

    const/16 v11, 0xa

    const-string v12, "NO_WEBSOCKET_IN_UPGRADE_HEADER"

    invoke-direct {v0, v12, v11}, Lcom/helpshift/websockets/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/websockets/WebSocketError;->NO_WEBSOCKET_IN_UPGRADE_HEADER:Lcom/helpshift/websockets/WebSocketError;

    .line 106
    new-instance v0, Lcom/helpshift/websockets/WebSocketError;

    const/16 v12, 0xb

    const-string v13, "NO_CONNECTION_HEADER"

    invoke-direct {v0, v13, v12}, Lcom/helpshift/websockets/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/websockets/WebSocketError;->NO_CONNECTION_HEADER:Lcom/helpshift/websockets/WebSocketError;

    .line 112
    new-instance v0, Lcom/helpshift/websockets/WebSocketError;

    const/16 v13, 0xc

    const-string v14, "NO_UPGRADE_IN_CONNECTION_HEADER"

    invoke-direct {v0, v14, v13}, Lcom/helpshift/websockets/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/websockets/WebSocketError;->NO_UPGRADE_IN_CONNECTION_HEADER:Lcom/helpshift/websockets/WebSocketError;

    .line 118
    new-instance v0, Lcom/helpshift/websockets/WebSocketError;

    const/16 v14, 0xd

    const-string v15, "NO_SEC_WEBSOCKET_ACCEPT_HEADER"

    invoke-direct {v0, v15, v14}, Lcom/helpshift/websockets/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/websockets/WebSocketError;->NO_SEC_WEBSOCKET_ACCEPT_HEADER:Lcom/helpshift/websockets/WebSocketError;

    .line 124
    new-instance v0, Lcom/helpshift/websockets/WebSocketError;

    const/16 v15, 0xe

    const-string v14, "UNEXPECTED_SEC_WEBSOCKET_ACCEPT_HEADER"

    invoke-direct {v0, v14, v15}, Lcom/helpshift/websockets/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/websockets/WebSocketError;->UNEXPECTED_SEC_WEBSOCKET_ACCEPT_HEADER:Lcom/helpshift/websockets/WebSocketError;

    .line 130
    new-instance v0, Lcom/helpshift/websockets/WebSocketError;

    const-string v14, "EXTENSION_PARSE_ERROR"

    const/16 v15, 0xf

    invoke-direct {v0, v14, v15}, Lcom/helpshift/websockets/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/websockets/WebSocketError;->EXTENSION_PARSE_ERROR:Lcom/helpshift/websockets/WebSocketError;

    .line 136
    new-instance v0, Lcom/helpshift/websockets/WebSocketError;

    const-string v14, "UNSUPPORTED_EXTENSION"

    const/16 v15, 0x10

    invoke-direct {v0, v14, v15}, Lcom/helpshift/websockets/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/websockets/WebSocketError;->UNSUPPORTED_EXTENSION:Lcom/helpshift/websockets/WebSocketError;

    .line 145
    new-instance v0, Lcom/helpshift/websockets/WebSocketError;

    const-string v14, "EXTENSIONS_CONFLICT"

    const/16 v15, 0x11

    invoke-direct {v0, v14, v15}, Lcom/helpshift/websockets/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/websockets/WebSocketError;->EXTENSIONS_CONFLICT:Lcom/helpshift/websockets/WebSocketError;

    .line 151
    new-instance v0, Lcom/helpshift/websockets/WebSocketError;

    const-string v14, "UNSUPPORTED_PROTOCOL"

    const/16 v15, 0x12

    invoke-direct {v0, v14, v15}, Lcom/helpshift/websockets/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/websockets/WebSocketError;->UNSUPPORTED_PROTOCOL:Lcom/helpshift/websockets/WebSocketError;

    .line 157
    new-instance v0, Lcom/helpshift/websockets/WebSocketError;

    const-string v14, "INSUFFICENT_DATA"

    const/16 v15, 0x13

    invoke-direct {v0, v14, v15}, Lcom/helpshift/websockets/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/websockets/WebSocketError;->INSUFFICENT_DATA:Lcom/helpshift/websockets/WebSocketError;

    .line 163
    new-instance v0, Lcom/helpshift/websockets/WebSocketError;

    const-string v14, "INVALID_PAYLOAD_LENGTH"

    const/16 v15, 0x14

    invoke-direct {v0, v14, v15}, Lcom/helpshift/websockets/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/websockets/WebSocketError;->INVALID_PAYLOAD_LENGTH:Lcom/helpshift/websockets/WebSocketError;

    .line 169
    new-instance v0, Lcom/helpshift/websockets/WebSocketError;

    const-string v14, "TOO_LONG_PAYLOAD"

    const/16 v15, 0x15

    invoke-direct {v0, v14, v15}, Lcom/helpshift/websockets/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/websockets/WebSocketError;->TOO_LONG_PAYLOAD:Lcom/helpshift/websockets/WebSocketError;

    .line 175
    new-instance v0, Lcom/helpshift/websockets/WebSocketError;

    const-string v14, "INSUFFICIENT_MEMORY_FOR_PAYLOAD"

    const/16 v15, 0x16

    invoke-direct {v0, v14, v15}, Lcom/helpshift/websockets/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/websockets/WebSocketError;->INSUFFICIENT_MEMORY_FOR_PAYLOAD:Lcom/helpshift/websockets/WebSocketError;

    .line 181
    new-instance v0, Lcom/helpshift/websockets/WebSocketError;

    const-string v14, "INTERRUPTED_IN_READING"

    const/16 v15, 0x17

    invoke-direct {v0, v14, v15}, Lcom/helpshift/websockets/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/websockets/WebSocketError;->INTERRUPTED_IN_READING:Lcom/helpshift/websockets/WebSocketError;

    .line 187
    new-instance v0, Lcom/helpshift/websockets/WebSocketError;

    const-string v14, "IO_ERROR_IN_READING"

    const/16 v15, 0x18

    invoke-direct {v0, v14, v15}, Lcom/helpshift/websockets/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/websockets/WebSocketError;->IO_ERROR_IN_READING:Lcom/helpshift/websockets/WebSocketError;

    .line 193
    new-instance v0, Lcom/helpshift/websockets/WebSocketError;

    const-string v14, "IO_ERROR_IN_WRITING"

    const/16 v15, 0x19

    invoke-direct {v0, v14, v15}, Lcom/helpshift/websockets/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/websockets/WebSocketError;->IO_ERROR_IN_WRITING:Lcom/helpshift/websockets/WebSocketError;

    .line 199
    new-instance v0, Lcom/helpshift/websockets/WebSocketError;

    const-string v14, "FLUSH_ERROR"

    const/16 v15, 0x1a

    invoke-direct {v0, v14, v15}, Lcom/helpshift/websockets/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/websockets/WebSocketError;->FLUSH_ERROR:Lcom/helpshift/websockets/WebSocketError;

    .line 225
    new-instance v0, Lcom/helpshift/websockets/WebSocketError;

    const-string v14, "NON_ZERO_RESERVED_BITS"

    const/16 v15, 0x1b

    invoke-direct {v0, v14, v15}, Lcom/helpshift/websockets/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/websockets/WebSocketError;->NON_ZERO_RESERVED_BITS:Lcom/helpshift/websockets/WebSocketError;

    .line 249
    new-instance v0, Lcom/helpshift/websockets/WebSocketError;

    const-string v14, "UNEXPECTED_RESERVED_BIT"

    const/16 v15, 0x1c

    invoke-direct {v0, v14, v15}, Lcom/helpshift/websockets/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/websockets/WebSocketError;->UNEXPECTED_RESERVED_BIT:Lcom/helpshift/websockets/WebSocketError;

    .line 264
    new-instance v0, Lcom/helpshift/websockets/WebSocketError;

    const-string v14, "FRAME_MASKED"

    const/16 v15, 0x1d

    invoke-direct {v0, v14, v15}, Lcom/helpshift/websockets/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/websockets/WebSocketError;->FRAME_MASKED:Lcom/helpshift/websockets/WebSocketError;

    .line 275
    new-instance v0, Lcom/helpshift/websockets/WebSocketError;

    const-string v14, "UNKNOWN_OPCODE"

    const/16 v15, 0x1e

    invoke-direct {v0, v14, v15}, Lcom/helpshift/websockets/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/websockets/WebSocketError;->UNKNOWN_OPCODE:Lcom/helpshift/websockets/WebSocketError;

    .line 290
    new-instance v0, Lcom/helpshift/websockets/WebSocketError;

    const-string v14, "FRAGMENTED_CONTROL_FRAME"

    const/16 v15, 0x1f

    invoke-direct {v0, v14, v15}, Lcom/helpshift/websockets/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/websockets/WebSocketError;->FRAGMENTED_CONTROL_FRAME:Lcom/helpshift/websockets/WebSocketError;

    .line 296
    new-instance v0, Lcom/helpshift/websockets/WebSocketError;

    const-string v14, "UNEXPECTED_CONTINUATION_FRAME"

    const/16 v15, 0x20

    invoke-direct {v0, v14, v15}, Lcom/helpshift/websockets/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/websockets/WebSocketError;->UNEXPECTED_CONTINUATION_FRAME:Lcom/helpshift/websockets/WebSocketError;

    .line 302
    new-instance v0, Lcom/helpshift/websockets/WebSocketError;

    const-string v14, "CONTINUATION_NOT_CLOSED"

    const/16 v15, 0x21

    invoke-direct {v0, v14, v15}, Lcom/helpshift/websockets/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/websockets/WebSocketError;->CONTINUATION_NOT_CLOSED:Lcom/helpshift/websockets/WebSocketError;

    .line 317
    new-instance v0, Lcom/helpshift/websockets/WebSocketError;

    const-string v14, "TOO_LONG_CONTROL_FRAME_PAYLOAD"

    const/16 v15, 0x22

    invoke-direct {v0, v14, v15}, Lcom/helpshift/websockets/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/websockets/WebSocketError;->TOO_LONG_CONTROL_FRAME_PAYLOAD:Lcom/helpshift/websockets/WebSocketError;

    .line 323
    new-instance v0, Lcom/helpshift/websockets/WebSocketError;

    const-string v14, "MESSAGE_CONSTRUCTION_ERROR"

    const/16 v15, 0x23

    invoke-direct {v0, v14, v15}, Lcom/helpshift/websockets/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/websockets/WebSocketError;->MESSAGE_CONSTRUCTION_ERROR:Lcom/helpshift/websockets/WebSocketError;

    .line 329
    new-instance v0, Lcom/helpshift/websockets/WebSocketError;

    const-string v14, "TEXT_MESSAGE_CONSTRUCTION_ERROR"

    const/16 v15, 0x24

    invoke-direct {v0, v14, v15}, Lcom/helpshift/websockets/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/websockets/WebSocketError;->TEXT_MESSAGE_CONSTRUCTION_ERROR:Lcom/helpshift/websockets/WebSocketError;

    .line 336
    new-instance v0, Lcom/helpshift/websockets/WebSocketError;

    const-string v14, "UNEXPECTED_ERROR_IN_READING_THREAD"

    const/16 v15, 0x25

    invoke-direct {v0, v14, v15}, Lcom/helpshift/websockets/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/websockets/WebSocketError;->UNEXPECTED_ERROR_IN_READING_THREAD:Lcom/helpshift/websockets/WebSocketError;

    .line 343
    new-instance v0, Lcom/helpshift/websockets/WebSocketError;

    const-string v14, "UNEXPECTED_ERROR_IN_WRITING_THREAD"

    const/16 v15, 0x26

    invoke-direct {v0, v14, v15}, Lcom/helpshift/websockets/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/websockets/WebSocketError;->UNEXPECTED_ERROR_IN_WRITING_THREAD:Lcom/helpshift/websockets/WebSocketError;

    .line 357
    new-instance v0, Lcom/helpshift/websockets/WebSocketError;

    const-string v14, "PERMESSAGE_DEFLATE_UNSUPPORTED_PARAMETER"

    const/16 v15, 0x27

    invoke-direct {v0, v14, v15}, Lcom/helpshift/websockets/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/websockets/WebSocketError;->PERMESSAGE_DEFLATE_UNSUPPORTED_PARAMETER:Lcom/helpshift/websockets/WebSocketError;

    .line 373
    new-instance v0, Lcom/helpshift/websockets/WebSocketError;

    const-string v14, "PERMESSAGE_DEFLATE_INVALID_MAX_WINDOW_BITS"

    const/16 v15, 0x28

    invoke-direct {v0, v14, v15}, Lcom/helpshift/websockets/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/websockets/WebSocketError;->PERMESSAGE_DEFLATE_INVALID_MAX_WINDOW_BITS:Lcom/helpshift/websockets/WebSocketError;

    .line 381
    new-instance v0, Lcom/helpshift/websockets/WebSocketError;

    const-string v14, "COMPRESSION_ERROR"

    const/16 v15, 0x29

    invoke-direct {v0, v14, v15}, Lcom/helpshift/websockets/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/websockets/WebSocketError;->COMPRESSION_ERROR:Lcom/helpshift/websockets/WebSocketError;

    .line 389
    new-instance v0, Lcom/helpshift/websockets/WebSocketError;

    const-string v14, "DECOMPRESSION_ERROR"

    const/16 v15, 0x2a

    invoke-direct {v0, v14, v15}, Lcom/helpshift/websockets/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/websockets/WebSocketError;->DECOMPRESSION_ERROR:Lcom/helpshift/websockets/WebSocketError;

    .line 398
    new-instance v0, Lcom/helpshift/websockets/WebSocketError;

    const-string v14, "SOCKET_CONNECT_ERROR"

    const/16 v15, 0x2b

    invoke-direct {v0, v14, v15}, Lcom/helpshift/websockets/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/websockets/WebSocketError;->SOCKET_CONNECT_ERROR:Lcom/helpshift/websockets/WebSocketError;

    .line 406
    new-instance v0, Lcom/helpshift/websockets/WebSocketError;

    const-string v14, "PROXY_HANDSHAKE_ERROR"

    const/16 v15, 0x2c

    invoke-direct {v0, v14, v15}, Lcom/helpshift/websockets/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/websockets/WebSocketError;->PROXY_HANDSHAKE_ERROR:Lcom/helpshift/websockets/WebSocketError;

    .line 414
    new-instance v0, Lcom/helpshift/websockets/WebSocketError;

    const-string v14, "SOCKET_OVERLAY_ERROR"

    const/16 v15, 0x2d

    invoke-direct {v0, v14, v15}, Lcom/helpshift/websockets/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/websockets/WebSocketError;->SOCKET_OVERLAY_ERROR:Lcom/helpshift/websockets/WebSocketError;

    .line 422
    new-instance v0, Lcom/helpshift/websockets/WebSocketError;

    const-string v14, "SSL_HANDSHAKE_ERROR"

    const/16 v15, 0x2e

    invoke-direct {v0, v14, v15}, Lcom/helpshift/websockets/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/websockets/WebSocketError;->SSL_HANDSHAKE_ERROR:Lcom/helpshift/websockets/WebSocketError;

    .line 439
    new-instance v0, Lcom/helpshift/websockets/WebSocketError;

    const-string v14, "NO_MORE_FRAME"

    const/16 v15, 0x2f

    invoke-direct {v0, v14, v15}, Lcom/helpshift/websockets/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/websockets/WebSocketError;->NO_MORE_FRAME:Lcom/helpshift/websockets/WebSocketError;

    .line 458
    new-instance v0, Lcom/helpshift/websockets/WebSocketError;

    const-string v14, "HOSTNAME_UNVERIFIED"

    const/16 v15, 0x30

    invoke-direct {v0, v14, v15}, Lcom/helpshift/websockets/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/websockets/WebSocketError;->HOSTNAME_UNVERIFIED:Lcom/helpshift/websockets/WebSocketError;

    const/16 v0, 0x31

    .line 30
    new-array v0, v0, [Lcom/helpshift/websockets/WebSocketError;

    sget-object v14, Lcom/helpshift/websockets/WebSocketError;->NOT_IN_CREATED_STATE:Lcom/helpshift/websockets/WebSocketError;

    aput-object v14, v0, v1

    sget-object v1, Lcom/helpshift/websockets/WebSocketError;->SOCKET_INPUT_STREAM_FAILURE:Lcom/helpshift/websockets/WebSocketError;

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/websockets/WebSocketError;->SOCKET_OUTPUT_STREAM_FAILURE:Lcom/helpshift/websockets/WebSocketError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/helpshift/websockets/WebSocketError;->OPENING_HAHDSHAKE_REQUEST_FAILURE:Lcom/helpshift/websockets/WebSocketError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/helpshift/websockets/WebSocketError;->OPENING_HANDSHAKE_RESPONSE_FAILURE:Lcom/helpshift/websockets/WebSocketError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/helpshift/websockets/WebSocketError;->STATUS_LINE_EMPTY:Lcom/helpshift/websockets/WebSocketError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/helpshift/websockets/WebSocketError;->STATUS_LINE_BAD_FORMAT:Lcom/helpshift/websockets/WebSocketError;

    aput-object v1, v0, v7

    sget-object v1, Lcom/helpshift/websockets/WebSocketError;->NOT_SWITCHING_PROTOCOLS:Lcom/helpshift/websockets/WebSocketError;

    aput-object v1, v0, v8

    sget-object v1, Lcom/helpshift/websockets/WebSocketError;->HTTP_HEADER_FAILURE:Lcom/helpshift/websockets/WebSocketError;

    aput-object v1, v0, v9

    sget-object v1, Lcom/helpshift/websockets/WebSocketError;->NO_UPGRADE_HEADER:Lcom/helpshift/websockets/WebSocketError;

    aput-object v1, v0, v10

    sget-object v1, Lcom/helpshift/websockets/WebSocketError;->NO_WEBSOCKET_IN_UPGRADE_HEADER:Lcom/helpshift/websockets/WebSocketError;

    aput-object v1, v0, v11

    sget-object v1, Lcom/helpshift/websockets/WebSocketError;->NO_CONNECTION_HEADER:Lcom/helpshift/websockets/WebSocketError;

    aput-object v1, v0, v12

    sget-object v1, Lcom/helpshift/websockets/WebSocketError;->NO_UPGRADE_IN_CONNECTION_HEADER:Lcom/helpshift/websockets/WebSocketError;

    aput-object v1, v0, v13

    sget-object v1, Lcom/helpshift/websockets/WebSocketError;->NO_SEC_WEBSOCKET_ACCEPT_HEADER:Lcom/helpshift/websockets/WebSocketError;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/websockets/WebSocketError;->UNEXPECTED_SEC_WEBSOCKET_ACCEPT_HEADER:Lcom/helpshift/websockets/WebSocketError;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/websockets/WebSocketError;->EXTENSION_PARSE_ERROR:Lcom/helpshift/websockets/WebSocketError;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/websockets/WebSocketError;->UNSUPPORTED_EXTENSION:Lcom/helpshift/websockets/WebSocketError;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/websockets/WebSocketError;->EXTENSIONS_CONFLICT:Lcom/helpshift/websockets/WebSocketError;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/websockets/WebSocketError;->UNSUPPORTED_PROTOCOL:Lcom/helpshift/websockets/WebSocketError;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/websockets/WebSocketError;->INSUFFICENT_DATA:Lcom/helpshift/websockets/WebSocketError;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/websockets/WebSocketError;->INVALID_PAYLOAD_LENGTH:Lcom/helpshift/websockets/WebSocketError;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/websockets/WebSocketError;->TOO_LONG_PAYLOAD:Lcom/helpshift/websockets/WebSocketError;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/websockets/WebSocketError;->INSUFFICIENT_MEMORY_FOR_PAYLOAD:Lcom/helpshift/websockets/WebSocketError;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/websockets/WebSocketError;->INTERRUPTED_IN_READING:Lcom/helpshift/websockets/WebSocketError;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/websockets/WebSocketError;->IO_ERROR_IN_READING:Lcom/helpshift/websockets/WebSocketError;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/websockets/WebSocketError;->IO_ERROR_IN_WRITING:Lcom/helpshift/websockets/WebSocketError;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/websockets/WebSocketError;->FLUSH_ERROR:Lcom/helpshift/websockets/WebSocketError;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/websockets/WebSocketError;->NON_ZERO_RESERVED_BITS:Lcom/helpshift/websockets/WebSocketError;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/websockets/WebSocketError;->UNEXPECTED_RESERVED_BIT:Lcom/helpshift/websockets/WebSocketError;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/websockets/WebSocketError;->FRAME_MASKED:Lcom/helpshift/websockets/WebSocketError;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/websockets/WebSocketError;->UNKNOWN_OPCODE:Lcom/helpshift/websockets/WebSocketError;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/websockets/WebSocketError;->FRAGMENTED_CONTROL_FRAME:Lcom/helpshift/websockets/WebSocketError;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/websockets/WebSocketError;->UNEXPECTED_CONTINUATION_FRAME:Lcom/helpshift/websockets/WebSocketError;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/websockets/WebSocketError;->CONTINUATION_NOT_CLOSED:Lcom/helpshift/websockets/WebSocketError;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/websockets/WebSocketError;->TOO_LONG_CONTROL_FRAME_PAYLOAD:Lcom/helpshift/websockets/WebSocketError;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/websockets/WebSocketError;->MESSAGE_CONSTRUCTION_ERROR:Lcom/helpshift/websockets/WebSocketError;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/websockets/WebSocketError;->TEXT_MESSAGE_CONSTRUCTION_ERROR:Lcom/helpshift/websockets/WebSocketError;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/websockets/WebSocketError;->UNEXPECTED_ERROR_IN_READING_THREAD:Lcom/helpshift/websockets/WebSocketError;

    const/16 v2, 0x25

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/websockets/WebSocketError;->UNEXPECTED_ERROR_IN_WRITING_THREAD:Lcom/helpshift/websockets/WebSocketError;

    const/16 v2, 0x26

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/websockets/WebSocketError;->PERMESSAGE_DEFLATE_UNSUPPORTED_PARAMETER:Lcom/helpshift/websockets/WebSocketError;

    const/16 v2, 0x27

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/websockets/WebSocketError;->PERMESSAGE_DEFLATE_INVALID_MAX_WINDOW_BITS:Lcom/helpshift/websockets/WebSocketError;

    const/16 v2, 0x28

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/websockets/WebSocketError;->COMPRESSION_ERROR:Lcom/helpshift/websockets/WebSocketError;

    const/16 v2, 0x29

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/websockets/WebSocketError;->DECOMPRESSION_ERROR:Lcom/helpshift/websockets/WebSocketError;

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/websockets/WebSocketError;->SOCKET_CONNECT_ERROR:Lcom/helpshift/websockets/WebSocketError;

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/websockets/WebSocketError;->PROXY_HANDSHAKE_ERROR:Lcom/helpshift/websockets/WebSocketError;

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/websockets/WebSocketError;->SOCKET_OVERLAY_ERROR:Lcom/helpshift/websockets/WebSocketError;

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/websockets/WebSocketError;->SSL_HANDSHAKE_ERROR:Lcom/helpshift/websockets/WebSocketError;

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/websockets/WebSocketError;->NO_MORE_FRAME:Lcom/helpshift/websockets/WebSocketError;

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/websockets/WebSocketError;->HOSTNAME_UNVERIFIED:Lcom/helpshift/websockets/WebSocketError;

    const/16 v2, 0x30

    aput-object v1, v0, v2

    sput-object v0, Lcom/helpshift/websockets/WebSocketError;->$VALUES:[Lcom/helpshift/websockets/WebSocketError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/helpshift/websockets/WebSocketError;
    .registers 2

    .line 30
    const-class v0, Lcom/helpshift/websockets/WebSocketError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/helpshift/websockets/WebSocketError;

    return-object p0
.end method

.method public static values()[Lcom/helpshift/websockets/WebSocketError;
    .registers 1

    .line 30
    sget-object v0, Lcom/helpshift/websockets/WebSocketError;->$VALUES:[Lcom/helpshift/websockets/WebSocketError;

    invoke-virtual {v0}, [Lcom/helpshift/websockets/WebSocketError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/helpshift/websockets/WebSocketError;

    return-object v0
.end method
