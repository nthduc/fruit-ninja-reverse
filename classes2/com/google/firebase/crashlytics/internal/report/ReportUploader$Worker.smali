.class Lcom/google/firebase/crashlytics/internal/report/ReportUploader$Worker;
.super Lcom/google/firebase/crashlytics/internal/common/BackgroundPriorityRunnable;
.source "com.google.firebase:firebase-crashlytics@@17.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/internal/report/ReportUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Worker"
.end annotation


# instance fields
.field private final dataCollectionToken:Z

.field private final delay:F

.field private final reports:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/crashlytics/internal/report/model/Report;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/firebase/crashlytics/internal/report/ReportUploader;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/internal/report/ReportUploader;Ljava/util/List;ZF)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/crashlytics/internal/report/model/Report;",
            ">;ZF)V"
        }
    .end annotation

    .line 140
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/report/ReportUploader$Worker;->this$0:Lcom/google/firebase/crashlytics/internal/report/ReportUploader;

    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/common/BackgroundPriorityRunnable;-><init>()V

    .line 141
    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/report/ReportUploader$Worker;->reports:Ljava/util/List;

    .line 142
    iput-boolean p3, p0, Lcom/google/firebase/crashlytics/internal/report/ReportUploader$Worker;->dataCollectionToken:Z

    .line 143
    iput p4, p0, Lcom/google/firebase/crashlytics/internal/report/ReportUploader$Worker;->delay:F

    return-void
.end method

.method private attemptUploadWithRetry(Ljava/util/List;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/crashlytics/internal/report/model/Report;",
            ">;Z)V"
        }
    .end annotation

    .line 158
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting report processing in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/firebase/crashlytics/internal/report/ReportUploader$Worker;->delay:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " second(s)..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 160
    iget v0, p0, Lcom/google/firebase/crashlytics/internal/report/ReportUploader$Worker;->delay:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_37

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float v0, v0, v1

    float-to-long v0, v0

    .line 162
    :try_start_2b
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2e
    .catch Ljava/lang/InterruptedException; {:try_start_2b .. :try_end_2e} :catch_2f

    goto :goto_37

    .line 164
    :catch_2f
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    return-void

    .line 169
    :cond_37
    :goto_37
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/report/ReportUploader$Worker;->this$0:Lcom/google/firebase/crashlytics/internal/report/ReportUploader;

    # getter for: Lcom/google/firebase/crashlytics/internal/report/ReportUploader;->handlingExceptionCheck:Lcom/google/firebase/crashlytics/internal/report/ReportUploader$HandlingExceptionCheck;
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/report/ReportUploader;->access$100(Lcom/google/firebase/crashlytics/internal/report/ReportUploader;)Lcom/google/firebase/crashlytics/internal/report/ReportUploader$HandlingExceptionCheck;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/crashlytics/internal/report/ReportUploader$HandlingExceptionCheck;->isHandlingException()Z

    move-result v0

    if-eqz v0, :cond_44

    return-void

    :cond_44
    const/4 v0, 0x0

    .line 177
    :goto_45
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_e5

    .line 178
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/report/ReportUploader$Worker;->this$0:Lcom/google/firebase/crashlytics/internal/report/ReportUploader;

    # getter for: Lcom/google/firebase/crashlytics/internal/report/ReportUploader;->handlingExceptionCheck:Lcom/google/firebase/crashlytics/internal/report/ReportUploader$HandlingExceptionCheck;
    invoke-static {v1}, Lcom/google/firebase/crashlytics/internal/report/ReportUploader;->access$100(Lcom/google/firebase/crashlytics/internal/report/ReportUploader;)Lcom/google/firebase/crashlytics/internal/report/ReportUploader$HandlingExceptionCheck;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/firebase/crashlytics/internal/report/ReportUploader$HandlingExceptionCheck;->isHandlingException()Z

    move-result v1

    if-eqz v1, :cond_58

    return-void

    .line 191
    :cond_58
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting to send "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " report(s)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 192
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 193
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_82
    :goto_82
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/crashlytics/internal/report/model/Report;

    .line 194
    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/report/ReportUploader$Worker;->this$0:Lcom/google/firebase/crashlytics/internal/report/ReportUploader;

    invoke-virtual {v3, v2, p2}, Lcom/google/firebase/crashlytics/internal/report/ReportUploader;->uploadReport(Lcom/google/firebase/crashlytics/internal/report/model/Report;Z)Z

    move-result v3

    if-nez v3, :cond_82

    .line 196
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_82

    .line 200
    :cond_9a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_e2

    .line 201
    # getter for: Lcom/google/firebase/crashlytics/internal/report/ReportUploader;->RETRY_INTERVALS:[S
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/report/ReportUploader;->access$200()[S

    move-result-object p1

    add-int/lit8 v2, v0, 0x1

    # getter for: Lcom/google/firebase/crashlytics/internal/report/ReportUploader;->RETRY_INTERVALS:[S
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/report/ReportUploader;->access$200()[S

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    aget-short p1, p1, v0

    int-to-long v3, p1

    .line 202
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Report submission: scheduling delayed retry in "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " seconds"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-virtual {p1, v0}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    .line 205
    :try_start_d5
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_d8
    .catch Ljava/lang/InterruptedException; {:try_start_d5 .. :try_end_d8} :catch_da

    move v0, v2

    goto :goto_e2

    .line 207
    :catch_da
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_e2
    :goto_e2
    move-object p1, v1

    goto/16 :goto_45

    :cond_e5
    return-void
.end method


# virtual methods
.method public onRun()V
    .registers 4

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/report/ReportUploader$Worker;->reports:Ljava/util/List;

    iget-boolean v1, p0, Lcom/google/firebase/crashlytics/internal/report/ReportUploader$Worker;->dataCollectionToken:Z

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/crashlytics/internal/report/ReportUploader$Worker;->attemptUploadWithRetry(Ljava/util/List;Z)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_12

    :catch_8
    move-exception v0

    .line 151
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v1

    const-string v2, "An unexpected error occurred while attempting to upload crash reports."

    .line 152
    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/crashlytics/internal/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    :goto_12
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/report/ReportUploader$Worker;->this$0:Lcom/google/firebase/crashlytics/internal/report/ReportUploader;

    const/4 v1, 0x0

    # setter for: Lcom/google/firebase/crashlytics/internal/report/ReportUploader;->uploadThread:Ljava/lang/Thread;
    invoke-static {v0, v1}, Lcom/google/firebase/crashlytics/internal/report/ReportUploader;->access$002(Lcom/google/firebase/crashlytics/internal/report/ReportUploader;Ljava/lang/Thread;)Ljava/lang/Thread;

    return-void
.end method
