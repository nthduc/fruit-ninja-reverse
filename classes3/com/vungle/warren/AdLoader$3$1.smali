.class Lcom/vungle/warren/AdLoader$3$1;
.super Ljava/lang/Object;
.source "AdLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/AdLoader$3;->onError(Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vungle/warren/AdLoader$3;

.field final synthetic val$downloadError:Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

.field final synthetic val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;


# direct methods
.method constructor <init>(Lcom/vungle/warren/AdLoader$3;Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;)V
    .registers 4

    .line 865
    iput-object p1, p0, Lcom/vungle/warren/AdLoader$3$1;->this$1:Lcom/vungle/warren/AdLoader$3;

    iput-object p2, p0, Lcom/vungle/warren/AdLoader$3$1;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    iput-object p3, p0, Lcom/vungle/warren/AdLoader$3$1;->val$downloadError:Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 868
    # getter for: Lcom/vungle/warren/AdLoader;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/vungle/warren/AdLoader;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Download Failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$3$1;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    const/4 v1, 0x4

    const/4 v2, -0x1

    if-eqz v0, :cond_70

    .line 870
    iget-object v0, v0, Lcom/vungle/warren/downloader/DownloadRequest;->cookieString:Ljava/lang/String;

    .line 871
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v0, 0x0

    goto :goto_2d

    :cond_19
    iget-object v3, p0, Lcom/vungle/warren/AdLoader$3$1;->this$1:Lcom/vungle/warren/AdLoader$3;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$3;->this$0:Lcom/vungle/warren/AdLoader;

    .line 872
    # getter for: Lcom/vungle/warren/AdLoader;->repository:Lcom/vungle/warren/persistence/Repository;
    invoke-static {v3}, Lcom/vungle/warren/AdLoader;->access$200(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v3

    const-class v4, Lcom/vungle/warren/model/AdAsset;

    invoke-virtual {v3, v0, v4}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/model/AdAsset;

    :goto_2d
    if-eqz v0, :cond_5b

    .line 875
    iget-object v3, p0, Lcom/vungle/warren/AdLoader$3$1;->this$1:Lcom/vungle/warren/AdLoader$3;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$3;->errors:Ljava/util/List;

    iget-object v4, p0, Lcom/vungle/warren/AdLoader$3$1;->val$downloadError:Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x2

    .line 876
    iput v3, v0, Lcom/vungle/warren/model/AdAsset;->status:I

    .line 878
    :try_start_3b
    iget-object v3, p0, Lcom/vungle/warren/AdLoader$3$1;->this$1:Lcom/vungle/warren/AdLoader$3;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$3;->this$0:Lcom/vungle/warren/AdLoader;

    # getter for: Lcom/vungle/warren/AdLoader;->repository:Lcom/vungle/warren/persistence/Repository;
    invoke-static {v3}, Lcom/vungle/warren/AdLoader;->access$200(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V
    :try_end_46
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_3b .. :try_end_46} :catch_47

    goto :goto_83

    .line 880
    :catch_47
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$3$1;->this$1:Lcom/vungle/warren/AdLoader$3;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$3;->errors:Ljava/util/List;

    new-instance v3, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    new-instance v4, Lcom/vungle/warren/error/VungleException;

    const/16 v5, 0x1a

    invoke-direct {v4, v5}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-direct {v3, v2, v4, v1}, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;-><init>(ILjava/lang/Throwable;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_83

    .line 887
    :cond_5b
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$3$1;->this$1:Lcom/vungle/warren/AdLoader$3;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$3;->errors:Ljava/util/List;

    new-instance v1, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    new-instance v3, Ljava/io/IOException;

    const-string v4, "Downloaded file not found!"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;-><init>(ILjava/lang/Throwable;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_83

    .line 894
    :cond_70
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$3$1;->this$1:Lcom/vungle/warren/AdLoader$3;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$3;->errors:Ljava/util/List;

    new-instance v3, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "error in request"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v2, v4, v1}, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;-><init>(ILjava/lang/Throwable;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 898
    :goto_83
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$3$1;->this$1:Lcom/vungle/warren/AdLoader$3;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$3;->downloadCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_aa

    .line 899
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$3$1;->this$1:Lcom/vungle/warren/AdLoader$3;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$3;->this$0:Lcom/vungle/warren/AdLoader;

    iget-object v1, p0, Lcom/vungle/warren/AdLoader$3$1;->this$1:Lcom/vungle/warren/AdLoader$3;

    iget-object v1, v1, Lcom/vungle/warren/AdLoader$3;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v1, v1, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/vungle/warren/AdLoader$3$1;->this$1:Lcom/vungle/warren/AdLoader$3;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$3;->val$callback:Lcom/vungle/warren/AdLoader$DownloadCallback;

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$3$1;->this$1:Lcom/vungle/warren/AdLoader$3;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$3;->val$advertisement:Lcom/vungle/warren/model/Advertisement;

    iget-object v4, p0, Lcom/vungle/warren/AdLoader$3$1;->this$1:Lcom/vungle/warren/AdLoader$3;

    iget-object v4, v4, Lcom/vungle/warren/AdLoader$3;->errors:Ljava/util/List;

    # invokes: Lcom/vungle/warren/AdLoader;->onAssetDownloadFinished(Ljava/lang/String;Lcom/vungle/warren/AdLoader$DownloadCallback;Lcom/vungle/warren/model/Advertisement;Ljava/util/List;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/vungle/warren/AdLoader;->access$1700(Lcom/vungle/warren/AdLoader;Ljava/lang/String;Lcom/vungle/warren/AdLoader$DownloadCallback;Lcom/vungle/warren/model/Advertisement;Ljava/util/List;)V

    :cond_aa
    return-void
.end method
