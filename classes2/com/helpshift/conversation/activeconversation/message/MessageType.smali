.class public final enum Lcom/helpshift/conversation/activeconversation/message/MessageType;
.super Ljava/lang/Enum;
.source "MessageType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/helpshift/conversation/activeconversation/message/MessageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/helpshift/conversation/activeconversation/message/MessageType;

.field public static final enum ACCEPTED_APP_REVIEW:Lcom/helpshift/conversation/activeconversation/message/MessageType;

.field public static final enum ADMIN_ACTION_CARD:Lcom/helpshift/conversation/activeconversation/message/MessageType;

.field public static final enum ADMIN_ATTACHMENT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

.field public static final enum ADMIN_BOT_CONTROL:Lcom/helpshift/conversation/activeconversation/message/MessageType;

.field public static final enum ADMIN_IMAGE_ATTACHMENT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

.field public static final enum ADMIN_TEXT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

.field public static final enum ADMIN_TEXT_WITH_OPTION_INPUT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

.field public static final enum ADMIN_TEXT_WITH_TEXT_INPUT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

.field public static final enum CONFIRMATION_ACCEPTED:Lcom/helpshift/conversation/activeconversation/message/MessageType;

.field public static final enum CONFIRMATION_REJECTED:Lcom/helpshift/conversation/activeconversation/message/MessageType;

.field public static final enum FAQ_LIST:Lcom/helpshift/conversation/activeconversation/message/MessageType;

.field public static final enum FAQ_LIST_WITH_OPTION_INPUT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

.field public static final enum FOLLOWUP_ACCEPTED:Lcom/helpshift/conversation/activeconversation/message/MessageType;

.field public static final enum FOLLOWUP_REJECTED:Lcom/helpshift/conversation/activeconversation/message/MessageType;

.field public static final enum OPTION_INPUT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

.field public static final enum REQUESTED_APP_REVIEW:Lcom/helpshift/conversation/activeconversation/message/MessageType;

.field public static final enum REQUESTED_SCREENSHOT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

.field public static final enum REQUEST_FOR_REOPEN:Lcom/helpshift/conversation/activeconversation/message/MessageType;

.field public static final enum SCREENSHOT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

.field public static final enum SYSTEM_CONVERSATION_REDACTED:Lcom/helpshift/conversation/activeconversation/message/MessageType;

.field public static final enum SYSTEM_DATE:Lcom/helpshift/conversation/activeconversation/message/MessageType;

.field public static final enum SYSTEM_DIVIDER:Lcom/helpshift/conversation/activeconversation/message/MessageType;

.field public static final enum SYSTEM_PUBLISH_ID:Lcom/helpshift/conversation/activeconversation/message/MessageType;

.field public static final enum UNSUPPORTED_ADMIN_MESSAGE_WITH_INPUT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

.field public static final enum USER_ATTACHMENT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

.field public static final enum USER_BOT_CONTROL:Lcom/helpshift/conversation/activeconversation/message/MessageType;

.field public static final enum USER_RESP_FOR_OPTION_INPUT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

.field public static final enum USER_RESP_FOR_TEXT_INPUT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

.field public static final enum USER_SMART_INTENT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

