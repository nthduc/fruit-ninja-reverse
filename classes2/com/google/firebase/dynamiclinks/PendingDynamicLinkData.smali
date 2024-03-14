.class public Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;
.super Ljava/lang/Object;


# instance fields
.field private final zzi:Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;


# direct methods
.method public constructor <init>(Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;)V
    .registers 7
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_9

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;->zzi:Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;

    return-void

    .line 5
    :cond_9
    invoke-virtual {p1}, Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;->getClickTimestamp()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1e

    .line 6
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 7
    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;->zza(J)V

    .line 8
    :cond_1e
    iput-object p1, p0, Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;->zzi:Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;IJLandroid/net/Uri;)V
    .registers 15

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v8, Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;

    const/4 v1, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;-><init>(Ljava/lang/String;Ljava/lang/String;IJLandroid/os/Bundle;Landroid/net/Uri;)V

    iput-object v8, p0, Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;->zzi:Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;

    return-void
.end method

.method private final zzc()Landroid/net/Uri;
    .registers 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;->zzi:Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 30
    :cond_6
    invoke-virtual {v0}, Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;->zzc()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getClickTimestamp()J
    .registers 3

    .line 25
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;->zzi:Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    return-wide v0

    .line 27
    :cond_7
    invoke-virtual {v0}, Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;->getClickTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getExtensions()Landroid/os/Bundle;
    .registers 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;->zzi:Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;

    if-nez v0, :cond_a

    .line 14
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0

    .line 15
    :cond_a
    invoke-virtual {v0}, Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;->zzf()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getLink()Landroid/net/Uri;
    .registers 3

    .line 16
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;->zzi:Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 18
    :cond_6
    invoke-virtual {v0}, Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;->zzd()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 20
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_11
    return-object v1
.end method

.method public getMinimumAppVersion()I
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;->zzi:Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 24
    :cond_6
    invoke-virtual {v0}, Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;->zze()I

    move-result v0

    return v0
.end method

.method public getUpdateAppIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 5

    .line 31
    invoke-virtual {p0}, Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;->getMinimumAppVersion()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 34
    :cond_8
    :try_start_8
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_1b} :catch_3d

    .line 39
    invoke-virtual {p0}, Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;->getMinimumAppVersion()I

    move-result v0

    if-ge p1, v0, :cond_3d

    invoke-direct {p0}, Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;->zzc()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_3d

    .line 40
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;->zzc()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.android.vending"

    .line 42
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    :catch_3d
    :cond_3d
    return-object v1
.end method
