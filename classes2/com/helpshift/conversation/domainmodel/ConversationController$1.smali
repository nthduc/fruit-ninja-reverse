.class Lcom/helpshift/conversation/domainmodel/ConversationController$1;
.super Lcom/helpshift/common/domain/F;
.source "ConversationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/conversation/domainmodel/ConversationController;->getPoller()Lcom/helpshift/common/domain/Poller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/conversation/domainmodel/ConversationController;


# direct methods
.method constructor <init>(Lcom/helpshift/conversation/domainmodel/ConversationController;)V
    .registers 2

    .line 211
    iput-object p1, p0, Lcom/helpshift/conversation/domainmodel/ConversationController$1;->this$0:Lcom/helpshift/conversation/domainmodel/ConversationController;

    invoke-direct {p0}, Lcom/helpshift/common/domain/F;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized f()V
    .registers 2

    monitor-enter p0

    .line 214
    :try_start_1
    iget-object v0, p0, Lcom/helpshift/conversation/domainmodel/ConversationController$1;->this$0:Lcom/helpshift/conversation/domainmodel/ConversationController;

    invoke-virtual {v0}, Lcom/helpshift/conversation/domainmodel/ConversationController;->fetchConversationUpdates()Lcom/helpshift/conversation/dto/ConversationInbox;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 215
    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method
