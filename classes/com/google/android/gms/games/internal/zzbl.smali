.class public abstract Lcom/google/android/gms/games/internal/zzbl;
.super Lcom/google/android/gms/common/api/internal/UnregisterListenerMethod;
.source "com.google.android.gms:play-services-games@@20.0.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/common/api/internal/UnregisterListenerMethod<",
        "Lcom/google/android/gms/games/internal/zzf;",
        "T",
        "L;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey<",
            "T",
            "L;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/UnregisterListenerMethod;-><init>(Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;)V

    return-void
.end method


# virtual methods
.method protected synthetic unregisterListener(Lcom/google/android/gms/common/api/Api$AnyClient;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3
    check-cast p1, Lcom/google/android/gms/games/internal/zzf;

    .line 4
    :try_start_2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/games/internal/zzbl;->zzc(Lcom/google/android/gms/games/internal/zzf;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    .line 7
    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    return-void
.end method

.method protected abstract zzc(Lcom/google/android/gms/games/internal/zzf;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/internal/zzf;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
