.class public final Lcom/google/android/gms/internal/games/zzah;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@20.0.1"

# interfaces
.implements Lcom/google/android/gms/games/event/Events;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final increment(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;I)V
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingRemoteException"
        }
    .end annotation

    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lcom/google/android/gms/games/Games;->zzb(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/games/internal/zzf;

    move-result-object v0

    if-nez v0, :cond_8

    return-void

    .line 7
    :cond_8
    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/zzf;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 8
    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/games/internal/zzf;->zzb(Ljava/lang/String;I)V

    return-void

    .line 9
    :cond_12
    new-instance v0, Lcom/google/android/gms/internal/games/zzai;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/games/zzai;-><init>(Lcom/google/android/gms/internal/games/zzah;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->execute(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    return-void
.end method

.method public final load(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/common/api/PendingResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Z)",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/games/event/Events$LoadEventsResult;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/games/zzaj;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/games/zzaj;-><init>(Lcom/google/android/gms/internal/games/zzah;Lcom/google/android/gms/common/api/GoogleApiClient;Z)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->enqueue(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object p1

    return-object p1
.end method

.method public final varargs loadByIds(Lcom/google/android/gms/common/api/GoogleApiClient;Z[Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Z[",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/games/event/Events$LoadEventsResult;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/games/zzag;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/games/zzag;-><init>(Lcom/google/android/gms/internal/games/zzah;Lcom/google/android/gms/common/api/GoogleApiClient;Z[Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->enqueue(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object p1

    return-object p1
.end method
