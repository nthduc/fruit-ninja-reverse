.class Lcom/google/firebase/database/connection/util/RetryHelper$1;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.3.0"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/connection/util/RetryHelper;->retry(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/connection/util/RetryHelper;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/connection/util/RetryHelper;Ljava/lang/Runnable;)V
    .registers 3

    .line 63
    iput-object p1, p0, Lcom/google/firebase/database/connection/util/RetryHelper$1;->this$0:Lcom/google/firebase/database/connection/util/RetryHelper;

    iput-object p2, p0, Lcom/google/firebase/database/connection/util/RetryHelper$1;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 66
    iget-object v0, p0, Lcom/google/firebase/database/connection/util/RetryHelper$1;->this$0:Lcom/google/firebase/database/connection/util/RetryHelper;

    const/4 v1, 0x0

    # setter for: Lcom/google/firebase/database/connection/util/RetryHelper;->scheduledRetry:Ljava/util/concurrent/ScheduledFuture;
    invoke-static {v0, v1}, Lcom/google/firebase/database/connection/util/RetryHelper;->access$002(Lcom/google/firebase/database/connection/util/RetryHelper;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 67
    iget-object v0, p0, Lcom/google/firebase/database/connection/util/RetryHelper$1;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
