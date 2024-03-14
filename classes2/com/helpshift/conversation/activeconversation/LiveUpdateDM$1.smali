.class Lcom/helpshift/conversation/activeconversation/LiveUpdateDM$1;
.super Lcom/helpshift/common/domain/F;
.source "LiveUpdateDM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/conversation/activeconversation/LiveUpdateDM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/conversation/activeconversation/LiveUpdateDM;


# direct methods
.method constructor <init>(Lcom/helpshift/conversation/activeconversation/LiveUpdateDM;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/helpshift/conversation/activeconversation/LiveUpdateDM$1;->this$0:Lcom/helpshift/conversation/activeconversation/LiveUpdateDM;

    invoke-direct {p0}, Lcom/helpshift/common/domain/F;-><init>()V

    return-void
.end method


# virtual methods
.method public f()V
    .registers 4

    const-string v0, "Helpshift_LiveUpdateDM"

    .line 49
    iget-object v1, p0, Lcom/helpshift/conversation/activeconversation/LiveUpdateDM$1;->this$0:Lcom/helpshift/conversation/activeconversation/LiveUpdateDM;

    iget-object v1, v1, Lcom/helpshift/conversation/activeconversation/LiveUpdateDM;->webSocket:Lcom/helpshift/common/platform/network/websockets/HSWebSocket;

    if-eqz v1, :cond_2c

    .line 50
    iget-object v1, p0, Lcom/helpshift/conversation/activeconversation/LiveUpdateDM$1;->this$0:Lcom/helpshift/conversation/activeconversation/LiveUpdateDM;

    iget-boolean v1, v1, Lcom/helpshift/conversation/activeconversation/LiveUpdateDM;->isConnecting:Z

    if-eqz v1, :cond_14

    .line 51
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/LiveUpdateDM$1;->this$0:Lcom/helpshift/conversation/activeconversation/LiveUpdateDM;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/helpshift/conversation/activeconversation/LiveUpdateDM;->shouldDisconnectOnConnect:Z

    goto :goto_2c

    :cond_14
    :try_start_14
    const-string v1, "Disconnecting web-socket"

    .line 55
    invoke-static {v0, v1}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lcom/helpshift/conversation/activeconversation/LiveUpdateDM$1;->this$0:Lcom/helpshift/conversation/activeconversation/LiveUpdateDM;

    iget-object v1, v1, Lcom/helpshift/conversation/activeconversation/LiveUpdateDM;->webSocket:Lcom/helpshift/common/platform/network/websockets/HSWebSocket;

    invoke-virtual {v1}, Lcom/helpshift/common/platform/network/websockets/HSWebSocket;->disconnect()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_20} :catch_21

    goto :goto_27

    :catch_21
    move-exception v1

    const-string v2, "Exception in disconnecting web-socket"

    .line 59
    invoke-static {v0, v2, v1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    :goto_27
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/LiveUpdateDM$1;->this$0:Lcom/helpshift/conversation/activeconversation/LiveUpdateDM;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/helpshift/conversation/activeconversation/LiveUpdateDM;->webSocket:Lcom/helpshift/common/platform/network/websockets/HSWebSocket;

    :cond_2c
    :goto_2c
    return-void
.end method
