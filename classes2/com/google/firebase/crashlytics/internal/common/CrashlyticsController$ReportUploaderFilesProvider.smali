.class final Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$ReportUploaderFilesProvider;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-crashlytics@@17.0.0"

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/report/ReportUploader$ReportFilesProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ReportUploaderFilesProvider"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;


# direct methods
.method private constructor <init>(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;)V
    .registers 2

    .line 1818
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$ReportUploaderFilesProvider;->this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$1;)V
    .registers 3

    .line 1818
    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$ReportUploaderFilesProvider;-><init>(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;)V

    return-void
.end method


# virtual methods
.method public getCompleteSessionFiles()[Ljava/io/File;
    .registers 2

    .line 1821
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$ReportUploaderFilesProvider;->this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->listCompleteSessionFiles()[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getNativeReportFiles()[Ljava/io/File;
    .registers 2

    .line 1826
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$ReportUploaderFilesProvider;->this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->listNativeSessionFileDirectories()[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
