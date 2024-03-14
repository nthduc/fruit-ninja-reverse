.class Lcom/helpshift/conversation/viewmodel/ConversationalVM$15;
.super Lcom/helpshift/common/domain/F;
.source "ConversationalVM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/conversation/viewmodel/ConversationalVM;->evaluateBotMessages(Ljava/util/Collection;)Ljava/util/List;
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

    .line 1223
    iput-object p1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM$15;->this$0:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-direct {p0}, Lcom/helpshift/common/domain/F;-><init>()V

    return-void
.end method


# virtual methods
.method public f()V
    .registers 2

    .line 1228
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM$15;->this$0:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {v0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->resetDefaultMenuItemsVisibility()V

    .line 1230
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM$15;->this$0:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    iget-object v0, v0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->renderer:Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;

    if-eqz v0, :cond_12

    .line 1231
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM$15;->this$0:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    iget-object v0, v0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->renderer:Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;

    invoke-interface {v0}, Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;->hideReplyValidationFailedError()V

    :cond_12
    return-void
.end method
