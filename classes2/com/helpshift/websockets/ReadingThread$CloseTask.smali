.class Lcom/helpshift/websockets/ReadingThread$CloseTask;
.super Ljava/util/TimerTask;
.source "ReadingThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/websockets/ReadingThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CloseTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/websockets/ReadingThread;


# direct methods
.method constructor <init>(Lcom/helpshift/websockets/ReadingThread;)V
    .registers 2

    .line 963
    iput-object p1, p0, Lcom/helpshift/websockets/ReadingThread$CloseTask;->this$0:Lcom/helpshift/websockets/ReadingThread;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 969
    :try_start_0
    iget-object v0, p0, Lcom/helpshift/websockets/ReadingThread$CloseTask;->this$0:Lcom/helpshift/websockets/ReadingThread;

    iget-object v0, v0, Lcom/helpshift/websockets/ReadingThread;->mWebSocket:Lcom/helpshift/websockets/WebSocket;

    invoke-virtual {v0}, Lcom/helpshift/websockets/WebSocket;->getSocket()Ljava/net/Socket;

    move-result-object v0

    .line 970
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_b

    :catch_b
    return-void
.end method
