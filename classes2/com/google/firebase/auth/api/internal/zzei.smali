.class public final Lcom/google/firebase/auth/api/internal/zzei;
.super Lcom/google/android/gms/common/internal/GmsClient;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/firebase/auth/api/internal/zzef;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/GmsClient<",
        "Lcom/google/firebase/auth/api/internal/zzep;",
        ">;",
        "Lcom/google/firebase/auth/api/internal/zzef;"
    }
.end annotation


# static fields
.field private static zza:Lcom/google/android/gms/common/logging/Logger;


# instance fields
.field private final zzb:Landroid/content/Context;

.field private final zzc:Lcom/google/firebase/auth/api/internal/zzeu;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 35
    new-instance v0, Lcom/google/android/gms/common/logging/Logger;

    const-string v1, "FirebaseAuth:"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "FirebaseAuth"

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/logging/Logger;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/google/firebase/auth/api/internal/zzei;->zza:Lcom/google/android/gms/common/logging/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/firebase/auth/api/internal/zzeu;Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;Lcom/google/android/gms/common/api/internal/OnConnectionFailedListener;)V
    .registers 14

    const/16 v3, 0x70

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/GmsClient;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;Lcom/google/android/gms/common/api/internal/OnConnectionFailedListener;)V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/google/firebase/auth/api/internal/zzei;->zzb:Landroid/content/Context;

    .line 3
    iput-object p4, p0, Lcom/google/firebase/auth/api/internal/zzei;->zzc:Lcom/google/firebase/auth/api/internal/zzeu;

    return-void
.end method


# virtual methods
.method protected final synthetic createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 4

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    const-string v0, "com.google.firebase.auth.api.internal.IFirebaseAuthService"

    .line 29
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    instance-of v1, v0, Lcom/google/firebase/auth/api/internal/zzep;

    if-eqz v1, :cond_11

    .line 31
    check-cast v0, Lcom/google/firebase/auth/api/internal/zzep;

    return-object v0

    .line 32
    :cond_11
    new-instance v0, Lcom/google/firebase/auth/api/internal/zzer;

    invoke-direct {v0, p1}, Lcom/google/firebase/auth/api/internal/zzer;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public final getApiFeatures()[Lcom/google/android/gms/common/Feature;
    .registers 2

    .line 24
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zze;->zzc:[Lcom/google/android/gms/common/Feature;

    return-object v0
.end method

.method protected final getGetServiceRequestExtraArgs()Landroid/os/Bundle;
    .registers 4

    .line 15
    invoke-super {p0}, Lcom/google/android/gms/common/internal/GmsClient;->getGetServiceRequestExtraArgs()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_b

    .line 17
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 18
    :cond_b
    iget-object v1, p0, Lcom/google/firebase/auth/api/internal/zzei;->zzc:Lcom/google/firebase/auth/api/internal/zzeu;

    if-eqz v1, :cond_18

    .line 19
    invoke-virtual {v1}, Lcom/google/firebase/auth/api/internal/zzeu;->zzb()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.firebase.auth.API_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_18
    invoke-static {}, Lcom/google/firebase/auth/api/internal/zzew;->zzc()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.firebase.auth.LIBRARY_VERSION"

    .line 21
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getMinApkVersion()I
    .registers 2

    const v0, 0xbdfcb8

    return v0
.end method

.method protected final getServiceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "com.google.firebase.auth.api.internal.IFirebaseAuthService"

    return-object v0
.end method

.method protected final getStartServiceAction()Ljava/lang/String;
    .registers 2

    const-string v0, "com.google.firebase.auth.api.gms.service.START"

    return-object v0
.end method

.method protected final getStartServicePackage()Ljava/lang/String;
    .registers 4

    .line 7
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzei;->zzc:Lcom/google/firebase/auth/api/internal/zzeu;

    .line 8
    iget-boolean v0, v0, Lcom/google/firebase/auth/api/internal/zzao;->zza:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 10
    sget-object v0, Lcom/google/firebase/auth/api/internal/zzei;->zza:Lcom/google/android/gms/common/logging/Logger;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Preparing to create service connection to fallback implementation"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/logging/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzei;->zzb:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 12
    :cond_17
    sget-object v0, Lcom/google/firebase/auth/api/internal/zzei;->zza:Lcom/google/android/gms/common/logging/Logger;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Preparing to create service connection to gms implementation"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/logging/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "com.google.android.gms"

    return-object v0
.end method

.method public final requiresGooglePlayServices()Z
    .registers 3

    .line 14
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzei;->zzb:Landroid/content/Context;

    const-string v1, "com.google.firebase.auth"

    invoke-static {v0, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->getLocalVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic zza()Lcom/google/firebase/auth/api/internal/zzep;
    .registers 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    .line 34
    invoke-super {p0}, Lcom/google/android/gms/common/internal/GmsClient;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/auth/api/internal/zzep;

    return-object v0
.end method
