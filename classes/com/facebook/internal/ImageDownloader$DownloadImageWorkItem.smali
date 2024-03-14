.class Lcom/facebook/internal/ImageDownloader$DownloadImageWorkItem;
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
    name = "DownloadImageWorkItem"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private key:Lcom/facebook/internal/ImageDownloader$RequestKey;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/facebook/internal/ImageDownloader$RequestKey;)V
    .registers 3

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    iput-object p1, p0, Lcom/facebook/internal/ImageDownloader$DownloadImageWorkItem;->context:Landroid/content/Context;

    .line 354
    iput-object p2, p0, Lcom/facebook/internal/ImageDownloader$DownloadImageWorkItem;->key:Lcom/facebook/internal/ImageDownloader$RequestKey;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 359
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/facebook/internal/ImageDownloader$DownloadImageWorkItem;->key:Lcom/facebook/internal/ImageDownloader$RequestKey;

    iget-object v1, p0, Lcom/facebook/internal/ImageDownloader$DownloadImageWorkItem;->context:Landroid/content/Context;

    # invokes: Lcom/facebook/internal/ImageDownloader;->download(Lcom/facebook/internal/ImageDownloader$RequestKey;Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/facebook/internal/ImageDownloader;->access$200(Lcom/facebook/internal/ImageDownloader$RequestKey;Landroid/content/Context;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception v0

    .line 360
    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
