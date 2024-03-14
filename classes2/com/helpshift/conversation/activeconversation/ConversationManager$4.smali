.class Lcom/helpshift/conversation/activeconversation/ConversationManager$4;
.super Lcom/helpshift/common/domain/F;
.source "ConversationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/conversation/activeconversation/ConversationManager;->markConversationResolutionStatus(Lcom/helpshift/conversation/activeconversation/model/Conversation;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/conversation/activeconversation/ConversationManager;

.field final synthetic val$conversation:Lcom/helpshift/conversation/activeconversation/model/Conversation;

.field final synthetic val$messageDM:Lcom/helpshift/conversation/activeconversation/message/ConfirmationRejectedMessageDM;


# direct methods
.method constructor <init>(Lcom/helpshift/conversation/activeconversation/ConversationManager;Lcom/helpshift/conversation/activeconversation/message/ConfirmationRejectedMessageDM;Lcom/helpshift/conversation/activeconversation/model/Conversation;)V
    .registers 4

    .line 413
    iput-object p1, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager$4;->this$0:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    iput-object p2, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager$4;->val$messageDM:Lcom/helpshift/conversation/activeconversation/message/ConfirmationRejectedMessageDM;

    iput-object p3, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager$4;->val$conversation:Lcom/helpshift/conversation/activeconversation/model/Conversation;

    invoke-direct {p0}, Lcom/helpshift/common/domain/F;-><init>()V

    return-void
.end method


# virtual methods
.method public f()V
    .registers 4

    .line 417
    :try_start_0
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager$4;->val$messageDM:Lcom/helpshift/conversation/activeconversation/message/ConfirmationRejectedMessageDM;

    iget-object v1, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager$4;->this$0:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    iget-object v1, v1, Lcom/helpshift/conversation/activeconversation/ConversationManager;->userDM:Lcom/helpshift/account/domainmodel/UserDM;

    iget-object v2, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager$4;->val$conversation:Lcom/helpshift/conversation/activeconversation/model/Conversation;

    invoke-virtual {v0, v1, v2}, Lcom/helpshift/conversation/activeconversation/message/ConfirmationRejectedMessageDM;->send(Lcom/helpshift/account/domainmodel/UserDM;Lcom/helpshift/conversation/activeconversation/ConversationServerInfo;)V
    :try_end_b
    .catch Lcom/helpshift/common/exception/RootAPIException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_2a

    :catch_c
    move-exception v0

    .line 420
    iget-object v1, v0, Lcom/helpshift/common/exception/RootAPIException;->exceptionType:Lcom/helpshift/common/exception/ExceptionType;

    sget-object v2, Lcom/helpshift/common/exception/NetworkException;->CONVERSATION_ARCHIVED:Lcom/helpshift/common/exception/NetworkException;

    if-ne v1, v2, :cond_1d

    .line 421
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager$4;->this$0:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    iget-object v1, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager$4;->val$conversation:Lcom/helpshift/conversation/activeconversation/model/Conversation;

    sget-object v2, Lcom/helpshift/conversation/dto/IssueState;->ARCHIVED:Lcom/helpshift/conversation/dto/IssueState;

    invoke-virtual {v0, v1, v2}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->updateIssueStatus(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/dto/IssueState;)V

    goto :goto_2a

    .line 423
    :cond_1d
    iget-object v1, v0, Lcom/helpshift/common/exception/RootAPIException;->exceptionType:Lcom/helpshift/common/exception/ExceptionType;

    sget-object v2, Lcom/helpshift/common/exception/NetworkException;->CONVERSATION_REOPEN_EXPIRED:Lcom/helpshift/common/exception/NetworkException;

    if-ne v1, v2, :cond_2b

    .line 424
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager$4;->this$0:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    iget-object v1, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager$4;->val$conversation:Lcom/helpshift/conversation/activeconversation/model/Conversation;

    invoke-virtual {v0, v1}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->markConversationStateToResolutionExpired(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V

    :goto_2a
    return-void

    .line 427
    :cond_2b
    throw v0
.end method
