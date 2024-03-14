.class public final Lcom/google/android/gms/internal/auth-api/zzak;
.super Lcom/google/android/gms/common/internal/GmsClient;
.source "com.google.android.gms:play-services-auth@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/GmsClient<",
        "Lcom/google/android/gms/internal/auth-api/zzad;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzbo:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/auth/api/identity/SignInOptions;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;Lcom/google/android/gms/common/api/internal/OnConnectionFailedListener;)V
    .registers 14

    const/16 v3, 0xd4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/GmsClient;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;Lcom/google/android/gms/common/api/internal/OnConnectionFailedListener;)V

    .line 2
    invoke-virtual {p3}, Lcom/google/android/gms/auth/api/identity/SignInOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/auth-api/zzak;->zzbo:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method protected final synthetic createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    const-string v0, "com.google.android.gms.auth.api.identity.internal.ISignInService"

    .line 14
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 15
    instance-of v1, v0, Lcom/google/android/gms/internal/auth-api/zzad;

    if-eqz v1, :cond_11

    .line 16
    check-cast v0, Lcom/google/android/gms/internal/auth-api/zzad;

    return-object v0

    .line 17
    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/auth-api/zzac;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/auth-api/zzac;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public final getApiFeatures()[Lcom/google/android/gms/common/Feature;
    .registers 2

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/auth-api/zzam;->zzdg:[Lcom/google/android/gms/common/Feature;

    return-object v0
.end method

.method protected final getGetServiceRequestExtraArgs()Landroid/os/Bundle;
    .registers 2

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/auth-api/zzak;->zzbo:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getMinApkVersion()I
    .registers 2

    const v0, 0x1110e58

    return v0
.end method

.method protected final getServiceDescriptor()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "com.google.android.gms.auth.api.identity.internal.ISignInService"

    return-object v0
.end method

.method protected final getStartServiceAction()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "com.google.android.gms.auth.api.identity.service.signin.START"

    return-object v0
.end method

.method protected final getUseDynamicLookup()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
