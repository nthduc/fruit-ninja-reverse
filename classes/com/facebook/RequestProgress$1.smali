.class Lcom/facebook/RequestProgress$1;
.super Ljava/lang/Object;
.source "RequestProgress.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/RequestProgress;->reportProgress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/RequestProgress;

.field final synthetic val$callbackCopy:Lcom/facebook/GraphRequest$OnProgressCallback;

.field final synthetic val$currentCopy:J

.field final synthetic val$maxProgressCopy:J


# direct methods
.method constructor <init>(Lcom/facebook/RequestProgress;Lcom/facebook/GraphRequest$OnProgressCallback;JJ)V
    .registers 7

    .line 72
    iput-object p1, p0, Lcom/facebook/RequestProgress$1;->this$0:Lcom/facebook/RequestProgress;

    iput-object p2, p0, Lcom/facebook/RequestProgress$1;->val$callbackCopy:Lcom/facebook/GraphRequest$OnProgressCallback;

    iput-wide p3, p0, Lcom/facebook/RequestProgress$1;->val$currentCopy:J

    iput-wide p5, p0, Lcom/facebook/RequestProgress$1;->val$maxProgressCopy:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 75
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/facebook/RequestProgress$1;->val$callbackCopy:Lcom/facebook/GraphRequest$OnProgressCallback;

    iget-wide v1, p0, Lcom/facebook/RequestProgress$1;->val$currentCopy:J

    iget-wide v3, p0, Lcom/facebook/RequestProgress$1;->val$maxProgressCopy:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/facebook/GraphRequest$OnProgressCallback;->onProgress(JJ)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception v0

    .line 76
    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
