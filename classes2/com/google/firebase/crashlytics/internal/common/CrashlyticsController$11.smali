.class Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$11;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-crashlytics@@17.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->writeNonFatalException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

.field final synthetic val$ex:Ljava/lang/Throwable;

.field final synthetic val$thread:Ljava/lang/Thread;

.field final synthetic val$time:Ljava/util/Date;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;Ljava/util/Date;Ljava/lang/Throwable;Ljava/lang/Thread;)V
    .registers 5

    .line 651
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$11;->this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$11;->val$time:Ljava/util/Date;

    iput-object p3, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$11;->val$ex:Ljava/lang/Throwable;

    iput-object p4, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$11;->val$thread:Ljava/lang/Thread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 654
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$11;->this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->isHandlingException()Z

    move-result v0

    if-nez v0, :cond_24

    .line 655
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$11;->val$time:Ljava/util/Date;

    # invokes: Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->getTimestampSeconds(Ljava/util/Date;)J
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->access$400(Ljava/util/Date;)J

    move-result-wide v0

    .line 656
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$11;->this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

    # getter for: Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->reportingCoordinator:Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;
    invoke-static {v2}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->access$500(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;)Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$11;->val$ex:Ljava/lang/Throwable;

    iget-object v4, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$11;->val$thread:Ljava/lang/Thread;

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;->persistNonFatalEvent(Ljava/lang/Throwable;Ljava/lang/Thread;J)V

    .line 657
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$11;->this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$11;->val$thread:Ljava/lang/Thread;

    iget-object v4, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$11;->val$ex:Ljava/lang/Throwable;

    # invokes: Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->doWriteNonFatal(Ljava/lang/Thread;Ljava/lang/Throwable;J)V
    invoke-static {v2, v3, v4, v0, v1}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->access$1800(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;Ljava/lang/Thread;Ljava/lang/Throwable;J)V

    :cond_24
    return-void
.end method
