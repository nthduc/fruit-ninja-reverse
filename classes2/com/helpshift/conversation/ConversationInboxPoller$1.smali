.class Lcom/helpshift/conversation/ConversationInboxPoller$1;
.super Ljava/lang/Object;
.source "ConversationInboxPoller.java"

# interfaces
.implements Lcom/helpshift/common/domain/PollFunction$PollFunctionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/conversation/ConversationInboxPoller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/conversation/ConversationInboxPoller;


# direct methods
.method constructor <init>(Lcom/helpshift/conversation/ConversationInboxPoller;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/helpshift/conversation/ConversationInboxPoller$1;->this$0:Lcom/helpshift/conversation/ConversationInboxPoller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPollingStoppedViaBackoffStrategy()V
    .registers 3

    const-string v0, "Helpshift_ConvPoller"

    const-string v1, "Poll stopped via backoff, resetting currentPollingInterval"

    .line 47
    invoke-static {v0, v1}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/helpshift/conversation/ConversationInboxPoller$1;->this$0:Lcom/helpshift/conversation/ConversationInboxPoller;

    invoke-virtual {v0}, Lcom/helpshift/conversation/ConversationInboxPoller;->stop()V

    return-void
.end method
