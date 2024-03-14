.class Lcom/helpshift/conversation/viewmodel/ConversationalVM$10;
.super Lcom/helpshift/common/domain/F;
.source "ConversationalVM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/conversation/viewmodel/ConversationalVM;->retryMessage(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

.field final synthetic val$readableMessage:Lcom/helpshift/conversation/activeconversation/message/MessageDM;


# direct methods
.method constructor <init>(Lcom/helpshift/conversation/viewmodel/ConversationalVM;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V
    .registers 3

    .line 944
    iput-object p1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM$10;->this$0:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    iput-object p2, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM$10;->val$readableMessage:Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    invoke-direct {p0}, Lcom/helpshift/common/domain/F;-><init>()V

    return-void
.end method


# virtual methods
.method public f()V
    .registers 4

    .line 948
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM$10;->this$0:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    iget-object v0, v0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->viewableConversation:Lcom/helpshift/conversation/activeconversation/ViewableConversation;

    invoke-virtual {v0}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->getActiveConversation()Lcom/helpshift/conversation/activeconversation/model/Conversation;

    move-result-object v0

    .line 949
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM$10;->this$0:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    iget-object v1, v1, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    invoke-virtual {v1, v0}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->isSynced(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Z

    move-result v1

    if-nez v1, :cond_51

    .line 950
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM$10;->val$readableMessage:Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    instance-of v1, v0, Lcom/helpshift/conversation/activeconversation/message/UserSmartIntentMessageDM;

    const-string v2, "Helpshift_ConvsatnlVM"

    if-eqz v1, :cond_34

    const-string v0, "User retrying smart intent message to file preissue."

    .line 951
    invoke-static {v2, v0}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM$10;->val$readableMessage:Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    check-cast v0, Lcom/helpshift/conversation/activeconversation/message/UserSmartIntentMessageDM;

    .line 953
    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/UserMessageState;->SENDING:Lcom/helpshift/conversation/activeconversation/message/UserMessageState;

    invoke-virtual {v0, v1}, Lcom/helpshift/conversation/activeconversation/message/UserSmartIntentMessageDM;->setState(Lcom/helpshift/conversation/activeconversation/message/UserMessageState;)V

    .line 954
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM$10;->this$0:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    iget-object v2, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM$10;->val$readableMessage:Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    iget-object v2, v2, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->body:Ljava/lang/String;

    iget-object v0, v0, Lcom/helpshift/conversation/activeconversation/message/UserSmartIntentMessageDM;->intentLabels:Ljava/util/List;

    invoke-virtual {v1, v2, v0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->createPreIssueViaUserRetry(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_67

    .line 956
    :cond_34
    instance-of v0, v0, Lcom/helpshift/conversation/activeconversation/message/UserMessageDM;

    if-eqz v0, :cond_67

    const-string v0, "User retrying message to file preissue."

    .line 957
    invoke-static {v2, v0}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM$10;->val$readableMessage:Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    check-cast v0, Lcom/helpshift/conversation/activeconversation/message/UserMessageDM;

    .line 959
    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/UserMessageState;->SENDING:Lcom/helpshift/conversation/activeconversation/message/UserMessageState;

    invoke-virtual {v0, v1}, Lcom/helpshift/conversation/activeconversation/message/UserMessageDM;->setState(Lcom/helpshift/conversation/activeconversation/message/UserMessageState;)V

    .line 960
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM$10;->this$0:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM$10;->val$readableMessage:Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    iget-object v1, v1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->body:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->createPreIssueViaUserRetry(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_67

    .line 963
    :cond_51
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM$10;->this$0:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    iget-boolean v1, v1, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->isNetworkAvailable:Z

    if-eqz v1, :cond_67

    .line 965
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM$10;->this$0:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    iget-object v1, v1, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    iget-object v2, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM$10;->val$readableMessage:Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    invoke-virtual {v1, v0, v2}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->retryMessage(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V

    .line 966
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM$10;->this$0:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    iget-boolean v1, v0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->isInBetweenBotExecution:Z

    invoke-virtual {v0, v1}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->showFakeTypingIndicator(Z)V

    :cond_67
    :goto_67
    return-void
.end method
