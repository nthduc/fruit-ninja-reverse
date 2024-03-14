.class Lcom/facebook/internal/ImageDownloader$CacheReadWorkItem;
.super Ljava/lang/Object;
.source "ImageDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/ImageDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheReadWorkItem"
.end annotation


# instance fields
.field private allowCachedRedirects:Z

.field private context:Landroid/content/Context;

.field private key:Lcom/facebook/internal/ImageDownloader$RequestKey;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/facebook/internal/ImageDownloader$RequestKey;Z)V
    .registers 4

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    iput-object p1, p0, Lcom/facebook/internal/ImageDownloader$CacheReadWorkItem;->context:Landroid/content/Context;

    .line 338
    iput-object p2, p0, Lcom/facebook/internal/ImageDownloader$CacheReadWorkItem;->key:Lcom/facebook/internal/ImageDownloader$RequestKey;

    .line 339
    iput-boolean p3, p0, Lcom/facebook/internal/ImageDownloader$CacheReadWorkItem;->allowCachedRedirects:Z

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 344
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/facebook/internal/ImageDownloader$CacheReadWorkItem;->key:Lcom/facebook/internal/ImageDownloader$RequestKey;

    iget-object v1, p0, Lcom/facebook/internal/ImageDownloader$CacheReadWorkItem;->context:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/facebook/internal/ImageDownloader$CacheReadWorkItem;->allowCachedRedirects:Z

    # invokes: Lcom/facebook/internal/ImageDownloader;->readFromCache(Lcom/facebook/internal/ImageDownloader$RequestKey;Landroid/content/Context;Z)V
    invoke-static {v0, v1, v2}, Lcom/facebook/internal/ImageDownloader;->access$100(Lcom/facebook/internal/ImageDownloader$RequestKey;Landroid/content/Context;Z)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception v0

    .line 345
    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
