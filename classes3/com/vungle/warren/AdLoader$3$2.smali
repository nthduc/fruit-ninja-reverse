.class Lcom/vungle/warren/AdLoader$3$2;
.super Ljava/lang/Object;
.source "AdLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/AdLoader$3;->onSuccess(Ljava/io/File;Lcom/vungle/warren/downloader/DownloadRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vungle/warren/AdLoader$3;

.field final synthetic val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

.field final synthetic val$downloadedFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/vungle/warren/AdLoader$3;Ljava/io/File;Lcom/vungle/warren/downloader/DownloadRequest;)V
    .registers 4

    .line 914
    iput-object p1, p0, Lcom/vungle/warren/AdLoader$3$2;->this$1:Lcom/vungle/warren/AdLoader$3;

    iput-object p2, p0, Lcom/vungle/warren/AdLoader$3$2;->val$downloadedFile:Ljava/io/File;

    iput-object p3, p0, Lcom/vungle/warren/AdLoader$3$2;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 917
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$3$2;->val$downloadedFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x3

    const-string v2, "Downloaded file not found!"

    const/4 v3, -0x1

    if-nez v0, :cond_1e

    .line 918
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$3$2;->this$1:Lcom/vungle/warren/AdLoader$3;

    new-instance v4, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v3, v5, v1}, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;-><init>(ILjava/lang/Throwable;I)V

    iget-object v1, p0, Lcom/vungle/warren/AdLoader$3$2;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-virtual {v0, v4, v1}, Lcom/vungle/warren/AdLoader$3;->onError(Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequest;)V

    return-void

    .line 927
    :cond_1e
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$3$2;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    iget-object v0, v0, Lcom/vungle/warren/downloader/DownloadRequest;->cookieString:Ljava/lang/String;

    if-nez v0, :cond_26

    const/4 v0, 0x0

    goto :goto_3a

    .line 928
    :cond_26
    iget-object v4, p0, Lcom/vungle/warren/AdLoader$3$2;->this$1:Lcom/vungle/warren/AdLoader$3;

    iget-object v4, v4, Lcom/vungle/warren/AdLoader$3;->this$0:Lcom/vungle/warren/AdLoader;

    # getter for: Lcom/vungle/warren/AdLoader;->repository:Lcom/vungle/warren/persistence/Repository;
    invoke-static {v4}, Lcom/vungle/warren/AdLoader;->access$200(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v4

    const-class v5, Lcom/vungle/warren/model/AdAsset;

    invoke-virtual {v4, v0, v5}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/model/AdAsset;

    :goto_3a
    if-nez v0, :cond_4f

    .line 930
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$3$2;->this$1:Lcom/vungle/warren/AdLoader$3;

    new-instance v1, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;-><init>(ILjava/lang/Throwable;I)V

    iget-object v2, p0, Lcom/vungle/warren/AdLoader$3$2;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/warren/AdLoader$3;->onError(Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequest;)V

    return-void

    .line 939
    :cond_4f
    iget-object v2, p0, Lcom/vungle/warren/AdLoader$3$2;->this$1:Lcom/vungle/warren/AdLoader$3;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$3;->this$0:Lcom/vungle/warren/AdLoader;

    iget-object v4, p0, Lcom/vungle/warren/AdLoader$3$2;->val$downloadedFile:Ljava/io/File;

    # invokes: Lcom/vungle/warren/AdLoader;->isZip(Ljava/io/File;)Z
    invoke-static {v2, v4}, Lcom/vungle/warren/AdLoader;->access$1800(Lcom/vungle/warren/AdLoader;Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_5d

    const/4 v2, 0x0

    goto :goto_5e

    :cond_5d
    const/4 v2, 0x2

    :goto_5e
    iput v2, v0, Lcom/vungle/warren/model/AdAsset;->fileType:I

    .line 940
    iget-object v2, p0, Lcom/vungle/warren/AdLoader$3$2;->val$downloadedFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/vungle/warren/model/AdAsset;->fileSize:J

    .line 941
    iput v1, v0, Lcom/vungle/warren/model/AdAsset;->status:I

    .line 943
    :try_start_6a
    iget-object v1, p0, Lcom/vungle/warren/AdLoader$3$2;->this$1:Lcom/vungle/warren/AdLoader$3;

    iget-object v1, v1, Lcom/vungle/warren/AdLoader$3;->this$0:Lcom/vungle/warren/AdLoader;

    # getter for: Lcom/vungle/warren/AdLoader;->repository:Lcom/vungle/warren/persistence/Repository;
    invoke-static {v1}, Lcom/vungle/warren/AdLoader;->access$200(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V
    :try_end_75
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_6a .. :try_end_75} :catch_9d

    .line 949
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$3$2;->this$1:Lcom/vungle/warren/AdLoader$3;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$3;->downloadCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_9c

    .line 955
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$3$2;->this$1:Lcom/vungle/warren/AdLoader$3;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$3;->this$0:Lcom/vungle/warren/AdLoader;

    iget-object v1, p0, Lcom/vungle/warren/AdLoader$3$2;->this$1:Lcom/vungle/warren/AdLoader$3;

    iget-object v1, v1, Lcom/vungle/warren/AdLoader$3;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v1, v1, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/vungle/warren/AdLoader$3$2;->this$1:Lcom/vungle/warren/AdLoader$3;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$3;->val$callback:Lcom/vungle/warren/AdLoader$DownloadCallback;

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$3$2;->this$1:Lcom/vungle/warren/AdLoader$3;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$3;->val$advertisement:Lcom/vungle/warren/model/Advertisement;

    iget-object v4, p0, Lcom/vungle/warren/AdLoader$3$2;->this$1:Lcom/vungle/warren/AdLoader$3;

    iget-object v4, v4, Lcom/vungle/warren/AdLoader$3;->errors:Ljava/util/List;

    # invokes: Lcom/vungle/warren/AdLoader;->onAssetDownloadFinished(Ljava/lang/String;Lcom/vungle/warren/AdLoader$DownloadCallback;Lcom/vungle/warren/model/Advertisement;Ljava/util/List;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/vungle/warren/AdLoader;->access$1700(Lcom/vungle/warren/AdLoader;Ljava/lang/String;Lcom/vungle/warren/AdLoader$DownloadCallback;Lcom/vungle/warren/model/Advertisement;Ljava/util/List;)V

    :cond_9c
    return-void

    .line 945
    :catch_9d
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$3$2;->this$1:Lcom/vungle/warren/AdLoader$3;

    new-instance v1, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    new-instance v2, Lcom/vungle/warren/error/VungleException;

    const/16 v4, 0x1a

    invoke-direct {v2, v4}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    const/4 v4, 0x4

    invoke-direct {v1, v3, v2, v4}, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;-><init>(ILjava/lang/Throwable;I)V

    iget-object v2, p0, Lcom/vungle/warren/AdLoader$3$2;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/warren/AdLoader$3;->onError(Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequest;)V

    return-void
.end method
