.class Lcom/helpshift/conversation/viewmodel/ConversationalVM$12;
.super Lcom/helpshift/common/domain/F;
.source "ConversationalVM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/conversation/viewmodel/ConversationalVM;->onSkipClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

.field final synthetic val$lastMessage:Lcom/helpshift/conversation/activeconversation/message/MessageDM;


# direct methods
.method constructor <init>(Lcom/helpshift/conversation/viewmodel/ConversationalVM;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V
    .registers 3

    .line 1038
    iput-object p1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM$12;->this$0:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    iput-object p2, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM$12;->val$lastMessage:Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    invoke-direct {p0}, Lcom/helpshift/common/domain/F;-><init>()V

    return-void
.end method


# virtual methods
.method public f()V
    .registers 6

    .line 1041
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM$12;->val$lastMessage:Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    check-cast v0, Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithTextInputDM;

    .line 1044
    :try_start_4
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM$12;->this$0:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    iget-object v1, v1, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    iget-object v2, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM$12;->this$0:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    iget-object v2, v2, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->viewableConversation:Lcom/helpshift/conversation/activeconversation/ViewableConversation;

    invoke-virtual {v2}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->getActiveConversation()Lcom/helpshift/conversation/activeconversation/model/Conversation;

    move-result-object v2

    iget-object v3, v0, Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithTextInputDM;->input:Lcom/helpshift/conversation/activeconversation/message/input/TextInput;

    iget-object v3, v3, Lcom/helpshift/conversation/activeconversation/message/input/TextInput;->skipLabel:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->sendTextMessage(Lcom/helpshift/conversation/activeconversation/model/Conversation;Ljava/lang/String;Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithTextInputDM;Z)V
    :try_end_18
    .catch Lcom/helpshift/common/exception/RootAPIException; {:try_start_4 .. :try_end_18} :catch_21

    .line 1052
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM$12;->this$0:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    iget-boolean v1, v0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->awaitingUserInputForBotStep:Z

    xor-int/2addr v1, v4

    invoke-virtual {v0, v1}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->showFakeTypingIndicator(Z)V

    return-void

    :catch_21
    move-exception v0

    .line 1049
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM$12;->this$0:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    # invokes: Lcom/helpshift/conversation/viewmodel/ConversationalVM;->showErrorForNoNetwork(Lcom/helpshift/common/exception/RootAPIException;)V
    invoke-static {v1, v0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->access$000(Lcom/helpshift/conversation/viewmodel/ConversationalVM;Lcom/helpshift/common/exception/RootAPIException;)V

    .line 1050
    throw v0
.end method
