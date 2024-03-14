.class Lcom/helpshift/conversation/viewmodel/ConversationSetupVM$3;
.super Lcom/helpshift/common/domain/F;
.source "ConversationSetupVM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/conversation/viewmodel/ConversationSetupVM;->onNetworkUnavailable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/conversation/viewmodel/ConversationSetupVM;


# direct methods
.method constructor <init>(Lcom/helpshift/conversation/viewmodel/ConversationSetupVM;)V
    .registers 2

    .line 103
    iput-object p1, p0, Lcom/helpshift/conversation/viewmodel/ConversationSetupVM$3;->this$0:Lcom/helpshift/conversation/viewmodel/ConversationSetupVM;

    invoke-direct {p0}, Lcom/helpshift/common/domain/F;-><init>()V

    return-void
.end method


# virtual methods
.method public f()V
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationSetupVM$3;->this$0:Lcom/helpshift/conversation/viewmodel/ConversationSetupVM;

    # invokes: Lcom/helpshift/conversation/viewmodel/ConversationSetupVM;->showOfflineError()V
    invoke-static {v0}, Lcom/helpshift/conversation/viewmodel/ConversationSetupVM;->access$300(Lcom/helpshift/conversation/viewmodel/ConversationSetupVM;)V

    return-void
.end method
