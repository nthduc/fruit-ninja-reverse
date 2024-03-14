.class synthetic Lcom/helpshift/conversation/viewmodel/ConversationalVM$31;
.super Ljava/lang/Object;
.source "ConversationalVM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/conversation/viewmodel/ConversationalVM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$helpshift$conversation$dto$IssueState:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1388
    invoke-static {}, Lcom/helpshift/conversation/dto/IssueState;->values()[Lcom/helpshift/conversation/dto/IssueState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/helpshift/conversation/viewmodel/ConversationalVM$31;->$SwitchMap$com$helpshift$conversation$dto$IssueState:[I

    :try_start_9
    sget-object v0, Lcom/helpshift/conversation/viewmodel/ConversationalVM$31;->$SwitchMap$com$helpshift$conversation$dto$IssueState:[I

    sget-object v1, Lcom/helpshift/conversation/dto/IssueState;->RESOLUTION_ACCEPTED:Lcom/helpshift/conversation/dto/IssueState;

    invoke-virtual {v1}, Lcom/helpshift/conversation/dto/IssueState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v0, Lcom/helpshift/conversation/viewmodel/ConversationalVM$31;->$SwitchMap$com$helpshift$conversation$dto$IssueState:[I

    sget-object v1, Lcom/helpshift/conversation/dto/IssueState;->REJECTED:Lcom/helpshift/conversation/dto/IssueState;

    invoke-virtual {v1}, Lcom/helpshift/conversation/dto/IssueState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    return-void
.end method
