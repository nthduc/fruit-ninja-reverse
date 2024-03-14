.class public abstract Lcom/facebook/internal/PlatformServiceClient;
.super Ljava/lang/Object;
.source "PlatformServiceClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/PlatformServiceClient$CompletedListener;
    }
.end annotation


# instance fields
.field private final applicationId:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final handler:Landroid/os/Handler;

.field private listener:Lcom/facebook/internal/PlatformServiceClient$CompletedListener;

.field private final protocolVersion:I

.field private replyMessage:I

.field private requestMessage:I

.field private running:Z

.field private sender:Landroid/os/Messenger;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIILjava/lang/String;)V
    .registers 7

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_a

    move-object p1, v0

    .line 53
    :cond_a
    iput-object p1, p0, Lcom/facebook/internal/PlatformServiceClient;->context:Landroid/content/Context;

    .line 54
    iput p2, p0, Lcom/facebook/internal/PlatformServiceClient;->requestMessage:I

    .line 55
    iput p3, p0, Lcom/facebook/internal/PlatformServiceClient;->replyMessage:I

    .line 56
    iput-object p5, p0, Lcom/facebook/internal/PlatformServiceClient;->applicationId:Ljava/lang/String;

    .line 57
    iput p4, p0, Lcom/facebook/internal/PlatformServiceClient;->protocolVersion:I

    .line 59
    new-instance p1, Lcom/facebook/internal/PlatformServiceClient$1;

    invoke-direct {p1, p0}, Lcom/facebook/internal/PlatformServiceClient$1;-><init>(Lcom/facebook/internal/PlatformServiceClient;)V

    iput-object p1, p0, Lcom/facebook/internal/PlatformServiceClient;->handler:Landroid/os/Handler;

    return-void
.end method

.method private callback(Landroid/os/Bundle;)V
    .registers 3

    .line 155
    iget-boolean v0, p0, Lcom/facebook/internal/PlatformServiceClient;->running:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 158
    iput-boolean v0, p0, Lcom/facebook/internal/PlatformServiceClient;->running:Z

    .line 160
    iget-object v0, p0, Lcom/facebook/internal/PlatformServiceClient;->listener:Lcom/facebook/internal/PlatformServiceClient$CompletedListener;

    if-eqz v0, :cond_f

    .line 162
    invoke-interface {v0, p1}, Lcom/facebook/internal/PlatformServiceClient$CompletedListener;->completed(Landroid/os/Bundle;)V

    :cond_f
    return-void
.end method

.method private sendMessage()V
    .registers 5

    .line 118
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 119
    iget-object v1, p0, Lcom/facebook/internal/PlatformServiceClient;->applicationId:Ljava/lang/String;

    const-string v2, "com.facebook.platform.extra.APPLICATION_ID"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0, v0}, Lcom/facebook/internal/PlatformServiceClient;->populateRequestBundle(Landroid/os/Bundle;)V

    .line 123
    iget v1, p0, Lcom/facebook/internal/PlatformServiceClient;->requestMessage:I

    const/4 v2, 0x0

    invoke-static {v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 124
    iget v3, p0, Lcom/facebook/internal/PlatformServiceClient;->protocolVersion:I

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 125
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 126
    new-instance v0, Landroid/os/Messenger;

    iget-object v3, p0, Lcom/facebook/internal/PlatformServiceClient;->handler:Landroid/os/Handler;

    invoke-direct {v0, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 129
    :try_start_26
    iget-object v0, p0, Lcom/facebook/internal/PlatformServiceClient;->sender:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2b} :catch_2c

    goto :goto_2f

    .line 131
    :catch_2c
    invoke-direct {p0, v2}, Lcom/facebook/internal/PlatformServiceClient;->callback(Landroid/os/Bundle;)V

    :goto_2f
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lcom/facebook/internal/PlatformServiceClient;->running:Z

    return-void
.end method

.method protected getContext()Landroid/content/Context;
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/facebook/internal/PlatformServiceClient;->context:Landroid/content/Context;

    return-object v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 138
    iget v0, p1, Landroid/os/Message;->what:I

    iget v1, p0, Lcom/facebook/internal/PlatformServiceClient;->replyMessage:I

    if-ne v0, v1, :cond_1f

    .line 139
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "com.facebook.platform.status.ERROR_TYPE"

    .line 140
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    const/4 p1, 0x0

    .line 142
    invoke-direct {p0, p1}, Lcom/facebook/internal/PlatformServiceClient;->callback(Landroid/os/Bundle;)V

    goto :goto_1a

    .line 144
    :cond_17
    invoke-direct {p0, p1}, Lcom/facebook/internal/PlatformServiceClient;->callback(Landroid/os/Bundle;)V

    .line 147
    :goto_1a
    :try_start_1a
    iget-object p1, p0, Lcom/facebook/internal/PlatformServiceClient;->context:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a .. :try_end_1f} :catch_1f

    :catch_1f
    :cond_1f
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    .line 103
    new-instance p1, Landroid/os/Messenger;

    invoke-direct {p1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object p1, p0, Lcom/facebook/internal/PlatformServiceClient;->sender:Landroid/os/Messenger;

    .line 104
    invoke-direct {p0}, Lcom/facebook/internal/PlatformServiceClient;->sendMessage()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    const/4 p1, 0x0

    .line 108
    iput-object p1, p0, Lcom/facebook/internal/PlatformServiceClient;->sender:Landroid/os/Messenger;

    .line 110
    :try_start_3
    iget-object v0, p0, Lcom/facebook/internal/PlatformServiceClient;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_8} :catch_8

    .line 114
    :catch_8
    invoke-direct {p0, p1}, Lcom/facebook/internal/PlatformServiceClient;->callback(Landroid/os/Bundle;)V

    return-void
.end method

.method protected abstract populateRequestBundle(Landroid/os/Bundle;)V
.end method

.method public setCompletedListener(Lcom/facebook/internal/PlatformServiceClient$CompletedListener;)V
    .registers 2

    .line 69
    iput-object p1, p0, Lcom/facebook/internal/PlatformServiceClient;->listener:Lcom/facebook/internal/PlatformServiceClient$CompletedListener;

    return-void
.end method

.method public start()Z
    .registers 4

    .line 77
    iget-boolean v0, p0, Lcom/facebook/internal/PlatformServiceClient;->running:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 82
    :cond_6
    iget v0, p0, Lcom/facebook/internal/PlatformServiceClient;->protocolVersion:I

    .line 83
    invoke-static {v0}, Lcom/facebook/internal/NativeProtocol;->getLatestAvailableProtocolVersionForService(I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_10

    return v1

    .line 88
    :cond_10
    iget-object v0, p0, Lcom/facebook/internal/PlatformServiceClient;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/internal/NativeProtocol;->createPlatformServiceIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_19

    return v1

    :cond_19
    const/4 v1, 0x1

    .line 92
    iput-boolean v1, p0, Lcom/facebook/internal/PlatformServiceClient;->running:Z

    .line 93
    iget-object v2, p0, Lcom/facebook/internal/PlatformServiceClient;->context:Landroid/content/Context;

    invoke-virtual {v2, v0, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return v1
.end method
