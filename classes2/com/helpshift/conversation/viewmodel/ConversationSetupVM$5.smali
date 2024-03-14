.class synthetic Lcom/helpshift/conversation/viewmodel/ConversationSetupVM$5;
.super Ljava/lang/Object;
.source "ConversationSetupVM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/conversation/viewmodel/ConversationSetupVM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$helpshift$conversation$domainmodel$ConversationSetupDM$ConversationSetupState:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 150
    invoke-static {}, Lcom/helpshift/conversation/domainmodel/ConversationSetupDM$ConversationSetupState;->values()[Lcom/helpshift/conversation/domainmodel/ConversationSetupDM$ConversationSetupState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/helpshift/conversation/viewmodel/ConversationSetupVM$5;->$SwitchMap$com$helpshift$conversation$domainmodel$ConversationSetupDM$ConversationSetupState:[I

    :try_start_9
    sget-object v0, Lcom/helpshift/conversation/viewmodel/ConversationSetupVM$5;->$SwitchMap$com$helpshift$conversation$domainmodel$ConversationSetupDM$ConversationSetupState:[I

    sget-object v1, Lcom/helpshift/conversation/domainmodel/ConversationSetupDM$ConversationSetupState;->NOT_STARTED:Lcom/helpshift/conversation/domainmodel/ConversationSetupDM$ConversationSetupState;

    invoke-virtual {v1}, Lcom/helpshift/conversation/domainmodel/ConversationSetupDM$ConversationSetupState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v0, Lcom/helpshift/conversation/viewmodel/ConversationSetupVM$5;->$SwitchMap$com$helpshift$conversation$domainmodel$ConversationSetupDM$ConversationSetupState:[I

    sget-object v1, Lcom/helpshift/conversation/domainmodel/ConversationSetupDM$ConversationSetupState;->FAILED:Lcom/helpshift/conversation/domainmodel/ConversationSetupDM$ConversationSetupState;

    invoke-virtual {v1}, Lcom/helpshift/conversation/domainmodel/ConversationSetupDM$ConversationSetupState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_1f
    sget-object v0, Lcom/helpshift/conversation/viewmodel/ConversationSetupVM$5;->$SwitchMap$com$helpshift$conversation$domainmodel$ConversationSetupDM$ConversationSetupState:[I

    sget-object v1, Lcom/helpshift/conversation/domainmodel/ConversationSetupDM$ConversationSetupState;->IN_PROGRESS:Lcom/helpshift/conversation/domainmodel/ConversationSetupDM$ConversationSetupState;

    invoke-virtual {v1}, Lcom/helpshift/conversation/domainmodel/ConversationSetupDM$ConversationSetupState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2a

    :catch_2a
    :try_start_2a
    sget-object v0, Lcom/helpshift/conversation/viewmodel/ConversationSetupVM$5;->$SwitchMap$com$helpshift$conversation$domainmodel$ConversationSetupDM$ConversationSetupState:[I

    sget-object v1, Lcom/helpshift/conversation/domainmodel/ConversationSetupDM$ConversationSetupState;->COMPLETED:Lcom/helpshift/conversation/domainmodel/ConversationSetupDM$ConversationSetupState;

    invoke-virtual {v1}, Lcom/helpshift/conversation/domainmodel/ConversationSetupDM$ConversationSetupState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_35

    :catch_35
    return-void
.end method
