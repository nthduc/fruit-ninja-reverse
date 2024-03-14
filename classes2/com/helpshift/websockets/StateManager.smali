.class Lcom/helpshift/websockets/StateManager;
.super Ljava/lang/Object;
.source "StateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/websockets/StateManager$CloseInitiator;
    }
.end annotation


# instance fields
.field private mCloseInitiator:Lcom/helpshift/websockets/StateManager$CloseInitiator;

.field private mState:Lcom/helpshift/websockets/WebSocketState;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-object v0, Lcom/helpshift/websockets/StateManager$CloseInitiator;->NONE:Lcom/helpshift/websockets/StateManager$CloseInitiator;

    iput-object v0, p0, Lcom/helpshift/websockets/StateManager;->mCloseInitiator:Lcom/helpshift/websockets/StateManager$CloseInitiator;

    .line 33
    sget-object v0, Lcom/helpshift/websockets/WebSocketState;->CREATED:Lcom/helpshift/websockets/WebSocketState;

    iput-object v0, p0, Lcom/helpshift/websockets/StateManager;->mState:Lcom/helpshift/websockets/WebSocketState;

    return-void
.end method


# virtual methods
.method public changeToClosing(Lcom/helpshift/websockets/StateManager$CloseInitiator;)V
    .registers 4

    .line 45
    sget-object v0, Lcom/helpshift/websockets/WebSocketState;->CLOSING:Lcom/helpshift/websockets/WebSocketState;

    iput-object v0, p0, Lcom/helpshift/websockets/StateManager;->mState:Lcom/helpshift/websockets/WebSocketState;

    .line 48
    iget-object v0, p0, Lcom/helpshift/websockets/StateManager;->mCloseInitiator:Lcom/helpshift/websockets/StateManager$CloseInitiator;

    sget-object v1, Lcom/helpshift/websockets/StateManager$CloseInitiator;->NONE:Lcom/helpshift/websockets/StateManager$CloseInitiator;

    if-ne v0, v1, :cond_c

    .line 49
    iput-object p1, p0, Lcom/helpshift/websockets/StateManager;->mCloseInitiator:Lcom/helpshift/websockets/StateManager$CloseInitiator;

    :cond_c
    return-void
.end method

.method public getClosedByServer()Z
    .registers 3

    .line 54
    iget-object v0, p0, Lcom/helpshift/websockets/StateManager;->mCloseInitiator:Lcom/helpshift/websockets/StateManager$CloseInitiator;

    sget-object v1, Lcom/helpshift/websockets/StateManager$CloseInitiator;->SERVER:Lcom/helpshift/websockets/StateManager$CloseInitiator;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public getState()Lcom/helpshift/websockets/WebSocketState;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/helpshift/websockets/StateManager;->mState:Lcom/helpshift/websockets/WebSocketState;

    return-object v0
.end method

.method public setState(Lcom/helpshift/websockets/WebSocketState;)V
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/helpshift/websockets/StateManager;->mState:Lcom/helpshift/websockets/WebSocketState;

    return-void
.end method