.field public static final enum USER_TEXT:Lcom/helpshift/conversation/activeconversation/message/MessageType;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 5
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/MessageType;

    const/4 v1, 0x0

    const-string v2, "USER_TEXT"

    const-string v3, "mobile_text"

    invoke-direct {v0, v2, v1, v3}, Lcom/helpshift/conversation/activeconversation/message/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/helpshift/conversation/activeconversation/message/MessageType;->USER_TEXT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    .line 6
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/MessageType;

    const/4 v2, 0x1

    const-string v3, "ADMIN_TEXT"

    const-string v4, "admin_text"

    invoke-direct {v0, v3, v2, v4}, Lcom/helpshift/conversation/activeconversation/message/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/helpshift/conversation/activeconversation/message/MessageType;->ADMIN_TEXT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    .line 7
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/MessageType;

    const/4 v3, 0x2

    const-string v4, "ACCEPTED_APP_REVIEW"

    const-string v5, "accepted_app_review"

    invoke-direct {v0, v4, v3, v5}, Lcom/helpshift/conversation/activeconversation/message/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/helpshift/conversation/activeconversation/message/MessageType;->ACCEPTED_APP_REVIEW:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    .line 8
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/MessageType;

    const/4 v4, 0x3

    const-string v5, "REQUESTED_APP_REVIEW"

    const-string v6, "request_app_review"

    invoke-direct {v0, v5, v4, v6}, Lcom/helpshift/conversation/activeconversation/message/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/helpshift/conversation/activeconversation/message/MessageType;->REQUESTED_APP_REVIEW:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    .line 9
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/MessageType;

    const/4 v5, 0x4

    const-string v6, "FOLLOWUP_ACCEPTED"

    const-string v7, "followup_accepted"

    invoke-direct {v0, v6, v5, v7}, Lcom/helpshift/conversation/activeconversation/message/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/helpshift/conversation/activeconversation/message/MessageType;->FOLLOWUP_ACCEPTED:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    .line 10
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/MessageType;

    const/4 v6, 0x5

    const-string v7, "FOLLOWUP_REJECTED"

    const-string v8, "followup_rejected"

    invoke-direct {v0, v7, v6, v8}, Lcom/helpshift/conversation/activeconversation/message/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/helpshift/conversation/activeconversation/message/MessageType;->FOLLOWUP_REJECTED:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    .line 11
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/MessageType;

    const/4 v7, 0x6

    const-string v8, "CONFIRMATION_ACCEPTED"

    const-string v9, "confirmation_accepted"

    invoke-direct {v0, v8, v7, v9}, Lcom/helpshift/conversation/activeconversation/message/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/helpshift/conversation/activeconversation/message/MessageType;->CONFIRMATION_ACCEPTED:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    .line 12
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/MessageType;

    const/4 v8, 0x7

    const-string v9, "CONFIRMATION_REJECTED"

    const-string v10, "confirmation_rejected"

    invoke-direct {v0, v9, v8, v10}, Lcom/helpshift/conversation/activeconversation/message/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/helpshift/conversation/activeconversation/message/MessageType;->CONFIRMATION_REJECTED:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    .line 13
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/MessageType;

    const/16 v9, 0x8

    const-string v10, "SCREENSHOT"

    const-string v11, "screenshot"

    invoke-direct {v0, v10, v9, v11}, Lcom/helpshift/conversation/activeconversation/message/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/helpshift/conversation/activeconversation/message/MessageType;->SCREENSHOT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    .line 14
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/MessageType;

    const/16 v10, 0x9

    const-string v11, "REQUESTED_SCREENSHOT"

    const-string v12, "request_screenshot"

    invoke-direct {v0, v11, v10, v12}, Lcom/helpshift/conversation/activeconversation/message/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/helpshift/conversation/activeconversation/message/MessageType;->REQUESTED_SCREENSHOT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    .line 15
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/MessageType;

    const/16 v11, 0xa

    const-string v12, "ADMIN_ATTACHMENT"

    const-string v13, "admin_attachment"

    invoke-direct {v0, v12, v11, v13}, Lcom/helpshift/conversation/activeconversation/message/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/helpshift/conversation/activeconversation/message/MessageType;->ADMIN_ATTACHMENT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    .line 16
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/MessageType;

    const/16 v12, 0xb

    const-string v13, "ADMIN_IMAGE_ATTACHMENT"

    const-string v14, "admin_image_attachment"

    invoke-direct {v0, v13, v12, v14}, Lcom/helpshift/conversation/activeconversation/message/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/helpshift/conversation/activeconversation/message/MessageType;->ADMIN_IMAGE_ATTACHMENT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    .line 17
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/MessageType;

    const/16 v13, 0xc

    const-string v14, "REQUEST_FOR_REOPEN"

    const-string v15, "request_for_reopen"

    invoke-direct {v0, v14, v13, v15}, Lcom/helpshift/conversation/activeconversation/message/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/helpshift/conversation/activeconversation/message/MessageType;->REQUEST_FOR_REOPEN:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    .line 18
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/MessageType;

    const/16 v14, 0xd

    const-string v15, "ADMIN_TEXT_WITH_TEXT_INPUT"

    const-string v13, "admin_text_with_text_input"

    invoke-direct {v0, v15, v14, v13}, Lcom/helpshift/conversation/activeconversation/message/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/helpshift/conversation/activeconversation/message/MessageType;->ADMIN_TEXT_WITH_TEXT_INPUT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    .line 19
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/MessageType;

    const/16 v13, 0xe

    const-string v15, "ADMIN_TEXT_WITH_OPTION_INPUT"

    const-string v14, "admin_text_with_option_input"

    invoke-direct {v0, v15, v13, v14}, Lcom/helpshift/conversation/activeconversation/message/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/helpshift/conversation/activeconversation/message/MessageType;->ADMIN_TEXT_WITH_OPTION_INPUT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    .line 20
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/MessageType;

    const-string v14, "FAQ_LIST"

    const/16 v15, 0xf

    const-string v13, "faq_list"

    invoke-direct {v0, v14, v15, v13}, Lcom/helpshift/conversation/activeconversation/message/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/helpshift/conversation/activeconversation/message/MessageType;->FAQ_LIST:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    .line 21
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/MessageType;

    const-string v13, "FAQ_LIST_WITH_OPTION_INPUT"

    const/16 v14, 0x10

    const-string v15, "faq_list_with_option_input"

    invoke-direct {v0, v13, v14, v15}, Lcom/helpshift/conversation/activeconversation/message/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/helpshift/conversation/activeconversation/message/MessageType;->FAQ_LIST_WITH_OPTION_INPUT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    .line 22
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/MessageType;

    const-string v13, "OPTION_INPUT"

    const/16 v14, 0x11

    const-string v15, "option_input"

    invoke-direct {v0, v13, v14, v15}, Lcom/helpshift/conversation/activeconversation/message/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/helpshift/conversation/activeconversation/message/MessageType;->OPTION_INPUT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    .line 23
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/MessageType;

    const-string v13, "UNSUPPORTED_ADMIN_MESSAGE_WITH_INPUT"

    const/16 v14, 0x12

    const-string v15, "unsupported_admin_message_with_input"

    invoke-direct {v0, v13, v14, v15}, Lcom/helpshift/conversation/activeconversation/message/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/helpshift/conversation/activeconversation/message/MessageType;->UNSUPPORTED_ADMIN_MESSAGE_WITH_INPUT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    .line 24
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/MessageType;

    const-string v13, "ADMIN_BOT_CONTROL"

    const/16 v14, 0x13

    const-string v15, "admin_bot_control"

    invoke-direct {v0, v13, v14, v15}, Lcom/helpshift/conversation/activeconversation/message/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/helpshift/conversation/activeconversation/message/MessageType;->ADMIN_BOT_CONTROL:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    .line 25
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/MessageType;

    const-string v13, "USER_BOT_CONTROL"

    const/16 v14, 0x14

    const-string v15, "user_bot_control"

    invoke-direct {v0, v13, v14, v15}, Lcom/helpshift/conversation/activeconversation/message/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/helpshift/conversation/activeconversation/message/MessageType;->USER_BOT_CONTROL:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    .line 26
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/MessageType;

    const-string v13, "USER_RESP_FOR_TEXT_INPUT"

    const/16 v14, 0x15

    const-string v15, "mobile_response_for_text_input"

    invoke-direct {v0, v13, v14, v15}, Lcom/helpshift/conversation/activeconversation/message/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/helpshift/conversation/activeconversation/message/MessageType;->USER_RESP_FOR_TEXT_INPUT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    .line 27
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/MessageType;

    const-string v13, "USER_RESP_FOR_OPTION_INPUT"

    const/16 v14, 0x16

    const-string v15, "mobile_response_for_option_input"

    invoke-direct {v0, v13, v14, v15}, Lcom/helpshift/conversation/activeconversation/message/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/helpshift/conversation/activeconversation/message/MessageType;->USER_RESP_FOR_OPTION_INPUT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    .line 28
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/MessageType;

    const-string v13, "SYSTEM_DATE"

    const/16 v14, 0x17

    const-string v15, "system_date"

    invoke-direct {v0, v13, v14, v15}, Lcom/helpshift/conversation/activeconversation/message/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/helpshift/conversation/activeconversation/message/MessageType;->SYSTEM_DATE:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    .line 29
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/MessageType;

    const-string v13, "SYSTEM_DIVIDER"

    const/16 v14, 0x18

    const-string v15, "system_divider"

    invoke-direct {v0, v13, v14, v15}, Lcom/helpshift/conversation/activeconversation/message/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/helpshift/conversation/activeconversation/message/MessageType;->SYSTEM_DIVIDER:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    .line 30
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/MessageType;

    const-string v13, "SYSTEM_PUBLISH_ID"

    const/16 v14, 0x19

    const-string v15, "system_publish_id"

    invoke-direct {v0, v13, v14, v15}, Lcom/helpshift/conversation/activeconversation/message/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/helpshift/conversation/activeconversation/message/MessageType;->SYSTEM_PUBLISH_ID:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    .line 31
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/MessageType;

    const-string v13, "SYSTEM_CONVERSATION_REDACTED"

    const/16 v14, 0x1a

    const-string v15, "system_conv_redacted"

    invoke-direct {v0, v13, v14, v15}, Lcom/helpshift/conversation/activeconversation/message/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/helpshift/conversation/activeconversation/message/MessageType;->SYSTEM_CONVERSATION_REDACTED:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    .line 32
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/MessageType;

    const-string v13, "USER_ATTACHMENT"

    const/16 v14, 0x1b

    const-string v15, "user_attachment"

    invoke-direct {v0, v13, v14, v15}, Lcom/helpshift/conversation/activeconversation/message/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/helpshift/conversation/activeconversation/message/MessageType;->USER_ATTACHMENT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    .line 33
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/MessageType;

    const-string v13, "ADMIN_ACTION_CARD"

    const/16 v14, 0x1c

    const-string v15, "admin_action_card"

    invoke-direct {v0, v13, v14, v15}, Lcom/helpshift/conversation/activeconversation/message/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/helpshift/conversation/activeconversation/message/MessageType;->ADMIN_ACTION_CARD:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    .line 34
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/MessageType;

    const-string v13, "USER_SMART_INTENT"

    const/16 v14, 0x1d

    const-string v15, "user_smart_intent"

    invoke-direct {v0, v13, v14, v15}, Lcom/helpshift/conversation/activeconversation/message/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/helpshift/conversation/activeconversation/message/MessageType;->USER_SMART_INTENT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    const/16 v0, 0x1e

    .line 3
    new-array v0, v0, [Lcom/helpshift/conversation/activeconversation/message/MessageType;

    sget-object v13, Lcom/helpshift/conversation/activeconversation/message/MessageType;->USER_TEXT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    aput-object v13, v0, v1

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/MessageType;->ADMIN_TEXT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/MessageType;->ACCEPTED_APP_REVIEW:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/MessageType;->REQUESTED_APP_REVIEW:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/MessageType;->FOLLOWUP_ACCEPTED:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/MessageType;->FOLLOWUP_REJECTED:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/MessageType;->CONFIRMATION_ACCEPTED:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/MessageType;->CONFIRMATION_REJECTED:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/MessageType;->SCREENSHOT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/MessageType;->REQUESTED_SCREENSHOT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/MessageType;->ADMIN_ATTACHMENT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/MessageType;->ADMIN_IMAGE_ATTACHMENT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/MessageType;->REQUEST_FOR_REOPEN:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/MessageType;->ADMIN_TEXT_WITH_TEXT_INPUT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/MessageType;->ADMIN_TEXT_WITH_OPTION_INPUT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/MessageType;->FAQ_LIST:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/MessageType;->FAQ_LIST_WITH_OPTION_INPUT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/MessageType;->OPTION_INPUT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/MessageType;->UNSUPPORTED_ADMIN_MESSAGE_WITH_INPUT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/MessageType;->ADMIN_BOT_CONTROL:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/MessageType;->USER_BOT_CONTROL:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/MessageType;->USER_RESP_FOR_TEXT_INPUT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/MessageType;->USER_RESP_FOR_OPTION_INPUT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/MessageType;->SYSTEM_DATE:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/MessageType;->SYSTEM_DIVIDER:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/MessageType;->SYSTEM_PUBLISH_ID:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/MessageType;->SYSTEM_CONVERSATION_REDACTED:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/MessageType;->USER_ATTACHMENT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/MessageType;->ADMIN_ACTION_CARD:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/MessageType;->USER_SMART_INTENT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sput-object v0, Lcom/helpshift/conversation/activeconversation/message/MessageType;->$VALUES:[Lcom/helpshift/conversation/activeconversation/message/MessageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput-object p3, p0, Lcom/helpshift/conversation/activeconversation/message/MessageType;->value:Ljava/lang/String;

    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/helpshift/conversation/activeconversation/message/MessageType;
    .registers 6

    .line 43
    invoke-static {}, Lcom/helpshift/conversation/activeconversation/message/MessageType;->values()[Lcom/helpshift/conversation/activeconversation/message/MessageType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_18

    aget-object v3, v0, v2

    .line 44
    invoke-virtual {v3}, Lcom/helpshift/conversation/activeconversation/message/MessageType;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    return-object v3

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_18
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/helpshift/conversation/activeconversation/message/MessageType;
    .registers 2

    .line 3
    const-class v0, Lcom/helpshift/conversation/activeconversation/message/MessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/helpshift/conversation/activeconversation/message/MessageType;

    return-object p0
.end method

.method public static values()[Lcom/helpshift/conversation/activeconversation/message/MessageType;
    .registers 1

    .line 3
    sget-object v0, Lcom/helpshift/conversation/activeconversation/message/MessageType;->$VALUES:[Lcom/helpshift/conversation/activeconversation/message/MessageType;

    invoke-virtual {v0}, [Lcom/helpshift/conversation/activeconversation/message/MessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/helpshift/conversation/activeconversation/message/MessageType;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/message/MessageType;->value:Ljava/lang/String;

    return-object v0
.end method
