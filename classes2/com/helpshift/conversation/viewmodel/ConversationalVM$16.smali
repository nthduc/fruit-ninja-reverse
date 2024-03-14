.class Lcom/helpshift/conversation/viewmodel/ConversationalVM$16;
.super Lcom/helpshift/common/domain/F;
.source "ConversationalVM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/conversation/viewmodel/ConversationalVM;->onNetworkAvailable()V
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

    .line 1328
    iput-object p1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM$16;->this$0:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-direct {p0}, Lcom/helpshift/common/domain/F;-><init>()V

    return-void
.end method


# virtual methods
.method public f()V
    .registers 3

    .line 1331
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM$16;->this$0:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->isNetworkAvailable:Z

    .line 1334
    iget-object v0, v0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->renderer:Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;

    if-nez v0, :cond_a

    return-void

    .line 1338
    :cond_a
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM$16;->this$0:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    # invokes: Lcom/helpshift/conversation/viewmodel/ConversationalVM;->updateUserInputState()V
    invoke-static {v0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->access$100(Lcom/helpshift/conversation/viewmodel/ConversationalVM;)V

    .line 1340
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM$16;->this$0:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    iget-object v0, v0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->renderer:Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;

    invoke-interface {v0}, Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;->hideNetworkErrorFooter()V

    return-void
.end method
