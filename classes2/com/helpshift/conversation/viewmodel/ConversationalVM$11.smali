.class Lcom/helpshift/conversation/viewmodel/ConversationalVM$11;
.super Lcom/helpshift/common/domain/F;
.source "ConversationalVM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/conversation/viewmodel/ConversationalVM;->onAgentTypingUpdate(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

.field final synthetic val$isAgentTyping:Z


# direct methods
.method constructor <init>(Lcom/helpshift/conversation/viewmodel/ConversationalVM;Z)V
    .registers 3

    .line 1009
    iput-object p1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM$11;->this$0:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    iput-boolean p2, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM$11;->val$isAgentTyping:Z

    invoke-direct {p0}, Lcom/helpshift/common/domain/F;-><init>()V

    return-void
.end method


# virtual methods
.method public f()V
    .registers 3

    .line 1012
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM$11;->this$0:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    iget-object v0, v0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->renderer:Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;

    if-eqz v0, :cond_1c

    const/4 v0, 0x0

    .line 1014
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM$11;->this$0:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    iget-object v1, v1, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->viewableConversation:Lcom/helpshift/conversation/activeconversation/ViewableConversation;

    invoke-virtual {v1}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->getActiveConversation()Lcom/helpshift/conversation/activeconversation/model/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isIssueInProgress()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1015
    iget-boolean v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM$11;->val$isAgentTyping:Z

    .line 1017
    :cond_17
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM$11;->this$0:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {v1, v0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->updateTypingIndicatorStatus(Z)V

    :cond_1c
    return-void
.end method
