.class Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8$1$1;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-crashlytics@@17.0.0"

# interfaces
.implements Lcom/google/android/gms/tasks/SuccessContinuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8$1;->call()Lcom/google/android/gms/tasks/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/SuccessContinuation<",
        "Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8$1;

.field final synthetic val$dataCollectionToken:Z

.field final synthetic val$executor:Ljava/util/concurrent/Executor;

.field final synthetic val$reports:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8$1;Ljava/util/List;ZLjava/util/concurrent/Executor;)V
    .registers 5

    .line 573
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8$1$1;->this$2:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8$1;

    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8$1$1;->val$reports:Ljava/util/List;

    iput-boolean p3, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8$1$1;->val$dataCollectionToken:Z

    iput-object p4, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8$1$1;->val$executor:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;)Lcom/google/android/gms/tasks/Task;
    .registers 7
    .param p1    # Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_11

    .line 579
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object p1

    const-string v1, "Received null app settings, cannot send reports during app startup."

    .line 580
    invoke-virtual {p1, v1}, Lcom/google/firebase/crashlytics/internal/Logger;->w(Ljava/lang/String;)V

    .line 582
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 587
    :cond_11
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8$1$1;->val$reports:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_17
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/crashlytics/internal/report/model/Report;

    .line 588
    invoke-interface {v2}, Lcom/google/firebase/crashlytics/internal/report/model/Report;->getType()Lcom/google/firebase/crashlytics/internal/report/model/Report$Type;

    move-result-object v3

    sget-object v4, Lcom/google/firebase/crashlytics/internal/report/model/Report$Type;->JAVA:Lcom/google/firebase/crashlytics/internal/report/model/Report$Type;

    if-ne v3, v4, :cond_17

    .line 589
    iget-object v3, p1, Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;->organizationId:Ljava/lang/String;

    .line 590
    invoke-interface {v2}, Lcom/google/firebase/crashlytics/internal/report/model/Report;->getFile()Ljava/io/File;

    move-result-object v2

    .line 589
    # invokes: Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->appendOrganizationIdToSessionFile(Ljava/lang/String;Ljava/io/File;)V
    invoke-static {v3, v2}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->access$1200(Ljava/lang/String;Ljava/io/File;)V

    goto :goto_17

    .line 593
    :cond_35
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8$1$1;->this$2:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8$1;

    iget-object v1, v1, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8$1;->this$1:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8;

    iget-object v1, v1, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8;->this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

    .line 594
    # getter for: Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->reportUploaderProvider:Lcom/google/firebase/crashlytics/internal/report/ReportUploader$Provider;
    invoke-static {v1}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->access$1300(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;)Lcom/google/firebase/crashlytics/internal/report/ReportUploader$Provider;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/firebase/crashlytics/internal/report/ReportUploader$Provider;->createReportUploader(Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;)Lcom/google/firebase/crashlytics/internal/report/ReportUploader;

    move-result-object v1

    .line 595
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8$1$1;->val$reports:Ljava/util/List;

    iget-boolean v3, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8$1$1;->val$dataCollectionToken:Z

    iget-object v4, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8$1$1;->this$2:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8$1;

    iget-object v4, v4, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8$1;->this$1:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8;

    iget v4, v4, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8;->val$delay:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/firebase/crashlytics/internal/report/ReportUploader;->uploadReportsAsync(Ljava/util/List;ZF)V

    .line 596
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8$1$1;->this$2:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8$1;

    iget-object v1, v1, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8$1;->this$1:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8;

    iget-object v1, v1, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8;->this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

    # getter for: Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->reportingCoordinator:Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;
    invoke-static {v1}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->access$500(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;)Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8$1$1;->val$executor:Ljava/util/concurrent/Executor;

    .line 597
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/common/DataTransportState;->getState(Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;)Lcom/google/firebase/crashlytics/internal/common/DataTransportState;

    move-result-object p1

    .line 596
    invoke-virtual {v1, v2, p1}, Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;->sendReports(Ljava/util/concurrent/Executor;Lcom/google/firebase/crashlytics/internal/common/DataTransportState;)V

    .line 598
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8$1$1;->this$2:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8$1;

    iget-object p1, p1, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8$1;->this$1:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8;

    iget-object p1, p1, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8;->this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

    iget-object p1, p1, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->unsentReportsHandled:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    .line 600
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 573
    check-cast p1, Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;

    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8$1$1;->then(Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
