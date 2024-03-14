.class public final enum Lcom/helpshift/common/exception/NetworkException;
.super Ljava/lang/Enum;
.source "NetworkException.java"

# interfaces
.implements Lcom/helpshift/common/exception/ExceptionType;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/helpshift/common/exception/NetworkException;",
        ">;",
        "Lcom/helpshift/common/exception/ExceptionType;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/helpshift/common/exception/NetworkException;

.field public static final enum AUTH_TOKEN_NOT_PROVIDED:Lcom/helpshift/common/exception/NetworkException;

.field public static final enum CONTENT_NOT_FOUND:Lcom/helpshift/common/exception/NetworkException;

.field public static final enum CONTENT_UNCHANGED:Lcom/helpshift/common/exception/NetworkException;

.field public static final enum CONVERSATION_ARCHIVED:Lcom/helpshift/common/exception/NetworkException;

.field public static final enum CONVERSATION_REOPEN_EXPIRED:Lcom/helpshift/common/exception/NetworkException;

.field public static final enum CSAT_EXPIRED:Lcom/helpshift/common/exception/NetworkException;

.field public static final enum ENTITY_TOO_LARGE_RETRIES_EXHAUSTED:Lcom/helpshift/common/exception/NetworkException;

.field public static final enum GENERIC:Lcom/helpshift/common/exception/NetworkException;

.field public static final enum INVALID_AUTH_TOKEN:Lcom/helpshift/common/exception/NetworkException;

.field public static final enum NON_RETRIABLE:Lcom/helpshift/common/exception/NetworkException;

.field public static final enum NO_CONNECTION:Lcom/helpshift/common/exception/NetworkException;

.field public static final enum SCREENSHOT_UPLOAD_ERROR:Lcom/helpshift/common/exception/NetworkException;

.field public static final enum SSL_HANDSHAKE:Lcom/helpshift/common/exception/NetworkException;

.field public static final enum SSL_PEER_UNVERIFIED:Lcom/helpshift/common/exception/NetworkException;

.field public static final enum TIMESTAMP_CORRECTION_RETRIES_EXHAUSTED:Lcom/helpshift/common/exception/NetworkException;

.field public static final enum UNABLE_TO_GENERATE_SIGNATURE:Lcom/helpshift/common/exception/NetworkException;

.field public static final enum UNHANDLED_STATUS_CODE:Lcom/helpshift/common/exception/NetworkException;

.field public static final enum UNKNOWN_HOST:Lcom/helpshift/common/exception/NetworkException;

.field public static final enum UNSUPPORTED_ENCODING_EXCEPTION:Lcom/helpshift/common/exception/NetworkException;

.field public static final enum UNSUPPORTED_MIME_TYPE:Lcom/helpshift/common/exception/NetworkException;

.field public static final enum USER_NOT_FOUND:Lcom/helpshift/common/exception/NetworkException;

.field public static final enum USER_PRE_CONDITION_FAILED:Lcom/helpshift/common/exception/NetworkException;


# instance fields
.field public route:Ljava/lang/String;

