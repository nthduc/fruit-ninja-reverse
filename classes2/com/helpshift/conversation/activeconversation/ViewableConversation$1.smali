.class synthetic Lcom/helpshift/conversation/activeconversation/ViewableConversation$1;
.super Ljava/lang/Object;
.source "ViewableConversation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/conversation/activeconversation/ViewableConversation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$helpshift$conversation$activeconversation$message$MessageType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 114
    invoke-static {}, Lcom/helpshift/conversation/activeconversation/message/MessageType;->values()[Lcom/helpshift/conversation/activeconversation/message/MessageType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/helpshift/conversation/activeconversation/ViewableConversation$1;->$SwitchMap$com$helpshift$conversation$activeconversation$message$MessageType:[I

    :try_start_9
    sget-object v0, Lcom/helpshift/conversation/activeconversation/ViewableConversation$1;->$SwitchMap$com$helpshift$conversation$activeconversation$message$MessageType:[I

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/MessageType;->ADMIN_IMAGE_ATTACHMENT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    invoke-virtual {v1}, Lcom/helpshift/conversation/activeconversation/message/MessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v0, Lcom/helpshift/conversation/activeconversation/ViewableConversation$1;->$SwitchMap$com$helpshift$conversation$activeconversation$message$MessageType:[I

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/MessageType;->ADMIN_ATTACHMENT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    invoke-virtual {v1}, Lcom/helpshift/conversation/activeconversation/message/MessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    return-void
.end method
