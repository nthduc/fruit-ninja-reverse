.class Lcom/helpshift/JavaCore$3;
.super Lcom/helpshift/common/domain/F;
.source "JavaCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/JavaCore;->getNotificationCountAsync(Lcom/helpshift/util/FetchDataFromThread;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/JavaCore;

.field final synthetic val$callback:Lcom/helpshift/util/FetchDataFromThread;


# direct methods
.method constructor <init>(Lcom/helpshift/JavaCore;Lcom/helpshift/util/FetchDataFromThread;)V
    .registers 3

    .line 307
    iput-object p1, p0, Lcom/helpshift/JavaCore$3;->this$0:Lcom/helpshift/JavaCore;

    iput-object p2, p0, Lcom/helpshift/JavaCore$3;->val$callback:Lcom/helpshift/util/FetchDataFromThread;

    invoke-direct {p0}, Lcom/helpshift/common/domain/F;-><init>()V

    return-void
.end method


# virtual methods
.method public f()V
    .registers 4

    .line 312
    :try_start_0
    iget-object v0, p0, Lcom/helpshift/JavaCore$3;->this$0:Lcom/helpshift/JavaCore;

    invoke-virtual {v0}, Lcom/helpshift/JavaCore;->getConversationController()Lcom/helpshift/conversation/domainmodel/ConversationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/conversation/domainmodel/ConversationController;->fetchConversationsAndGetNotificationCount()Lcom/helpshift/util/ValuePair;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_26

    .line 315
    iget-object v1, p0, Lcom/helpshift/JavaCore$3;->val$callback:Lcom/helpshift/util/FetchDataFromThread;

    if-eqz v1, :cond_25

    if-eqz v0, :cond_20

    .line 316
    iget-object v1, v0, Lcom/helpshift/util/ValuePair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_20

    .line 317
    iget-object v1, p0, Lcom/helpshift/JavaCore$3;->val$callback:Lcom/helpshift/util/FetchDataFromThread;

    invoke-interface {v1, v0}, Lcom/helpshift/util/FetchDataFromThread;->onDataFetched(Ljava/lang/Object;)V

    goto :goto_25

    .line 320
    :cond_20
    iget-object v1, p0, Lcom/helpshift/JavaCore$3;->val$callback:Lcom/helpshift/util/FetchDataFromThread;

    invoke-interface {v1, v0}, Lcom/helpshift/util/FetchDataFromThread;->onFailure(Ljava/lang/Object;)V

    :cond_25
    :goto_25
    return-void

    :catchall_26
    move-exception v0

    .line 315
    iget-object v1, p0, Lcom/helpshift/JavaCore$3;->val$callback:Lcom/helpshift/util/FetchDataFromThread;

    if-eqz v1, :cond_2f

    const/4 v2, 0x0

    .line 320
    invoke-interface {v1, v2}, Lcom/helpshift/util/FetchDataFromThread;->onFailure(Ljava/lang/Object;)V

    .line 323
    :cond_2f
    throw v0
.end method
