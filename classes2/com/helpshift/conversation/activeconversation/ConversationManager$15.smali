.class synthetic Lcom/helpshift/conversation/activeconversation/ConversationManager$15;
.super Ljava/lang/Object;
.source "ConversationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/conversation/activeconversation/ConversationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$helpshift$conversation$activeconversation$message$MessageType:[I

.field static final synthetic $SwitchMap$com$helpshift$conversation$dto$IssueState:[I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 800
    invoke-static {}, Lcom/helpshift/conversation/activeconversation/message/MessageType;->values()[Lcom/helpshift/conversation/activeconversation/message/MessageType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/helpshift/conversation/activeconversation/ConversationManager$15;->$SwitchMap$com$helpshift$conversation$activeconversation$message$MessageType:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Lcom/helpshift/conversation/activeconversation/ConversationManager$15;->$SwitchMap$com$helpshift$conversation$activeconversation$message$MessageType:[I

    sget-object v2, Lcom/helpshift/conversation/activeconversation/message/MessageType;->UNSUPPORTED_ADMIN_MESSAGE_WITH_INPUT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    invoke-virtual {v2}, Lcom/helpshift/conversation/activeconversation/message/MessageType;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_14} :catch_14

    :catch_14
    const/4 v1, 0x2

    :try_start_15
    sget-object v2, Lcom/helpshift/conversation/activeconversation/ConversationManager$15;->$SwitchMap$com$helpshift$conversation$activeconversation$message$MessageType:[I

    sget-object v3, Lcom/helpshift/conversation/activeconversation/message/MessageType;->ADMIN_TEXT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    invoke-virtual {v3}, Lcom/helpshift/conversation/activeconversation/message/MessageType;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1f} :catch_1f

    :catch_1f
    const/4 v2, 0x3

    :try_start_20
    sget-object v3, Lcom/helpshift/conversation/activeconversation/ConversationManager$15;->$SwitchMap$com$helpshift$conversation$activeconversation$message$MessageType:[I

    sget-object v4, Lcom/helpshift/conversation/activeconversation/message/MessageType;->ADMIN_TEXT_WITH_TEXT_INPUT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    invoke-virtual {v4}, Lcom/helpshift/conversation/activeconversation/message/MessageType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_2a} :catch_2a

    :catch_2a
    const/4 v3, 0x4

    :try_start_2b
    sget-object v4, Lcom/helpshift/conversation/activeconversation/ConversationManager$15;->$SwitchMap$com$helpshift$conversation$activeconversation$message$MessageType:[I

    sget-object v5, Lcom/helpshift/conversation/activeconversation/message/MessageType;->ADMIN_TEXT_WITH_OPTION_INPUT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    invoke-virtual {v5}, Lcom/helpshift/conversation/activeconversation/message/MessageType;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_35} :catch_35

    :catch_35
    const/4 v4, 0x5

    :try_start_36
    sget-object v5, Lcom/helpshift/conversation/activeconversation/ConversationManager$15;->$SwitchMap$com$helpshift$conversation$activeconversation$message$MessageType:[I

    sget-object v6, Lcom/helpshift/conversation/activeconversation/message/MessageType;->FAQ_LIST:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    invoke-virtual {v6}, Lcom/helpshift/conversation/activeconversation/message/MessageType;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_40} :catch_40

    :catch_40
    :try_start_40
    sget-object v5, Lcom/helpshift/conversation/activeconversation/ConversationManager$15;->$SwitchMap$com$helpshift$conversation$activeconversation$message$MessageType:[I

    sget-object v6, Lcom/helpshift/conversation/activeconversation/message/MessageType;->FAQ_LIST_WITH_OPTION_INPUT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    invoke-virtual {v6}, Lcom/helpshift/conversation/activeconversation/message/MessageType;->ordinal()I

    move-result v6

    const/4 v7, 0x6

    aput v7, v5, v6
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_4b

    :catch_4b
    :try_start_4b
    sget-object v5, Lcom/helpshift/conversation/activeconversation/ConversationManager$15;->$SwitchMap$com$helpshift$conversation$activeconversation$message$MessageType:[I

    sget-object v6, Lcom/helpshift/conversation/activeconversation/message/MessageType;->ADMIN_ATTACHMENT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    invoke-virtual {v6}, Lcom/helpshift/conversation/activeconversation/message/MessageType;->ordinal()I

    move-result v6

    const/4 v7, 0x7

    aput v7, v5, v6
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_56

    :catch_56
    :try_start_56
    sget-object v5, Lcom/helpshift/conversation/activeconversation/ConversationManager$15;->$SwitchMap$com$helpshift$conversation$activeconversation$message$MessageType:[I

    sget-object v6, Lcom/helpshift/conversation/activeconversation/message/MessageType;->ADMIN_IMAGE_ATTACHMENT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    invoke-virtual {v6}, Lcom/helpshift/conversation/activeconversation/message/MessageType;->ordinal()I

    move-result v6

    const/16 v7, 0x8

    aput v7, v5, v6
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_62

    :catch_62
    :try_start_62
    sget-object v5, Lcom/helpshift/conversation/activeconversation/ConversationManager$15;->$SwitchMap$com$helpshift$conversation$activeconversation$message$MessageType:[I

    sget-object v6, Lcom/helpshift/conversation/activeconversation/message/MessageType;->REQUEST_FOR_REOPEN:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    invoke-virtual {v6}, Lcom/helpshift/conversation/activeconversation/message/MessageType;->ordinal()I

    move-result v6

    const/16 v7, 0x9

    aput v7, v5, v6
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_6e

    :catch_6e
    :try_start_6e
    sget-object v5, Lcom/helpshift/conversation/activeconversation/ConversationManager$15;->$SwitchMap$com$helpshift$conversation$activeconversation$message$MessageType:[I

    sget-object v6, Lcom/helpshift/conversation/activeconversation/message/MessageType;->REQUESTED_SCREENSHOT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    invoke-virtual {v6}, Lcom/helpshift/conversation/activeconversation/message/MessageType;->ordinal()I

    move-result v6

    const/16 v7, 0xa

    aput v7, v5, v6
    :try_end_7a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_7a} :catch_7a

    :catch_7a
    :try_start_7a
    sget-object v5, Lcom/helpshift/conversation/activeconversation/ConversationManager$15;->$SwitchMap$com$helpshift$conversation$activeconversation$message$MessageType:[I

    sget-object v6, Lcom/helpshift/conversation/activeconversation/message/MessageType;->REQUESTED_APP_REVIEW:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    invoke-virtual {v6}, Lcom/helpshift/conversation/activeconversation/message/MessageType;->ordinal()I

    move-result v6

    const/16 v7, 0xb

    aput v7, v5, v6
    :try_end_86
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_86} :catch_86

    :catch_86
    :try_start_86
    sget-object v5, Lcom/helpshift/conversation/activeconversation/ConversationManager$15;->$SwitchMap$com$helpshift$conversation$activeconversation$message$MessageType:[I

    sget-object v6, Lcom/helpshift/conversation/activeconversation/message/MessageType;->ADMIN_ACTION_CARD:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    invoke-virtual {v6}, Lcom/helpshift/conversation/activeconversation/message/MessageType;->ordinal()I

    move-result v6

    const/16 v7, 0xc

    aput v7, v5, v6
    :try_end_92
    .catch Ljava/lang/NoSuchFieldError; {:try_start_86 .. :try_end_92} :catch_92

    .line 275
    :catch_92
    invoke-static {}, Lcom/helpshift/conversation/dto/IssueState;->values()[Lcom/helpshift/conversation/dto/IssueState;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/helpshift/conversation/activeconversation/ConversationManager$15;->$SwitchMap$com$helpshift$conversation$dto$IssueState:[I

    :try_start_9b
    sget-object v5, Lcom/helpshift/conversation/activeconversation/ConversationManager$15;->$SwitchMap$com$helpshift$conversation$dto$IssueState:[I

    sget-object v6, Lcom/helpshift/conversation/dto/IssueState;->ARCHIVED:Lcom/helpshift/conversation/dto/IssueState;

    invoke-virtual {v6}, Lcom/helpshift/conversation/dto/IssueState;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_a5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9b .. :try_end_a5} :catch_a5

    :catch_a5
    :try_start_a5
    sget-object v0, Lcom/helpshift/conversation/activeconversation/ConversationManager$15;->$SwitchMap$com$helpshift$conversation$dto$IssueState:[I

    sget-object v5, Lcom/helpshift/conversation/dto/IssueState;->RESOLUTION_ACCEPTED:Lcom/helpshift/conversation/dto/IssueState;

    invoke-virtual {v5}, Lcom/helpshift/conversation/dto/IssueState;->ordinal()I

    move-result v5

    aput v1, v0, v5
    :try_end_af
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a5 .. :try_end_af} :catch_af

    :catch_af
    :try_start_af
    sget-object v0, Lcom/helpshift/conversation/activeconversation/ConversationManager$15;->$SwitchMap$com$helpshift$conversation$dto$IssueState:[I

    sget-object v1, Lcom/helpshift/conversation/dto/IssueState;->REJECTED:Lcom/helpshift/conversation/dto/IssueState;

    invoke-virtual {v1}, Lcom/helpshift/conversation/dto/IssueState;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_b9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_af .. :try_end_b9} :catch_b9

    :catch_b9
    :try_start_b9
    sget-object v0, Lcom/helpshift/conversation/activeconversation/ConversationManager$15;->$SwitchMap$com$helpshift$conversation$dto$IssueState:[I

    sget-object v1, Lcom/helpshift/conversation/dto/IssueState;->RESOLUTION_REQUESTED:Lcom/helpshift/conversation/dto/IssueState;

    invoke-virtual {v1}, Lcom/helpshift/conversation/dto/IssueState;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_c3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b9 .. :try_end_c3} :catch_c3

    :catch_c3
    :try_start_c3
    sget-object v0, Lcom/helpshift/conversation/activeconversation/ConversationManager$15;->$SwitchMap$com$helpshift$conversation$dto$IssueState:[I

    sget-object v1, Lcom/helpshift/conversation/dto/IssueState;->COMPLETED_ISSUE_CREATED:Lcom/helpshift/conversation/dto/IssueState;

    invoke-virtual {v1}, Lcom/helpshift/conversation/dto/IssueState;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_cd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c3 .. :try_end_cd} :catch_cd

    :catch_cd
    return-void
.end method
