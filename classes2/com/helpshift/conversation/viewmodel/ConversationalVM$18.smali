.class Lcom/helpshift/conversation/viewmodel/ConversationalVM$18;
.super Lcom/helpshift/common/domain/F;
.source "ConversationalVM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/conversation/viewmodel/ConversationalVM;->handlePreIssueCreationSuccess()V
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

    .line 1419
    iput-object p1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM$18;->this$0:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-direct {p0}, Lcom/helpshift/common/domain/F;-><init>()V

    return-void
.end method


# virtual methods
.method public f()V
    .registers 4

    .line 1425
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM$18;->this$0:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    iget-object v0, v0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->renderer:Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string v0, "Helpshift_ConvsatnlVM"

    const-string v1, "Preissue creation success. Handling on UI."

    .line 1429
    invoke-static {v0, v1}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1431
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM$18;->this$0:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    iget-object v0, v0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationController:Lcom/helpshift/conversation/domainmodel/ConversationController;

    invoke-virtual {v0}, Lcom/helpshift/conversation/domainmodel/ConversationController;->getConversationInboxPoller()Lcom/helpshift/conversation/ConversationInboxPoller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/conversation/ConversationInboxPoller;->startChatPoller()V

    .line 1436
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM$18;->this$0:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {v0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->initMessagesList()V

    .line 1437
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM$18;->this$0:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    iget-object v0, v0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->renderer:Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;

    invoke-interface {v0}, Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;->notifyRefreshList()V

    .line 1441
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM$18;->this$0:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    iget-boolean v0, v0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->isInBetweenBotExecution:Z

    const/4 v1, 0x1

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM$18;->this$0:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    iget-object v0, v0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->viewableConversation:Lcom/helpshift/conversation/activeconversation/ViewableConversation;

    invoke-virtual {v0}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->getActiveConversation()Lcom/helpshift/conversation/activeconversation/model/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isInPreIssueMode()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1442
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM$18;->this$0:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {v0, v1}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->showFakeTypingIndicator(Z)V

    .line 1446
    :cond_3f
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM$18;->this$0:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    iget-object v0, v0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->renderer:Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;

    invoke-interface {v0}, Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;->hideNetworkErrorFooter()V

    .line 1450
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM$18;->this$0:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    iget-object v0, v0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->viewableConversation:Lcom/helpshift/conversation/activeconversation/ViewableConversation;

    invoke-virtual {v0}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->getActiveConversation()Lcom/helpshift/conversation/activeconversation/model/Conversation;

    move-result-object v0

    iget-object v0, v0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->issueType:Ljava/lang/String;

    const-string v2, "issue"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 1451
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM$18;->this$0:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    iget-object v0, v0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->replyBoxViewState:Lcom/helpshift/widget/MutableReplyBoxViewState;

    invoke-virtual {v0, v1}, Lcom/helpshift/widget/MutableReplyBoxViewState;->setVisible(Z)V

    .line 1452
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM$18;->this$0:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-virtual {v0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->renderMenuItems()V

    :cond_64
    return-void
.end method
