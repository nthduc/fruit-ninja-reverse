.class Lcom/helpshift/conversation/activeconversation/ConversationManager$11;
.super Lcom/helpshift/common/domain/F;
.source "ConversationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/conversation/activeconversation/ConversationManager;->handleAppReviewRequestClick(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/activeconversation/message/RequestAppReviewMessageDM;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/conversation/activeconversation/ConversationManager;

.field final synthetic val$acceptedAppReviewMessageDM:Lcom/helpshift/conversation/activeconversation/message/AcceptedAppReviewMessageDM;

.field final synthetic val$conversation:Lcom/helpshift/conversation/activeconversation/model/Conversation;

.field final synthetic val$requestAppReviewMessageDM:Lcom/helpshift/conversation/activeconversation/message/RequestAppReviewMessageDM;


# direct methods
.method constructor <init>(Lcom/helpshift/conversation/activeconversation/ConversationManager;Lcom/helpshift/conversation/activeconversation/message/AcceptedAppReviewMessageDM;Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/activeconversation/message/RequestAppReviewMessageDM;)V
    .registers 5

    .line 1556
    iput-object p1, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager$11;->this$0:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    iput-object p2, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager$11;->val$acceptedAppReviewMessageDM:Lcom/helpshift/conversation/activeconversation/message/AcceptedAppReviewMessageDM;

    iput-object p3, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager$11;->val$conversation:Lcom/helpshift/conversation/activeconversation/model/Conversation;

    iput-object p4, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager$11;->val$requestAppReviewMessageDM:Lcom/helpshift/conversation/activeconversation/message/RequestAppReviewMessageDM;

    invoke-direct {p0}, Lcom/helpshift/common/domain/F;-><init>()V

    return-void
.end method


# virtual methods
.method public f()V
    .registers 4

    .line 1560
    :try_start_0
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager$11;->val$acceptedAppReviewMessageDM:Lcom/helpshift/conversation/activeconversation/message/AcceptedAppReviewMessageDM;

    iget-object v1, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager$11;->this$0:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    iget-object v1, v1, Lcom/helpshift/conversation/activeconversation/ConversationManager;->userDM:Lcom/helpshift/account/domainmodel/UserDM;

    iget-object v2, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager$11;->val$conversation:Lcom/helpshift/conversation/activeconversation/model/Conversation;

    invoke-virtual {v0, v1, v2}, Lcom/helpshift/conversation/activeconversation/message/AcceptedAppReviewMessageDM;->send(Lcom/helpshift/account/domainmodel/UserDM;Lcom/helpshift/conversation/activeconversation/ConversationServerInfo;)V

    .line 1561
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager$11;->val$requestAppReviewMessageDM:Lcom/helpshift/conversation/activeconversation/message/RequestAppReviewMessageDM;

    iget-object v1, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager$11;->this$0:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    iget-object v1, v1, Lcom/helpshift/conversation/activeconversation/ConversationManager;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-virtual {v0, v1}, Lcom/helpshift/conversation/activeconversation/message/RequestAppReviewMessageDM;->handleAcceptedReviewSuccess(Lcom/helpshift/common/platform/Platform;)V
    :try_end_14
    .catch Lcom/helpshift/common/exception/RootAPIException; {:try_start_0 .. :try_end_14} :catch_15

    goto :goto_25

    :catch_15
    move-exception v0

    .line 1564
    iget-object v1, v0, Lcom/helpshift/common/exception/RootAPIException;->exceptionType:Lcom/helpshift/common/exception/ExceptionType;

    sget-object v2, Lcom/helpshift/common/exception/NetworkException;->CONVERSATION_ARCHIVED:Lcom/helpshift/common/exception/NetworkException;

    if-ne v1, v2, :cond_26

    .line 1565
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager$11;->this$0:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    iget-object v1, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager$11;->val$conversation:Lcom/helpshift/conversation/activeconversation/model/Conversation;

    sget-object v2, Lcom/helpshift/conversation/dto/IssueState;->ARCHIVED:Lcom/helpshift/conversation/dto/IssueState;

    invoke-virtual {v0, v1, v2}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->updateIssueStatus(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/dto/IssueState;)V

    :goto_25
    return-void

    .line 1568
    :cond_26
    iget-object v1, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager$11;->val$requestAppReviewMessageDM:Lcom/helpshift/conversation/activeconversation/message/RequestAppReviewMessageDM;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/helpshift/conversation/activeconversation/message/RequestAppReviewMessageDM;->setIsReviewButtonClickable(Z)V

    .line 1569
    throw v0
.end method
