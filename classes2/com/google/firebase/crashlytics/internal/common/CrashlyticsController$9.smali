.class Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$9;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-crashlytics@@17.0.0"

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/report/ReportUploader$Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->defaultReportUploader()Lcom/google/firebase/crashlytics/internal/report/ReportUploader$Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;)V
    .registers 2

    .line 610
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$9;->this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createReportUploader(Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;)Lcom/google/firebase/crashlytics/internal/report/ReportUploader;
    .registers 11
    .param p1    # Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 613
    iget-object v0, p1, Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;->reportsUrl:Ljava/lang/String;

    .line 614
    iget-object v1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;->ndkReportsUrl:Ljava/lang/String;

    .line 615
    iget-object v3, p1, Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;->organizationId:Ljava/lang/String;

    .line 616
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$9;->this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

    # invokes: Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->getCreateReportSpiCall(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/report/network/CreateReportSpiCall;
    invoke-static {v2, v0, v1}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->access$1400(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/report/network/CreateReportSpiCall;

    move-result-object v7

    .line 617
    new-instance v0, Lcom/google/firebase/crashlytics/internal/report/ReportUploader;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$9;->this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

    .line 619
    # getter for: Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->appData:Lcom/google/firebase/crashlytics/internal/common/AppData;
    invoke-static {v1}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->access$1500(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;)Lcom/google/firebase/crashlytics/internal/common/AppData;

    move-result-object v1

    iget-object v4, v1, Lcom/google/firebase/crashlytics/internal/common/AppData;->googleAppId:Ljava/lang/String;

    .line 620
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/common/DataTransportState;->getState(Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;)Lcom/google/firebase/crashlytics/internal/common/DataTransportState;

    move-result-object v5

    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$9;->this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

    .line 621
    # getter for: Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->reportManager:Lcom/google/firebase/crashlytics/internal/report/ReportManager;
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->access$1100(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;)Lcom/google/firebase/crashlytics/internal/report/ReportManager;

    move-result-object v6

    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$9;->this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

    .line 623
    # getter for: Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->handlingExceptionCheck:Lcom/google/firebase/crashlytics/internal/report/ReportUploader$HandlingExceptionCheck;
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->access$1600(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;)Lcom/google/firebase/crashlytics/internal/report/ReportUploader$HandlingExceptionCheck;

    move-result-object v8

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/google/firebase/crashlytics/internal/report/ReportUploader;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/common/DataTransportState;Lcom/google/firebase/crashlytics/internal/report/ReportManager;Lcom/google/firebase/crashlytics/internal/report/network/CreateReportSpiCall;Lcom/google/firebase/crashlytics/internal/report/ReportUploader$HandlingExceptionCheck;)V

    return-object v0
.end method
