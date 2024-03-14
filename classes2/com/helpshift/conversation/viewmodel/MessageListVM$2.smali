.class Lcom/helpshift/conversation/viewmodel/MessageListVM$2;
.super Lcom/helpshift/common/domain/F;
.source "MessageListVM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/conversation/viewmodel/MessageListVM;->addMessages(Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/conversation/viewmodel/MessageListVM;

.field final synthetic val$newUISupportedMessages:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/helpshift/conversation/viewmodel/MessageListVM;Ljava/util/List;)V
    .registers 3

    .line 497
    iput-object p1, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM$2;->this$0:Lcom/helpshift/conversation/viewmodel/MessageListVM;

    iput-object p2, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM$2;->val$newUISupportedMessages:Ljava/util/List;

    invoke-direct {p0}, Lcom/helpshift/common/domain/F;-><init>()V

    return-void
.end method


# virtual methods
.method public f()V
    .registers 6

    .line 500
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM$2;->this$0:Lcom/helpshift/conversation/viewmodel/MessageListVM;

    iget-object v1, v0, Lcom/helpshift/conversation/viewmodel/MessageListVM;->uiMessageDMs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    # invokes: Lcom/helpshift/conversation/viewmodel/MessageListVM;->getItemAtPosition(I)Lcom/helpshift/conversation/activeconversation/message/MessageDM;
    invoke-static {v0, v1}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->access$000(Lcom/helpshift/conversation/viewmodel/MessageListVM;I)Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 502
    invoke-virtual {v0}, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->getEpochCreatedAtTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM$2;->val$newUISupportedMessages:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    invoke-virtual {v2}, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->getEpochCreatedAtTime()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_26

    goto :goto_2e

    .line 506
    :cond_26
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM$2;->this$0:Lcom/helpshift/conversation/viewmodel/MessageListVM;

    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM$2;->val$newUISupportedMessages:Ljava/util/List;

    # invokes: Lcom/helpshift/conversation/viewmodel/MessageListVM;->insertUIMessages(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->access$200(Lcom/helpshift/conversation/viewmodel/MessageListVM;Ljava/util/List;)V

    goto :goto_35

    .line 503
    :cond_2e
    :goto_2e
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM$2;->this$0:Lcom/helpshift/conversation/viewmodel/MessageListVM;

    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM$2;->val$newUISupportedMessages:Ljava/util/List;

    # invokes: Lcom/helpshift/conversation/viewmodel/MessageListVM;->appendUIMessages(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->access$100(Lcom/helpshift/conversation/viewmodel/MessageListVM;Ljava/util/List;)V

    .line 508
    :goto_35
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM$2;->this$0:Lcom/helpshift/conversation/viewmodel/MessageListVM;

    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM$2;->val$newUISupportedMessages:Ljava/util/List;

    # invokes: Lcom/helpshift/conversation/viewmodel/MessageListVM;->notifyNewUIMessagesAdded(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->access$300(Lcom/helpshift/conversation/viewmodel/MessageListVM;Ljava/util/List;)V

    .line 509
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/MessageListVM$2;->this$0:Lcom/helpshift/conversation/viewmodel/MessageListVM;

    invoke-virtual {v0}, Lcom/helpshift/conversation/viewmodel/MessageListVM;->notifyUIMessageListUpdated()V

    return-void
.end method
