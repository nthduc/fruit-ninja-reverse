.class final Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport;
.super Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;
.source "com.google.firebase:firebase-crashlytics@@17.0.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport$Builder;
    }
.end annotation


# instance fields
.field private final buildVersion:Ljava/lang/String;

.field private final displayVersion:Ljava/lang/String;

.field private final gmpAppId:Ljava/lang/String;

.field private final installationUuid:Ljava/lang/String;

.field private final ndkPayload:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload;

.field private final platform:I

.field private final sdkVersion:Ljava/lang/String;

.field private final session:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session;Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload;)V
    .registers 9
    .param p7    # Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 36
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport;->sdkVersion:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport;->gmpAppId:Ljava/lang/String;

    .line 39
    iput p3, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport;->platform:I

    .line 40
    iput-object p4, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport;->installationUuid:Ljava/lang/String;

    .line 41
    iput-object p5, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport;->buildVersion:Ljava/lang/String;

    .line 42
    iput-object p6, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport;->displayVersion:Ljava/lang/String;

    .line 43
    iput-object p7, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport;->session:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session;

    .line 44
    iput-object p8, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport;->ndkPayload:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session;Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload;Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport$1;)V
    .registers 10

    .line 10
    invoke-direct/range {p0 .. p8}, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session;Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 113
    :cond_4
    instance-of v1, p1, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;

    const/4 v2, 0x0

    if-eqz v1, :cond_7c

    .line 114
    check-cast p1, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;

    .line 115
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport;->sdkVersion:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;->getSdkVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport;->gmpAppId:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;->getGmpAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    iget v1, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport;->platform:I

    .line 117
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;->getPlatform()I

    move-result v3

    if-ne v1, v3, :cond_7a

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport;->installationUuid:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;->getInstallationUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport;->buildVersion:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;->getBuildVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport;->displayVersion:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;->getDisplayVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport;->session:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session;

    if-nez v1, :cond_5a

    .line 121
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;->getSession()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session;

    move-result-object v1

    if-nez v1, :cond_7a

    goto :goto_64

    :cond_5a
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;->getSession()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    :goto_64
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport;->ndkPayload:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload;

    if-nez v1, :cond_6f

    .line 122
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;->getNdkPayload()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload;

    move-result-object p1

    if-nez p1, :cond_7a

    goto :goto_7b

    :cond_6f
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;->getNdkPayload()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7a

    goto :goto_7b

    :cond_7a
    const/4 v0, 0x0

    :goto_7b
    return v0

    :cond_7c
    return v2
.end method

.method public getBuildVersion()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport;->buildVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayVersion()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport;->displayVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getGmpAppId()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport;->gmpAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getInstallationUuid()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport;->installationUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getNdkPayload()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport;->ndkPayload:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload;

    return-object v0
.end method

.method public getPlatform()I
    .registers 2

    .line 61
    iget v0, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport;->platform:I

    return v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport;->sdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSession()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport;->session:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 131
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport;->sdkVersion:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 133
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport;->gmpAppId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 135
    iget v2, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport;->platform:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 137
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport;->installationUuid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 139
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport;->buildVersion:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 141
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport;->displayVersion:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 143
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport;->session:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session;

    const/4 v3, 0x0

    if-nez v2, :cond_3c

    const/4 v2, 0x0

    goto :goto_40

    :cond_3c
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_40
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 145
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport;->ndkPayload:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload;

    if-nez v1, :cond_48

    goto :goto_4c

    :cond_48
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_4c
    xor-int/2addr v0, v3

    return v0
.end method

.method protected toBuilder()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Builder;
    .registers 3

    .line 151
    new-instance v0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport$Builder;-><init>(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport$1;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CrashlyticsReport{sdkVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport;->sdkVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", gmpAppId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport;->gmpAppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", platform="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport;->platform:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", installationUuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport;->installationUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", buildVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport;->buildVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", displayVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport;->displayVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport;->session:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ndkPayload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport;->ndkPayload:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
