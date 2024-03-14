.class final Lcom/google/firebase/auth/api/internal/zzed;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/google/firebase/auth/api/internal/zzal<",
        "Lcom/google/firebase/auth/api/internal/zzeu;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/firebase/auth/api/internal/zzeu;

.field private final zzb:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/firebase/auth/api/internal/zzeu;Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/auth/api/internal/zzed;->zza:Lcom/google/firebase/auth/api/internal/zzeu;

    .line 3
    iput-object p2, p0, Lcom/google/firebase/auth/api/internal/zzed;->zzb:Landroid/content/Context;

    return-void
.end method

.method private final zza(ZLandroid/content/Context;)Lcom/google/android/gms/common/api/GoogleApi;
    .registers 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/content/Context;",
            ")",
            "Lcom/google/android/gms/common/api/GoogleApi<",
            "Lcom/google/firebase/auth/api/internal/zzeu;",
            ">;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzed;->zza:Lcom/google/firebase/auth/api/internal/zzeu;

    invoke-virtual {v0}, Lcom/google/firebase/auth/api/internal/zzao;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/auth/api/internal/zzeu;

    .line 7
    iput-boolean p1, v0, Lcom/google/firebase/auth/api/internal/zzao;->zza:Z

    .line 8
    new-instance p1, Lcom/google/firebase/auth/api/internal/zzaq;

    sget-object v1, Lcom/google/firebase/auth/api/internal/zzet;->zza:Lcom/google/android/gms/common/api/Api;

    new-instance v2, Lcom/google/firebase/FirebaseExceptionMapper;

    invoke-direct {v2}, Lcom/google/firebase/FirebaseExceptionMapper;-><init>()V

    invoke-direct {p1, p2, v1, v0, v2}, Lcom/google/firebase/auth/api/internal/zzaq;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/common/api/internal/StatusExceptionMapper;)V

    return-object p1
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10
    invoke-static {}, Lcom/google/firebase/auth/api/internal/zzee;->zzb()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_f

    invoke-static {}, Lcom/google/firebase/auth/api/internal/zzee;->zzc()I

    move-result v0

    if-ne v0, v3, :cond_3d

    .line 11
    :cond_f
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzed;->zzb:Landroid/content/Context;

    const-string v3, "com.google.firebase.auth"

    .line 12
    invoke-static {v0, v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->getLocalVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1b

    const/4 v3, 0x1

    goto :goto_37

    .line 15
    :cond_1b
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v3

    iget-object v4, p0, Lcom/google/firebase/auth/api/internal/zzed;->zzb:Landroid/content/Context;

    const v5, 0xbdfcb8

    .line 16
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;I)I

    move-result v3

    if-eqz v3, :cond_2f

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2f

    const/4 v3, 0x0

    goto :goto_37

    .line 18
    :cond_2f
    iget-object v3, p0, Lcom/google/firebase/auth/api/internal/zzed;->zzb:Landroid/content/Context;

    const-string v4, "com.google.android.gms.firebase_auth"

    .line 19
    invoke-static {v3, v4}, Lcom/google/android/gms/dynamite/DynamiteModule;->getRemoteVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 22
    :goto_37
    invoke-static {v3}, Lcom/google/firebase/auth/api/internal/zzee;->zza(I)I

    .line 23
    invoke-static {v0}, Lcom/google/firebase/auth/api/internal/zzee;->zzb(I)I

    .line 24
    :cond_3d
    invoke-static {}, Lcom/google/firebase/auth/api/internal/zzee;->zzc()I

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_4b

    .line 25
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzed;->zzb:Landroid/content/Context;

    invoke-direct {p0, v2, v0}, Lcom/google/firebase/auth/api/internal/zzed;->zza(ZLandroid/content/Context;)Lcom/google/android/gms/common/api/GoogleApi;

    move-result-object v0

    goto :goto_4c

    :cond_4b
    move-object v0, v3

    .line 27
    :goto_4c
    invoke-static {}, Lcom/google/firebase/auth/api/internal/zzee;->zzb()I

    move-result v2

    if-nez v2, :cond_53

    goto :goto_59

    :cond_53
    iget-object v2, p0, Lcom/google/firebase/auth/api/internal/zzed;->zzb:Landroid/content/Context;

    invoke-direct {p0, v1, v2}, Lcom/google/firebase/auth/api/internal/zzed;->zza(ZLandroid/content/Context;)Lcom/google/android/gms/common/api/GoogleApi;

    move-result-object v3

    .line 28
    :goto_59
    new-instance v1, Lcom/google/firebase/auth/api/internal/zzan;

    .line 29
    invoke-static {}, Lcom/google/firebase/auth/api/internal/zzee;->zzb()I

    move-result v2

    invoke-static {}, Lcom/google/firebase/auth/api/internal/zzee;->zzc()I

    move-result v4

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v5

    invoke-direct {v1, v2, v4, v5}, Lcom/google/firebase/auth/api/internal/zzan;-><init>(IILjava/util/Map;)V

    .line 30
    new-instance v2, Lcom/google/firebase/auth/api/internal/zzal;

    invoke-direct {v2, v3, v0, v1}, Lcom/google/firebase/auth/api/internal/zzal;-><init>(Lcom/google/android/gms/common/api/GoogleApi;Lcom/google/android/gms/common/api/GoogleApi;Lcom/google/firebase/auth/api/internal/zzas;)V

    return-object v2
.end method
