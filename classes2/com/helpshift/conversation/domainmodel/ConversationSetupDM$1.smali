.class synthetic Lcom/helpshift/conversation/domainmodel/ConversationSetupDM$1;
.super Ljava/lang/Object;
.source "ConversationSetupDM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/conversation/domainmodel/ConversationSetupDM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$helpshift$account$domainmodel$UserSetupState:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 65
    invoke-static {}, Lcom/helpshift/account/domainmodel/UserSetupState;->values()[Lcom/helpshift/account/domainmodel/UserSetupState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/helpshift/conversation/domainmodel/ConversationSetupDM$1;->$SwitchMap$com$helpshift$account$domainmodel$UserSetupState:[I

    :try_start_9
    sget-object v0, Lcom/helpshift/conversation/domainmodel/ConversationSetupDM$1;->$SwitchMap$com$helpshift$account$domainmodel$UserSetupState:[I

    sget-object v1, Lcom/helpshift/account/domainmodel/UserSetupState;->IN_PROGRESS:Lcom/helpshift/account/domainmodel/UserSetupState;

    invoke-virtual {v1}, Lcom/helpshift/account/domainmodel/UserSetupState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v0, Lcom/helpshift/conversation/domainmodel/ConversationSetupDM$1;->$SwitchMap$com$helpshift$account$domainmodel$UserSetupState:[I

    sget-object v1, Lcom/helpshift/account/domainmodel/UserSetupState;->NON_STARTED:Lcom/helpshift/account/domainmodel/UserSetupState;

    invoke-virtual {v1}, Lcom/helpshift/account/domainmodel/UserSetupState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_1f
    sget-object v0, Lcom/helpshift/conversation/domainmodel/ConversationSetupDM$1;->$SwitchMap$com$helpshift$account$domainmodel$UserSetupState:[I

    sget-object v1, Lcom/helpshift/account/domainmodel/UserSetupState;->FAILED:Lcom/helpshift/account/domainmodel/UserSetupState;

    invoke-virtual {v1}, Lcom/helpshift/account/domainmodel/UserSetupState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2a

    :catch_2a
    return-void
.end method
