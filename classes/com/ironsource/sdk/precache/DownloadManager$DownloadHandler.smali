.class Lcom/ironsource/sdk/precache/DownloadManager$DownloadHandler;
.super Landroid/os/Handler;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/precache/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DownloadHandler"
.end annotation


# instance fields
.field mListener:Lcom/ironsource/sdk/precache/DownloadManager$OnPreCacheCompletion;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 103
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 113
    iget-object v0, p0, Lcom/ironsource/sdk/precache/DownloadManager$DownloadHandler;->mListener:Lcom/ironsource/sdk/precache/DownloadManager$OnPreCacheCompletion;

    const-string v1, "DownloadManager"

    if-nez v0, :cond_1f

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnPreCacheCompletion listener is null, msg: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 119
    :cond_1f
    :try_start_1f
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x3f8

    if-eq v0, v2, :cond_34

    const/16 v2, 0x3f9

    if-eq v0, v2, :cond_2a

    goto :goto_5a

    .line 125
    :cond_2a
    iget-object v0, p0, Lcom/ironsource/sdk/precache/DownloadManager$DownloadHandler;->mListener:Lcom/ironsource/sdk/precache/DownloadManager$OnPreCacheCompletion;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/ironsource/sdk/data/SSAFile;

    invoke-interface {v0, p1}, Lcom/ironsource/sdk/precache/DownloadManager$OnPreCacheCompletion;->onFileDownloadFail(Lcom/ironsource/sdk/data/SSAFile;)V

    goto :goto_5a

    .line 122
    :cond_34
    iget-object v0, p0, Lcom/ironsource/sdk/precache/DownloadManager$DownloadHandler;->mListener:Lcom/ironsource/sdk/precache/DownloadManager$OnPreCacheCompletion;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/ironsource/sdk/data/SSAFile;

    invoke-interface {v0, p1}, Lcom/ironsource/sdk/precache/DownloadManager$OnPreCacheCompletion;->onFileDownloadSuccess(Lcom/ironsource/sdk/data/SSAFile;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_3d} :catch_3e

    goto :goto_5a

    :catch_3e
    move-exception p1

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage | Got exception: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_5a
    return-void
.end method

.method public release()V
    .registers 2

    const/4 v0, 0x0

    .line 140
    iput-object v0, p0, Lcom/ironsource/sdk/precache/DownloadManager$DownloadHandler;->mListener:Lcom/ironsource/sdk/precache/DownloadManager$OnPreCacheCompletion;

    return-void
.end method

.method setOnPreCacheCompletion(Lcom/ironsource/sdk/precache/DownloadManager$OnPreCacheCompletion;)V
    .registers 2

    if-eqz p1, :cond_5

    .line 108
    iput-object p1, p0, Lcom/ironsource/sdk/precache/DownloadManager$DownloadHandler;->mListener:Lcom/ironsource/sdk/precache/DownloadManager$OnPreCacheCompletion;

    return-void

    .line 107
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
