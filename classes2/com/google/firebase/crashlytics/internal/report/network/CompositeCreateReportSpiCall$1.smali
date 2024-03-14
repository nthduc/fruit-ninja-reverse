.class synthetic Lcom/google/firebase/crashlytics/internal/report/network/CompositeCreateReportSpiCall$1;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-crashlytics@@17.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/internal/report/network/CompositeCreateReportSpiCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$firebase$crashlytics$internal$report$model$Report$Type:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 32
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/report/model/Report$Type;->values()[Lcom/google/firebase/crashlytics/internal/report/model/Report$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/firebase/crashlytics/internal/report/network/CompositeCreateReportSpiCall$1;->$SwitchMap$com$google$firebase$crashlytics$internal$report$model$Report$Type:[I

    :try_start_9
    sget-object v0, Lcom/google/firebase/crashlytics/internal/report/network/CompositeCreateReportSpiCall$1;->$SwitchMap$com$google$firebase$crashlytics$internal$report$model$Report$Type:[I

    sget-object v1, Lcom/google/firebase/crashlytics/internal/report/model/Report$Type;->JAVA:Lcom/google/firebase/crashlytics/internal/report/model/Report$Type;

    invoke-virtual {v1}, Lcom/google/firebase/crashlytics/internal/report/model/Report$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v0, Lcom/google/firebase/crashlytics/internal/report/network/CompositeCreateReportSpiCall$1;->$SwitchMap$com$google$firebase$crashlytics$internal$report$model$Report$Type:[I

    sget-object v1, Lcom/google/firebase/crashlytics/internal/report/model/Report$Type;->NATIVE:Lcom/google/firebase/crashlytics/internal/report/model/Report$Type;

    invoke-virtual {v1}, Lcom/google/firebase/crashlytics/internal/report/model/Report$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    return-void
.end method