.field public serverStatusCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 4
    new-instance v0, Lcom/helpshift/common/exception/NetworkException;

    const/4 v1, 0x0

    const-string v2, "GENERIC"

    invoke-direct {v0, v2, v1}, Lcom/helpshift/common/exception/NetworkException;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/common/exception/NetworkException;->GENERIC:Lcom/helpshift/common/exception/NetworkException;

    .line 5
    new-instance v0, Lcom/helpshift/common/exception/NetworkException;

    const/4 v2, 0x1

    const-string v3, "NO_CONNECTION"

    invoke-direct {v0, v3, v2}, Lcom/helpshift/common/exception/NetworkException;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/common/exception/NetworkException;->NO_CONNECTION:Lcom/helpshift/common/exception/NetworkException;

    .line 6
    new-instance v0, Lcom/helpshift/common/exception/NetworkException;

    const/4 v3, 0x2

    const-string v4, "UNKNOWN_HOST"

    invoke-direct {v0, v4, v3}, Lcom/helpshift/common/exception/NetworkException;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/common/exception/NetworkException;->UNKNOWN_HOST:Lcom/helpshift/common/exception/NetworkException;

    .line 7
    new-instance v0, Lcom/helpshift/common/exception/NetworkException;

    const/4 v4, 0x3

    const-string v5, "SSL_PEER_UNVERIFIED"

    invoke-direct {v0, v5, v4}, Lcom/helpshift/common/exception/NetworkException;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/common/exception/NetworkException;->SSL_PEER_UNVERIFIED:Lcom/helpshift/common/exception/NetworkException;

    .line 8
    new-instance v0, Lcom/helpshift/common/exception/NetworkException;

    const/4 v5, 0x4

    const-string v6, "SSL_HANDSHAKE"

    invoke-direct {v0, v6, v5}, Lcom/helpshift/common/exception/NetworkException;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/common/exception/NetworkException;->SSL_HANDSHAKE:Lcom/helpshift/common/exception/NetworkException;

    .line 9
    new-instance v0, Lcom/helpshift/common/exception/NetworkException;

    const/4 v6, 0x5

    const-string v7, "UNHANDLED_STATUS_CODE"

    invoke-direct {v0, v7, v6}, Lcom/helpshift/common/exception/NetworkException;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/common/exception/NetworkException;->UNHANDLED_STATUS_CODE:Lcom/helpshift/common/exception/NetworkException;

    .line 10
    new-instance v0, Lcom/helpshift/common/exception/NetworkException;

    const/4 v7, 0x6

    const-string v8, "TIMESTAMP_CORRECTION_RETRIES_EXHAUSTED"

    invoke-direct {v0, v8, v7}, Lcom/helpshift/common/exception/NetworkException;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/common/exception/NetworkException;->TIMESTAMP_CORRECTION_RETRIES_EXHAUSTED:Lcom/helpshift/common/exception/NetworkException;

    .line 11
    new-instance v0, Lcom/helpshift/common/exception/NetworkException;

    const/4 v8, 0x7

    const-string v9, "ENTITY_TOO_LARGE_RETRIES_EXHAUSTED"

    invoke-direct {v0, v9, v8}, Lcom/helpshift/common/exception/NetworkException;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/common/exception/NetworkException;->ENTITY_TOO_LARGE_RETRIES_EXHAUSTED:Lcom/helpshift/common/exception/NetworkException;

    .line 12
    new-instance v0, Lcom/helpshift/common/exception/NetworkException;

    const/16 v9, 0x8

    const-string v10, "CONTENT_NOT_FOUND"

    invoke-direct {v0, v10, v9}, Lcom/helpshift/common/exception/NetworkException;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/common/exception/NetworkException;->CONTENT_NOT_FOUND:Lcom/helpshift/common/exception/NetworkException;

    .line 13
    new-instance v0, Lcom/helpshift/common/exception/NetworkException;

    const/16 v10, 0x9

    const-string v11, "UNSUPPORTED_ENCODING_EXCEPTION"

    invoke-direct {v0, v11, v10}, Lcom/helpshift/common/exception/NetworkException;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/common/exception/NetworkException;->UNSUPPORTED_ENCODING_EXCEPTION:Lcom/helpshift/common/exception/NetworkException;

    .line 14
    new-instance v0, Lcom/helpshift/common/exception/NetworkException;

    const/16 v11, 0xa

    const-string v12, "UNABLE_TO_GENERATE_SIGNATURE"

    invoke-direct {v0, v12, v11}, Lcom/helpshift/common/exception/NetworkException;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/common/exception/NetworkException;->UNABLE_TO_GENERATE_SIGNATURE:Lcom/helpshift/common/exception/NetworkException;

    .line 15
    new-instance v0, Lcom/helpshift/common/exception/NetworkException;

    const/16 v12, 0xb

    const-string v13, "UNSUPPORTED_MIME_TYPE"

    invoke-direct {v0, v13, v12}, Lcom/helpshift/common/exception/NetworkException;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/common/exception/NetworkException;->UNSUPPORTED_MIME_TYPE:Lcom/helpshift/common/exception/NetworkException;

    .line 16
    new-instance v0, Lcom/helpshift/common/exception/NetworkException;

    const/16 v13, 0xc

    const-string v14, "NON_RETRIABLE"

    invoke-direct {v0, v14, v13}, Lcom/helpshift/common/exception/NetworkException;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/common/exception/NetworkException;->NON_RETRIABLE:Lcom/helpshift/common/exception/NetworkException;

    .line 17
    new-instance v0, Lcom/helpshift/common/exception/NetworkException;

    const/16 v14, 0xd

    const-string v15, "CONVERSATION_ARCHIVED"

    invoke-direct {v0, v15, v14}, Lcom/helpshift/common/exception/NetworkException;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/common/exception/NetworkException;->CONVERSATION_ARCHIVED:Lcom/helpshift/common/exception/NetworkException;

    .line 18
    new-instance v0, Lcom/helpshift/common/exception/NetworkException;

    const/16 v15, 0xe

    const-string v14, "CONVERSATION_REOPEN_EXPIRED"

    invoke-direct {v0, v14, v15}, Lcom/helpshift/common/exception/NetworkException;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/common/exception/NetworkException;->CONVERSATION_REOPEN_EXPIRED:Lcom/helpshift/common/exception/NetworkException;

    .line 19
    new-instance v0, Lcom/helpshift/common/exception/NetworkException;

    const-string v14, "CSAT_EXPIRED"

    const/16 v15, 0xf

    invoke-direct {v0, v14, v15}, Lcom/helpshift/common/exception/NetworkException;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/common/exception/NetworkException;->CSAT_EXPIRED:Lcom/helpshift/common/exception/NetworkException;

    .line 20
    new-instance v0, Lcom/helpshift/common/exception/NetworkException;

    const-string v14, "SCREENSHOT_UPLOAD_ERROR"

    const/16 v15, 0x10

    invoke-direct {v0, v14, v15}, Lcom/helpshift/common/exception/NetworkException;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/common/exception/NetworkException;->SCREENSHOT_UPLOAD_ERROR:Lcom/helpshift/common/exception/NetworkException;

    .line 21
    new-instance v0, Lcom/helpshift/common/exception/NetworkException;

    const-string v14, "INVALID_AUTH_TOKEN"

    const/16 v15, 0x11

    invoke-direct {v0, v14, v15}, Lcom/helpshift/common/exception/NetworkException;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/common/exception/NetworkException;->INVALID_AUTH_TOKEN:Lcom/helpshift/common/exception/NetworkException;

    .line 22
    new-instance v0, Lcom/helpshift/common/exception/NetworkException;

    const-string v14, "AUTH_TOKEN_NOT_PROVIDED"

    const/16 v15, 0x12

    invoke-direct {v0, v14, v15}, Lcom/helpshift/common/exception/NetworkException;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/common/exception/NetworkException;->AUTH_TOKEN_NOT_PROVIDED:Lcom/helpshift/common/exception/NetworkException;

    .line 23
    new-instance v0, Lcom/helpshift/common/exception/NetworkException;

    const-string v14, "USER_PRE_CONDITION_FAILED"

    const/16 v15, 0x13

    invoke-direct {v0, v14, v15}, Lcom/helpshift/common/exception/NetworkException;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/common/exception/NetworkException;->USER_PRE_CONDITION_FAILED:Lcom/helpshift/common/exception/NetworkException;

    .line 24
    new-instance v0, Lcom/helpshift/common/exception/NetworkException;

    const-string v14, "USER_NOT_FOUND"

    const/16 v15, 0x14

    invoke-direct {v0, v14, v15}, Lcom/helpshift/common/exception/NetworkException;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/common/exception/NetworkException;->USER_NOT_FOUND:Lcom/helpshift/common/exception/NetworkException;

    .line 25
    new-instance v0, Lcom/helpshift/common/exception/NetworkException;

    const-string v14, "CONTENT_UNCHANGED"

    const/16 v15, 0x15

    invoke-direct {v0, v14, v15}, Lcom/helpshift/common/exception/NetworkException;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/common/exception/NetworkException;->CONTENT_UNCHANGED:Lcom/helpshift/common/exception/NetworkException;

    const/16 v0, 0x16

    .line 3
    new-array v0, v0, [Lcom/helpshift/common/exception/NetworkException;

    sget-object v14, Lcom/helpshift/common/exception/NetworkException;->GENERIC:Lcom/helpshift/common/exception/NetworkException;

    aput-object v14, v0, v1

    sget-object v1, Lcom/helpshift/common/exception/NetworkException;->NO_CONNECTION:Lcom/helpshift/common/exception/NetworkException;

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/common/exception/NetworkException;->UNKNOWN_HOST:Lcom/helpshift/common/exception/NetworkException;

    aput-object v1, v0, v3

    sget-object v1, Lcom/helpshift/common/exception/NetworkException;->SSL_PEER_UNVERIFIED:Lcom/helpshift/common/exception/NetworkException;

    aput-object v1, v0, v4

    sget-object v1, Lcom/helpshift/common/exception/NetworkException;->SSL_HANDSHAKE:Lcom/helpshift/common/exception/NetworkException;

    aput-object v1, v0, v5

    sget-object v1, Lcom/helpshift/common/exception/NetworkException;->UNHANDLED_STATUS_CODE:Lcom/helpshift/common/exception/NetworkException;

    aput-object v1, v0, v6

    sget-object v1, Lcom/helpshift/common/exception/NetworkException;->TIMESTAMP_CORRECTION_RETRIES_EXHAUSTED:Lcom/helpshift/common/exception/NetworkException;

    aput-object v1, v0, v7

    sget-object v1, Lcom/helpshift/common/exception/NetworkException;->ENTITY_TOO_LARGE_RETRIES_EXHAUSTED:Lcom/helpshift/common/exception/NetworkException;

    aput-object v1, v0, v8

    sget-object v1, Lcom/helpshift/common/exception/NetworkException;->CONTENT_NOT_FOUND:Lcom/helpshift/common/exception/NetworkException;

    aput-object v1, v0, v9

    sget-object v1, Lcom/helpshift/common/exception/NetworkException;->UNSUPPORTED_ENCODING_EXCEPTION:Lcom/helpshift/common/exception/NetworkException;

    aput-object v1, v0, v10

    sget-object v1, Lcom/helpshift/common/exception/NetworkException;->UNABLE_TO_GENERATE_SIGNATURE:Lcom/helpshift/common/exception/NetworkException;

    aput-object v1, v0, v11

    sget-object v1, Lcom/helpshift/common/exception/NetworkException;->UNSUPPORTED_MIME_TYPE:Lcom/helpshift/common/exception/NetworkException;

    aput-object v1, v0, v12

    sget-object v1, Lcom/helpshift/common/exception/NetworkException;->NON_RETRIABLE:Lcom/helpshift/common/exception/NetworkException;

    aput-object v1, v0, v13

    sget-object v1, Lcom/helpshift/common/exception/NetworkException;->CONVERSATION_ARCHIVED:Lcom/helpshift/common/exception/NetworkException;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/common/exception/NetworkException;->CONVERSATION_REOPEN_EXPIRED:Lcom/helpshift/common/exception/NetworkException;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/common/exception/NetworkException;->CSAT_EXPIRED:Lcom/helpshift/common/exception/NetworkException;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/common/exception/NetworkException;->SCREENSHOT_UPLOAD_ERROR:Lcom/helpshift/common/exception/NetworkException;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/common/exception/NetworkException;->INVALID_AUTH_TOKEN:Lcom/helpshift/common/exception/NetworkException;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/common/exception/NetworkException;->AUTH_TOKEN_NOT_PROVIDED:Lcom/helpshift/common/exception/NetworkException;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/common/exception/NetworkException;->USER_PRE_CONDITION_FAILED:Lcom/helpshift/common/exception/NetworkException;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/common/exception/NetworkException;->USER_NOT_FOUND:Lcom/helpshift/common/exception/NetworkException;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/common/exception/NetworkException;->CONTENT_UNCHANGED:Lcom/helpshift/common/exception/NetworkException;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sput-object v0, Lcom/helpshift/common/exception/NetworkException;->$VALUES:[Lcom/helpshift/common/exception/NetworkException;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/helpshift/common/exception/NetworkException;
    .registers 2

    .line 3
    const-class v0, Lcom/helpshift/common/exception/NetworkException;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/helpshift/common/exception/NetworkException;

    return-object p0
.end method

.method public static values()[Lcom/helpshift/common/exception/NetworkException;
    .registers 1

    .line 3
    sget-object v0, Lcom/helpshift/common/exception/NetworkException;->$VALUES:[Lcom/helpshift/common/exception/NetworkException;

    invoke-virtual {v0}, [Lcom/helpshift/common/exception/NetworkException;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/helpshift/common/exception/NetworkException;

    return-object v0
.end method
