.class synthetic Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter$1;
.super Ljava/lang/Object;
.source "MessageViewTypeConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$helpshift$support$conversations$messages$MessageViewType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 145
    invoke-static {}, Lcom/helpshift/support/conversations/messages/MessageViewType;->values()[Lcom/helpshift/support/conversations/messages/MessageViewType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter$1;->$SwitchMap$com$helpshift$support$conversations$messages$MessageViewType:[I

    :try_start_9
    sget-object v0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter$1;->$SwitchMap$com$helpshift$support$conversations$messages$MessageViewType:[I

    sget-object v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->ADMIN_TEXT_MESSAGE:Lcom/helpshift/support/conversations/messages/MessageViewType;

    invoke-virtual {v1}, Lcom/helpshift/support/conversations/messages/MessageViewType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter$1;->$SwitchMap$com$helpshift$support$conversations$messages$MessageViewType:[I

    sget-object v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->USER_TEXT_MESSAGE:Lcom/helpshift/support/conversations/messages/MessageViewType;

    invoke-virtual {v1}, Lcom/helpshift/support/conversations/messages/MessageViewType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_1f
    sget-object v0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter$1;->$SwitchMap$com$helpshift$support$conversations$messages$MessageViewType:[I

    sget-object v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->USER_SCREENSHOT_ATTACHMENT:Lcom/helpshift/support/conversations/messages/MessageViewType;

    invoke-virtual {v1}, Lcom/helpshift/support/conversations/messages/MessageViewType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2a

    :catch_2a
    :try_start_2a
    sget-object v0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter$1;->$SwitchMap$com$helpshift$support$conversations$messages$MessageViewType:[I

    sget-object v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->ADMIN_ATTACHMENT_IMAGE:Lcom/helpshift/support/conversations/messages/MessageViewType;

    invoke-virtual {v1}, Lcom/helpshift/support/conversations/messages/MessageViewType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_35

    :catch_35
    :try_start_35
    sget-object v0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter$1;->$SwitchMap$com$helpshift$support$conversations$messages$MessageViewType:[I

    sget-object v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->ADMIN_ATTACHMENT_GENERIC:Lcom/helpshift/support/conversations/messages/MessageViewType;

    invoke-virtual {v1}, Lcom/helpshift/support/conversations/messages/MessageViewType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_40

    :catch_40
    :try_start_40
    sget-object v0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter$1;->$SwitchMap$com$helpshift$support$conversations$messages$MessageViewType:[I

    sget-object v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->REQUESTED_APP_REVIEW:Lcom/helpshift/support/conversations/messages/MessageViewType;

    invoke-virtual {v1}, Lcom/helpshift/support/conversations/messages/MessageViewType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_4b

    :catch_4b
    :try_start_4b
    sget-object v0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter$1;->$SwitchMap$com$helpshift$support$conversations$messages$MessageViewType:[I

    sget-object v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->CONFIRMATION_REJECTED:Lcom/helpshift/support/conversations/messages/MessageViewType;

    invoke-virtual {v1}, Lcom/helpshift/support/conversations/messages/MessageViewType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_56

    :catch_56
    :try_start_56
    sget-object v0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter$1;->$SwitchMap$com$helpshift$support$conversations$messages$MessageViewType:[I

    sget-object v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->ADMIN_REQUEST_ATTACHMENT:Lcom/helpshift/support/conversations/messages/MessageViewType;

    invoke-virtual {v1}, Lcom/helpshift/support/conversations/messages/MessageViewType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_62

    :catch_62
    :try_start_62
    sget-object v0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter$1;->$SwitchMap$com$helpshift$support$conversations$messages$MessageViewType:[I

    sget-object v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->REQUEST_FOR_REOPEN:Lcom/helpshift/support/conversations/messages/MessageViewType;

    invoke-virtual {v1}, Lcom/helpshift/support/conversations/messages/MessageViewType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_6e

    :catch_6e
    :try_start_6e
    sget-object v0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter$1;->$SwitchMap$com$helpshift$support$conversations$messages$MessageViewType:[I

    sget-object v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->ADMIN_SUGGESTIONS_LIST:Lcom/helpshift/support/conversations/messages/MessageViewType;

    invoke-virtual {v1}, Lcom/helpshift/support/conversations/messages/MessageViewType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_7a} :catch_7a

    :catch_7a
    :try_start_7a
    sget-object v0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter$1;->$SwitchMap$com$helpshift$support$conversations$messages$MessageViewType:[I

    sget-object v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->USER_SELECTABLE_OPTION:Lcom/helpshift/support/conversations/messages/MessageViewType;

    invoke-virtual {v1}, Lcom/helpshift/support/conversations/messages/MessageViewType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_86
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_86} :catch_86

    :catch_86
    :try_start_86
    sget-object v0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter$1;->$SwitchMap$com$helpshift$support$conversations$messages$MessageViewType:[I

    sget-object v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->SYSTEM_DATE:Lcom/helpshift/support/conversations/messages/MessageViewType;

    invoke-virtual {v1}, Lcom/helpshift/support/conversations/messages/MessageViewType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_92
    .catch Ljava/lang/NoSuchFieldError; {:try_start_86 .. :try_end_92} :catch_92

    :catch_92
    :try_start_92
    sget-object v0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter$1;->$SwitchMap$com$helpshift$support$conversations$messages$MessageViewType:[I

    sget-object v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->SYSTEM_DIVIDER:Lcom/helpshift/support/conversations/messages/MessageViewType;

    invoke-virtual {v1}, Lcom/helpshift/support/conversations/messages/MessageViewType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_9e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_92 .. :try_end_9e} :catch_9e

    :catch_9e
    :try_start_9e
    sget-object v0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter$1;->$SwitchMap$com$helpshift$support$conversations$messages$MessageViewType:[I

    sget-object v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->SYSTEM_PUBLISH_ID:Lcom/helpshift/support/conversations/messages/MessageViewType;

    invoke-virtual {v1}, Lcom/helpshift/support/conversations/messages/MessageViewType;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9e .. :try_end_aa} :catch_aa

    :catch_aa
    :try_start_aa
    sget-object v0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter$1;->$SwitchMap$com$helpshift$support$conversations$messages$MessageViewType:[I

    sget-object v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->ADMIN_REDACTED_MESSAGE:Lcom/helpshift/support/conversations/messages/MessageViewType;

    invoke-virtual {v1}, Lcom/helpshift/support/conversations/messages/MessageViewType;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aa .. :try_end_b6} :catch_b6

    :catch_b6
    :try_start_b6
    sget-object v0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter$1;->$SwitchMap$com$helpshift$support$conversations$messages$MessageViewType:[I

    sget-object v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->USER_REDACTED_MESSAGE:Lcom/helpshift/support/conversations/messages/MessageViewType;

    invoke-virtual {v1}, Lcom/helpshift/support/conversations/messages/MessageViewType;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_c2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b6 .. :try_end_c2} :catch_c2

    :catch_c2
    :try_start_c2
    sget-object v0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter$1;->$SwitchMap$com$helpshift$support$conversations$messages$MessageViewType:[I

    sget-object v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->SYSTEM_CONVERSATION_REDACTED_MESSAGE:Lcom/helpshift/support/conversations/messages/MessageViewType;

    invoke-virtual {v1}, Lcom/helpshift/support/conversations/messages/MessageViewType;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_ce
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c2 .. :try_end_ce} :catch_ce

    :catch_ce
    :try_start_ce
    sget-object v0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter$1;->$SwitchMap$com$helpshift$support$conversations$messages$MessageViewType:[I

    sget-object v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->USER_ATTACHMENT_GENERIC:Lcom/helpshift/support/conversations/messages/MessageViewType;

    invoke-virtual {v1}, Lcom/helpshift/support/conversations/messages/MessageViewType;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_da
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ce .. :try_end_da} :catch_da

    :catch_da
    :try_start_da
    sget-object v0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter$1;->$SwitchMap$com$helpshift$support$conversations$messages$MessageViewType:[I

    sget-object v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->ACTION_CARD_MESSAGE:Lcom/helpshift/support/conversations/messages/MessageViewType;

    invoke-virtual {v1}, Lcom/helpshift/support/conversations/messages/MessageViewType;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_e6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_da .. :try_end_e6} :catch_e6

    :catch_e6
    :try_start_e6
    sget-object v0, Lcom/helpshift/support/conversations/messages/MessageViewTypeConverter$1;->$SwitchMap$com$helpshift$support$conversations$messages$MessageViewType:[I

    sget-object v1, Lcom/helpshift/support/conversations/messages/MessageViewType;->USER_SMART_INTENT_MESSAGE:Lcom/helpshift/support/conversations/messages/MessageViewType;

    invoke-virtual {v1}, Lcom/helpshift/support/conversations/messages/MessageViewType;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_f2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e6 .. :try_end_f2} :catch_f2

    :catch_f2
    return-void
.end method
