.class public final enum Lcom/google/firebase/crashlytics/internal/common/DataTransportState;
.super Ljava/lang/Enum;
.source "com.google.firebase:firebase-crashlytics@@17.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/crashlytics/internal/common/DataTransportState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/crashlytics/internal/common/DataTransportState;

.field public static final enum ALL:Lcom/google/firebase/crashlytics/internal/common/DataTransportState;

.field public static final enum JAVA_ONLY:Lcom/google/firebase/crashlytics/internal/common/DataTransportState;

.field public static final enum NONE:Lcom/google/firebase/crashlytics/internal/common/DataTransportState;

.field static final REPORT_UPLOAD_VARIANT_DATATRANSPORT:I = 0x2

.field static final REPORT_UPLOAD_VARIANT_LEGACY:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 21
    new-instance v0, Lcom/google/firebase/crashlytics/internal/common/DataTransportState;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lcom/google/firebase/crashlytics/internal/common/DataTransportState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/crashlytics/internal/common/DataTransportState;->NONE:Lcom/google/firebase/crashlytics/internal/common/DataTransportState;

    .line 22
    new-instance v0, Lcom/google/firebase/crashlytics/internal/common/DataTransportState;

    const/4 v2, 0x1

    const-string v3, "JAVA_ONLY"

    invoke-direct {v0, v3, v2}, Lcom/google/firebase/crashlytics/internal/common/DataTransportState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/crashlytics/internal/common/DataTransportState;->JAVA_ONLY:Lcom/google/firebase/crashlytics/internal/common/DataTransportState;

    .line 23
    new-instance v0, Lcom/google/firebase/crashlytics/internal/common/DataTransportState;

    const/4 v3, 0x2

    const-string v4, "ALL"

    invoke-direct {v0, v4, v3}, Lcom/google/firebase/crashlytics/internal/common/DataTransportState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/crashlytics/internal/common/DataTransportState;->ALL:Lcom/google/firebase/crashlytics/internal/common/DataTransportState;

    const/4 v0, 0x3

    .line 20
    new-array v0, v0, [Lcom/google/firebase/crashlytics/internal/common/DataTransportState;

    sget-object v4, Lcom/google/firebase/crashlytics/internal/common/DataTransportState;->NONE:Lcom/google/firebase/crashlytics/internal/common/DataTransportState;

    aput-object v4, v0, v1

    sget-object v1, Lcom/google/firebase/crashlytics/internal/common/DataTransportState;->JAVA_ONLY:Lcom/google/firebase/crashlytics/internal/common/DataTransportState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/firebase/crashlytics/internal/common/DataTransportState;->ALL:Lcom/google/firebase/crashlytics/internal/common/DataTransportState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/firebase/crashlytics/internal/common/DataTransportState;->$VALUES:[Lcom/google/firebase/crashlytics/internal/common/DataTransportState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static getState(Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;)Lcom/google/firebase/crashlytics/internal/common/DataTransportState;
    .registers 5
    .param p0    # Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 43
    iget v0, p0, Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;->reportUploadVariant:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 45
    :goto_a
    iget p0, p0, Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;->nativeReportUploadVariant:I

    if-ne p0, v3, :cond_f

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    .line 47
    :goto_10
    invoke-static {v0, v1}, Lcom/google/firebase/crashlytics/internal/common/DataTransportState;->getState(ZZ)Lcom/google/firebase/crashlytics/internal/common/DataTransportState;

    move-result-object p0

    return-object p0
.end method

.method static getState(ZZ)Lcom/google/firebase/crashlytics/internal/common/DataTransportState;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-nez p0, :cond_5

    .line 33
    sget-object p0, Lcom/google/firebase/crashlytics/internal/common/DataTransportState;->NONE:Lcom/google/firebase/crashlytics/internal/common/DataTransportState;

    return-object p0

    :cond_5
    if-nez p1, :cond_a

    .line 36
    sget-object p0, Lcom/google/firebase/crashlytics/internal/common/DataTransportState;->JAVA_ONLY:Lcom/google/firebase/crashlytics/internal/common/DataTransportState;

    return-object p0

    .line 38
    :cond_a
    sget-object p0, Lcom/google/firebase/crashlytics/internal/common/DataTransportState;->ALL:Lcom/google/firebase/crashlytics/internal/common/DataTransportState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/common/DataTransportState;
    .registers 2

    .line 20
    const-class v0, Lcom/google/firebase/crashlytics/internal/common/DataTransportState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/crashlytics/internal/common/DataTransportState;

    return-object p0
.end method

.method public static values()[Lcom/google/firebase/crashlytics/internal/common/DataTransportState;
    .registers 1

    .line 20
    sget-object v0, Lcom/google/firebase/crashlytics/internal/common/DataTransportState;->$VALUES:[Lcom/google/firebase/crashlytics/internal/common/DataTransportState;

    invoke-virtual {v0}, [Lcom/google/firebase/crashlytics/internal/common/DataTransportState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/crashlytics/internal/common/DataTransportState;

    return-object v0
.end method