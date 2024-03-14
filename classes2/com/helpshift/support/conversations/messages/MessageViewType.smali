.class public final enum Lcom/helpshift/support/conversations/messages/MessageViewType;
.super Ljava/lang/Enum;
.source "MessageViewType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/helpshift/support/conversations/messages/MessageViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/helpshift/support/conversations/messages/MessageViewType;

.field public static final enum ACTION_CARD_MESSAGE:Lcom/helpshift/support/conversations/messages/MessageViewType;

.field public static final enum ADMIN_ATTACHMENT_GENERIC:Lcom/helpshift/support/conversations/messages/MessageViewType;

.field public static final enum ADMIN_ATTACHMENT_IMAGE:Lcom/helpshift/support/conversations/messages/MessageViewType;

.field public static final enum ADMIN_REDACTED_MESSAGE:Lcom/helpshift/support/conversations/messages/MessageViewType;

.field public static final enum ADMIN_REQUEST_ATTACHMENT:Lcom/helpshift/support/conversations/messages/MessageViewType;

.field public static final enum ADMIN_SUGGESTIONS_LIST:Lcom/helpshift/support/conversations/messages/MessageViewType;

.field public static final enum ADMIN_TEXT_MESSAGE:Lcom/helpshift/support/conversations/messages/MessageViewType;

.field public static final enum AGENT_TYPING_FOOTER:Lcom/helpshift/support/conversations/messages/MessageViewType;

.field public static final enum CONFIRMATION_REJECTED:Lcom/helpshift/support/conversations/messages/MessageViewType;

.field public static final enum CONVERSATION_FOOTER:Lcom/helpshift/support/conversations/messages/MessageViewType;

.field public static final enum HISTORY_LOADING_VIEW:Lcom/helpshift/support/conversations/messages/MessageViewType;

.field public static final enum REQUESTED_APP_REVIEW:Lcom/helpshift/support/conversations/messages/MessageViewType;

.field public static final enum REQUEST_FOR_REOPEN:Lcom/helpshift/support/conversations/messages/MessageViewType;

.field public static final enum SYSTEM_CONVERSATION_REDACTED_MESSAGE:Lcom/helpshift/support/conversations/messages/MessageViewType;

.field public static final enum SYSTEM_DATE:Lcom/helpshift/support/conversations/messages/MessageViewType;

.field public static final enum SYSTEM_DIVIDER:Lcom/helpshift/support/conversations/messages/MessageViewType;

.field public static final enum SYSTEM_PUBLISH_ID:Lcom/helpshift/support/conversations/messages/MessageViewType;

.field public static final enum USER_ATTACHMENT_GENERIC:Lcom/helpshift/support/conversations/messages/MessageViewType;

.field public static final enum USER_REDACTED_MESSAGE:Lcom/helpshift/support/conversations/messages/MessageViewType;

.field public static final enum USER_SCREENSHOT_ATTACHMENT:Lcom/helpshift/support/conversations/messages/MessageViewType;

.field public static final enum USER_SELECTABLE_OPTION:Lcom/helpshift/support/conversations/messages/MessageViewType;

.field public static final enum USER_SMART_INTENT_MESSAGE:Lcom/helpshift/support/conversations/messages/MessageViewType;

.field public static final enum USER_TEXT_MESSAGE:Lcom/helpshift/support/conversations/messages/MessageViewType;


