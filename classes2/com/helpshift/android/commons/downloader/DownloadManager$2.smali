.class Lcom/helpshift/android/commons/downloader/DownloadManager$2;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Lcom/helpshift/android/commons/downloader/contracts/OnProgressChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/android/commons/downloader/DownloadManager;->getOnProgressChangedListener()Lcom/helpshift/android/commons/downloader/contracts/OnProgressChangedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/android/commons/downloader/DownloadManager;


# direct methods
.method constructor <init>(Lcom/helpshift/android/commons/downloader/DownloadManager;)V
    .registers 2

    .line 251
    iput-object p1, p0, Lcom/helpshift/android/commons/downloader/DownloadManager$2;->this$0:Lcom/helpshift/android/commons/downloader/DownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Ljava/lang/String;I)V
    .registers 5

    .line 254
    iget-object v0, p0, Lcom/helpshift/android/commons/downloader/DownloadManager$2;->this$0:Lcom/helpshift/android/commons/downloader/DownloadManager;

    iget-object v0, v0, Lcom/helpshift/android/commons/downloader/DownloadManager;->activeProgressChangeListeners:Ljava/util/concurrent/ConcurrentHashMap;

    .line 255
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v0, :cond_22

    .line 258
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 260
    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 261
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/android/commons/downloader/contracts/OnProgressChangedListener;

    if-eqz v1, :cond_10

    .line 263
    invoke-interface {v1, p1, p2}, Lcom/helpshift/android/commons/downloader/contracts/OnProgressChangedListener;->onProgressChanged(Ljava/lang/String;I)V

    goto :goto_10

    :cond_22
    return-void
.end method
