.class Lcom/helpshift/conversation/activeconversation/ConversationManager$10;
.super Ljava/lang/Object;
.source "ConversationManager.java"

# interfaces
.implements Lcom/helpshift/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/conversation/activeconversation/ConversationManager;->sendAttachmentMessageInternal(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/helpshift/util/Callback<",
        "Ljava/lang/Void;",
        "Lcom/helpshift/common/exception/RootAPIException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/conversation/activeconversation/ConversationManager;

.field final synthetic val$conversation:Lcom/helpshift/conversation/activeconversation/model/Conversation;


# direct methods
.method constructor <init>(Lcom/helpshift/conversation/activeconversation/ConversationManager;Lcom/helpshift/conversation/activeconversation/model/Conversation;)V
    .registers 3

    .line 1263
    iput-object p1, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager$10;->this$0:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    iput-object p2, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager$10;->val$conversation:Lcom/helpshift/conversation/activeconversation/model/Conversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/helpshift/common/exception/RootAPIException;)V
    .registers 4

    .line 1275
    iget-object v0, p1, Lcom/helpshift/common/exception/RootAPIException;->exceptionType:Lcom/helpshift/common/exception/ExceptionType;

    sget-object v1, Lcom/helpshift/common/exception/NetworkException;->CONVERSATION_REOPEN_EXPIRED:Lcom/helpshift/common/exception/NetworkException;

    if-ne v0, v1, :cond_e

    .line 1276
    iget-object p1, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager$10;->this$0:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager$10;->val$conversation:Lcom/helpshift/conversation/activeconversation/model/Conversation;

    invoke-virtual {p1, v0}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->markConversationStateToResolutionExpired(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V

    goto :goto_1d

    .line 1278
    :cond_e
    iget-object p1, p1, Lcom/helpshift/common/exception/RootAPIException;->exceptionType:Lcom/helpshift/common/exception/ExceptionType;

    sget-object v0, Lcom/helpshift/common/exception/NetworkException;->CONVERSATION_ARCHIVED:Lcom/helpshift/common/exception/NetworkException;

    if-ne p1, v0, :cond_1d

    .line 1279
    iget-object p1, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager$10;->this$0:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager$10;->val$conversation:Lcom/helpshift/conversation/activeconversation/model/Conversation;

    sget-object v1, Lcom/helpshift/conversation/dto/IssueState;->ARCHIVED:Lcom/helpshift/conversation/dto/IssueState;

    invoke-virtual {p1, v0, v1}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->updateIssueStatus(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/dto/IssueState;)V

    :cond_1d
    :goto_1d
    return-void
.end method

.method public bridge synthetic onFailure(Ljava/lang/Object;)V
    .registers 2

    .line 1263
    check-cast p1, Lcom/helpshift/common/exception/RootAPIException;

    invoke-virtual {p0, p1}, Lcom/helpshift/conversation/activeconversation/ConversationManager$10;->onFailure(Lcom/helpshift/common/exception/RootAPIException;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 1263
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/helpshift/conversation/activeconversation/ConversationManager$10;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .registers 4

    .line 1268
    iget-object p1, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager$10;->val$conversation:Lcom/helpshift/conversation/activeconversation/model/Conversation;

    iget-object p1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    sget-object v0, Lcom/helpshift/conversation/dto/IssueState;->RESOLUTION_REJECTED:Lcom/helpshift/conversation/dto/IssueState;

    if-ne p1, v0, :cond_11

    .line 1269
    iget-object p1, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager$10;->this$0:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager$10;->val$conversation:Lcom/helpshift/conversation/activeconversation/model/Conversation;

    sget-object v1, Lcom/helpshift/conversation/dto/IssueState;->WAITING_FOR_AGENT:Lcom/helpshift/conversation/dto/IssueState;

    invoke-virtual {p1, v0, v1}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->updateIssueStatus(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/dto/IssueState;)V

    :cond_11
    return-void
.end method