# instance fields
.field public final key:I


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 4
    new-instance v0, Lcom/helpshift/support/conversations/messages/MessageViewType;

    const/4 v1, 0x0

    const/16 v2, 0xa

    const-string v3, "USER_TEXT_MESSAGE"

    invoke-direct {v0, v3, v1, v2}, Lcom/helpshift/support/conversations/messages/MessageViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/helpshift/support/conversations/messages/MessageViewType;->USER_TEXT_MESSAGE:Lcom/helpshift/support/conversations/messages/MessageViewType;

    .line 5
    new-instance v0, Lcom/helpshift/support/conversations/messages/MessageViewType;

    const/4 v3, 0x1

    const/16 v4, 0x14

    const-string v5, "ADMIN_TEXT_MESSAGE"

    invoke-direct {v0, v5, v3, v4}, Lcom/helpshift/support/conversations/messages/MessageViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/helpshift/support/conversations/messages/MessageViewType;->ADMIN_TEXT_MESSAGE:Lcom/helpshift/support/conversations/messages/MessageViewType;

    .line 6
    new-instance v0, Lcom/helpshift/support/conversations/messages/MessageViewType;

    const/4 v5, 0x2

    const-string v6, "USER_SCREENSHOT_ATTACHMENT"

    const/16 v7, 0x1e

    invoke-direct {v0, v6, v5, v7}, Lcom/helpshift/support/conversations/messages/MessageViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/helpshift/support/conversations/messages/MessageViewType;->USER_SCREENSHOT_ATTACHMENT:Lcom/helpshift/support/conversations/messages/MessageViewType;

    .line 7
    new-instance v0, Lcom/helpshift/support/conversations/messages/MessageViewType;

    const/4 v6, 0x3

    const-string v7, "ADMIN_ATTACHMENT_IMAGE"

    const/16 v8, 0x28

    invoke-direct {v0, v7, v6, v8}, Lcom/helpshift/support/conversations/messages/MessageViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/helpshift/support/conversations/messages/MessageViewType;->ADMIN_ATTACHMENT_IMAGE:Lcom/helpshift/support/conversations/messages/MessageViewType;

    .line 8
    new-instance v0, Lcom/helpshift/support/conversations/messages/MessageViewType;

    const/4 v7, 0x4

    const-string v8, "ADMIN_ATTACHMENT_GENERIC"

    const/16 v9, 0x32

    invoke-direct {v0, v8, v7, v9}, Lcom/helpshift/support/conversations/messages/MessageViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/helpshift/support/conversations/messages/MessageViewType;->ADMIN_ATTACHMENT_GENERIC:Lcom/helpshift/support/conversations/messages/MessageViewType;

    .line 9
    new-instance v0, Lcom/helpshift/support/conversations/messages/MessageViewType;

    const/4 v8, 0x5

    const-string v9, "ADMIN_REQUEST_ATTACHMENT"

    const/16 v10, 0x3c

    invoke-direct {v0, v9, v8, v10}, Lcom/helpshift/support/conversations/messages/MessageViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/helpshift/support/conversations/messages/MessageViewType;->ADMIN_REQUEST_ATTACHMENT:Lcom/helpshift/support/conversations/messages/MessageViewType;

    .line 10
    new-instance v0, Lcom/helpshift/support/conversations/messages/MessageViewType;

    const/4 v9, 0x6

    const-string v10, "REQUESTED_APP_REVIEW"

    const/16 v11, 0x46

    invoke-direct {v0, v10, v9, v11}, Lcom/helpshift/support/conversations/messages/MessageViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/helpshift/support/conversations/messages/MessageViewType;->REQUESTED_APP_REVIEW:Lcom/helpshift/support/conversations/messages/MessageViewType;

    .line 11
    new-instance v0, Lcom/helpshift/support/conversations/messages/MessageViewType;

    const/4 v10, 0x7

    const-string v11, "REQUEST_FOR_REOPEN"

    const/16 v12, 0x50

    invoke-direct {v0, v11, v10, v12}, Lcom/helpshift/support/conversations/messages/MessageViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/helpshift/support/conversations/messages/MessageViewType;->REQUEST_FOR_REOPEN:Lcom/helpshift/support/conversations/messages/MessageViewType;

    .line 12
    new-instance v0, Lcom/helpshift/support/conversations/messages/MessageViewType;

    const/16 v11, 0x8

    const-string v12, "CONFIRMATION_REJECTED"

    const/16 v13, 0x5a

    invoke-direct {v0, v12, v11, v13}, Lcom/helpshift/support/conversations/messages/MessageViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/helpshift/support/conversations/messages/MessageViewType;->CONFIRMATION_REJECTED:Lcom/helpshift/support/conversations/messages/MessageViewType;

    .line 13
    new-instance v0, Lcom/helpshift/support/conversations/messages/MessageViewType;

    const/16 v12, 0x9

    const-string v13, "CONVERSATION_FOOTER"

    const/16 v14, 0x64

    invoke-direct {v0, v13, v12, v14}, Lcom/helpshift/support/conversations/messages/MessageViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/helpshift/support/conversations/messages/MessageViewType;->CONVERSATION_FOOTER:Lcom/helpshift/support/conversations/messages/MessageViewType;

    .line 14
    new-instance v0, Lcom/helpshift/support/conversations/messages/MessageViewType;

    const-string v13, "AGENT_TYPING_FOOTER"

    const/16 v14, 0x6e

    invoke-direct {v0, v13, v2, v14}, Lcom/helpshift/support/conversations/messages/MessageViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/helpshift/support/conversations/messages/MessageViewType;->AGENT_TYPING_FOOTER:Lcom/helpshift/support/conversations/messages/MessageViewType;

    .line 15
    new-instance v0, Lcom/helpshift/support/conversations/messages/MessageViewType;

    const/16 v13, 0xb

    const-string v14, "SYSTEM_DATE"

    const/16 v15, 0x78

    invoke-direct {v0, v14, v13, v15}, Lcom/helpshift/support/conversations/messages/MessageViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/helpshift/support/conversations/messages/MessageViewType;->SYSTEM_DATE:Lcom/helpshift/support/conversations/messages/MessageViewType;

    .line 16
    new-instance v0, Lcom/helpshift/support/conversations/messages/MessageViewType;

    const/16 v14, 0xc

    const-string v15, "SYSTEM_DIVIDER"

    const/16 v13, 0x82

    invoke-direct {v0, v15, v14, v13}, Lcom/helpshift/support/conversations/messages/MessageViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/helpshift/support/conversations/messages/MessageViewType;->SYSTEM_DIVIDER:Lcom/helpshift/support/conversations/messages/MessageViewType;

    .line 17
    new-instance v0, Lcom/helpshift/support/conversations/messages/MessageViewType;

    const/16 v13, 0xd

    const-string v15, "USER_SELECTABLE_OPTION"

    const/16 v14, 0x8c

    invoke-direct {v0, v15, v13, v14}, Lcom/helpshift/support/conversations/messages/MessageViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/helpshift/support/conversations/messages/MessageViewType;->USER_SELECTABLE_OPTION:Lcom/helpshift/support/conversations/messages/MessageViewType;

    .line 18
    new-instance v0, Lcom/helpshift/support/conversations/messages/MessageViewType;

    const-string v14, "ADMIN_SUGGESTIONS_LIST"

    const/16 v15, 0xe

    const/16 v13, 0x96

    invoke-direct {v0, v14, v15, v13}, Lcom/helpshift/support/conversations/messages/MessageViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/helpshift/support/conversations/messages/MessageViewType;->ADMIN_SUGGESTIONS_LIST:Lcom/helpshift/support/conversations/messages/MessageViewType;

    .line 19
    new-instance v0, Lcom/helpshift/support/conversations/messages/MessageViewType;

    const-string v13, "SYSTEM_PUBLISH_ID"

    const/16 v14, 0xf

    const/16 v15, 0xa0

    invoke-direct {v0, v13, v14, v15}, Lcom/helpshift/support/conversations/messages/MessageViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/helpshift/support/conversations/messages/MessageViewType;->SYSTEM_PUBLISH_ID:Lcom/helpshift/support/conversations/messages/MessageViewType;

    .line 20
    new-instance v0, Lcom/helpshift/support/conversations/messages/MessageViewType;

    const-string v13, "SYSTEM_CONVERSATION_REDACTED_MESSAGE"

    const/16 v14, 0x10

    const/16 v15, 0xaa

    invoke-direct {v0, v13, v14, v15}, Lcom/helpshift/support/conversations/messages/MessageViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/helpshift/support/conversations/messages/MessageViewType;->SYSTEM_CONVERSATION_REDACTED_MESSAGE:Lcom/helpshift/support/conversations/messages/MessageViewType;

    .line 21
    new-instance v0, Lcom/helpshift/support/conversations/messages/MessageViewType;

    const-string v13, "HISTORY_LOADING_VIEW"

    const/16 v14, 0x11

    const/16 v15, 0xb4

    invoke-direct {v0, v13, v14, v15}, Lcom/helpshift/support/conversations/messages/MessageViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/helpshift/support/conversations/messages/MessageViewType;->HISTORY_LOADING_VIEW:Lcom/helpshift/support/conversations/messages/MessageViewType;

    .line 22
    new-instance v0, Lcom/helpshift/support/conversations/messages/MessageViewType;

    const-string v13, "ADMIN_REDACTED_MESSAGE"

    const/16 v14, 0x12

    const/16 v15, 0xbe

    invoke-direct {v0, v13, v14, v15}, Lcom/helpshift/support/conversations/messages/MessageViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/helpshift/support/conversations/messages/MessageViewType;->ADMIN_REDACTED_MESSAGE:Lcom/helpshift/support/conversations/messages/MessageViewType;

    .line 23
    new-instance v0, Lcom/helpshift/support/conversations/messages/MessageViewType;

    const-string v13, "USER_REDACTED_MESSAGE"

    const/16 v14, 0x13

    const/16 v15, 0xc8

    invoke-direct {v0, v13, v14, v15}, Lcom/helpshift/support/conversations/messages/MessageViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/helpshift/support/conversations/messages/MessageViewType;->USER_REDACTED_MESSAGE:Lcom/helpshift/support/conversations/messages/MessageViewType;

    .line 24
    new-instance v0, Lcom/helpshift/support/conversations/messages/MessageViewType;

    const-string v13, "USER_ATTACHMENT_GENERIC"

    const/16 v14, 0xd2

    invoke-direct {v0, v13, v4, v14}, Lcom/helpshift/support/conversations/messages/MessageViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/helpshift/support/conversations/messages/MessageViewType;->USER_ATTACHMENT_GENERIC:Lcom/helpshift/support/conversations/messages/MessageViewType;

    .line 25
    new-instance v0, Lcom/helpshift/support/conversations/messages/MessageViewType;

    const-string v13, "ACTION_CARD_MESSAGE"

    const/16 v14, 0x15

    const/16 v15, 0xdc

    invoke-direct {v0, v13, v14, v15}, Lcom/helpshift/support/conversations/messages/MessageViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/helpshift/support/conversations/messages/MessageViewType;->ACTION_CARD_MESSAGE:Lcom/helpshift/support/conversations/messages/MessageViewType;

    .line 26
    new-instance v0, Lcom/helpshift/support/conversations/messages/MessageViewType;

    const-string v13, "USER_SMART_INTENT_MESSAGE"

    const/16 v14, 0x16

    const/16 v15, 0xe6

    invoke-direct {v0, v13, v14, v15}, Lcom/helpshift/support/conversations/messages/MessageViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/helpshift/support/conversations/messages/MessageViewType;->USER_SMART_INTENT_MESSAGE:Lcom/helpshift/support/conversations/messages/MessageViewType;

    const/16 v0, 0x17

    .line 3
    new-array v0, v0, [Lcom/helpshift/support/conversations/messages/MessageViewType;

    sget-object v13, Lcom/helpshift/support/conversations/messages/MessageViewType;->USER_TEXT_MESSAGE:Lcom/helpshift/support/conversations/messages/MessageViewType;

    aput-object v13, v0, v1

    sget-object v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->ADMIN_TEXT_MESSAGE:Lcom/helpshift/support/conversations/messages/MessageViewType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->USER_SCREENSHOT_ATTACHMENT:Lcom/helpshift/support/conversations/messages/MessageViewType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->ADMIN_ATTACHMENT_IMAGE:Lcom/helpshift/support/conversations/messages/MessageViewType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->ADMIN_ATTACHMENT_GENERIC:Lcom/helpshift/support/conversations/messages/MessageViewType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->ADMIN_REQUEST_ATTACHMENT:Lcom/helpshift/support/conversations/messages/MessageViewType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->REQUESTED_APP_REVIEW:Lcom/helpshift/support/conversations/messages/MessageViewType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->REQUEST_FOR_REOPEN:Lcom/helpshift/support/conversations/messages/MessageViewType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->CONFIRMATION_REJECTED:Lcom/helpshift/support/conversations/messages/MessageViewType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->CONVERSATION_FOOTER:Lcom/helpshift/support/conversations/messages/MessageViewType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->AGENT_TYPING_FOOTER:Lcom/helpshift/support/conversations/messages/MessageViewType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->SYSTEM_DATE:Lcom/helpshift/support/conversations/messages/MessageViewType;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->SYSTEM_DIVIDER:Lcom/helpshift/support/conversations/messages/MessageViewType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->USER_SELECTABLE_OPTION:Lcom/helpshift/support/conversations/messages/MessageViewType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->ADMIN_SUGGESTIONS_LIST:Lcom/helpshift/support/conversations/messages/MessageViewType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->SYSTEM_PUBLISH_ID:Lcom/helpshift/support/conversations/messages/MessageViewType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->SYSTEM_CONVERSATION_REDACTED_MESSAGE:Lcom/helpshift/support/conversations/messages/MessageViewType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->HISTORY_LOADING_VIEW:Lcom/helpshift/support/conversations/messages/MessageViewType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->ADMIN_REDACTED_MESSAGE:Lcom/helpshift/support/conversations/messages/MessageViewType;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->USER_REDACTED_MESSAGE:Lcom/helpshift/support/conversations/messages/MessageViewType;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->USER_ATTACHMENT_GENERIC:Lcom/helpshift/support/conversations/messages/MessageViewType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->ACTION_CARD_MESSAGE:Lcom/helpshift/support/conversations/messages/MessageViewType;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->USER_SMART_INTENT_MESSAGE:Lcom/helpshift/support/conversations/messages/MessageViewType;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sput-object v0, Lcom/helpshift/support/conversations/messages/MessageViewType;->$VALUES:[Lcom/helpshift/support/conversations/messages/MessageViewType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput p3, p0, Lcom/helpshift/support/conversations/messages/MessageViewType;->key:I

    return-void
.end method

.method public static getEnum(I)Lcom/helpshift/support/conversations/messages/MessageViewType;
    .registers 6

    .line 35
    invoke-static {}, Lcom/helpshift/support/conversations/messages/MessageViewType;->values()[Lcom/helpshift/support/conversations/messages/MessageViewType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 36
    iget v4, v3, Lcom/helpshift/support/conversations/messages/MessageViewType;->key:I

    if-ne v4, p0, :cond_f

    return-object v3

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/helpshift/support/conversations/messages/MessageViewType;
    .registers 2

    .line 3
    const-class v0, Lcom/helpshift/support/conversations/messages/MessageViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/helpshift/support/conversations/messages/MessageViewType;

    return-object p0
.end method

.method public static values()[Lcom/helpshift/support/conversations/messages/MessageViewType;
    .registers 1

    .line 3
    sget-object v0, Lcom/helpshift/support/conversations/messages/MessageViewType;->$VALUES:[Lcom/helpshift/support/conversations/messages/MessageViewType;

    invoke-virtual {v0}, [Lcom/helpshift/support/conversations/messages/MessageViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/helpshift/support/conversations/messages/MessageViewType;

    return-object v0
.end method
