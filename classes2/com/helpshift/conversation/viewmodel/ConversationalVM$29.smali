.class Lcom/helpshift/conversation/viewmodel/ConversationalVM$29;
.super Lcom/helpshift/common/domain/F;
.source "ConversationalVM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/conversation/viewmodel/ConversationalVM;->hideReplyFooterFromSmartIntent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/conversation/viewmodel/ConversationalVM;


# direct methods
.method constructor <init>(Lcom/helpshift/conversation/viewmodel/ConversationalVM;)V
    .registers 2

    .line 2305
    iput-object p1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM$29;->this$0:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-direct {p0}, Lcom/helpshift/common/domain/F;-><init>()V

    return-void
.end method


# virtual methods
.method public f()V
    .registers 3

    .line 2308
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM$29;->this$0:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    iget-object v0, v0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->replyBoxViewState:Lcom/helpshift/widget/MutableReplyBoxViewState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/helpshift/widget/MutableReplyBoxViewState;->setVisible(Z)V

    .line 2309
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM$29;->this$0:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    # invokes: Lcom/helpshift/conversation/viewmodel/ConversationalVM;->updateReplyBoxVisibility()V
    invoke-static {v0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->access$500(Lcom/helpshift/conversation/viewmodel/ConversationalVM;)V

    return-void
.end method
