.class Lcom/helpshift/conversation/viewmodel/ConversationSetupVM$2;
.super Lcom/helpshift/common/domain/F;
.source "ConversationSetupVM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/conversation/viewmodel/ConversationSetupVM;->onNetworkAvailable()V
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

    .line 91
    iput-object p1, p0, Lcom/helpshift/conversation/viewmodel/ConversationSetupVM$2;->this$0:Lcom/helpshift/conversation/viewmodel/ConversationSetupVM;

    invoke-direct {p0}, Lcom/helpshift/common/domain/F;-><init>()V

    return-void
.end method


# virtual methods
.method public f()V
    .registers 3

    .line 95
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationSetupVM$2;->this$0:Lcom/helpshift/conversation/viewmodel/ConversationSetupVM;

    # getter for: Lcom/helpshift/conversation/viewmodel/ConversationSetupVM;->progressBarViewState:Lcom/helpshift/widget/MutableBaseViewState;
    invoke-static {v0}, Lcom/helpshift/conversation/viewmodel/ConversationSetupVM;->access$100(Lcom/helpshift/conversation/viewmodel/ConversationSetupVM;)Lcom/helpshift/widget/MutableBaseViewState;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/helpshift/widget/MutableBaseViewState;->setVisible(Z)V

    .line 96
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationSetupVM$2;->this$0:Lcom/helpshift/conversation/viewmodel/ConversationSetupVM;

    # getter for: Lcom/helpshift/conversation/viewmodel/ConversationSetupVM;->errorViewState:Lcom/helpshift/widget/MutableBaseViewState;
    invoke-static {v0}, Lcom/helpshift/conversation/viewmodel/ConversationSetupVM;->access$200(Lcom/helpshift/conversation/viewmodel/ConversationSetupVM;)Lcom/helpshift/widget/MutableBaseViewState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/helpshift/widget/MutableBaseViewState;->setVisible(Z)V

    return-void
.end method
