.class final synthetic Lcom/google/android/gms/internal/games/zzav;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@20.0.1"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final zzjz:Lcom/google/android/gms/common/api/internal/RemoteCall;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/RemoteCall;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games/zzav;->zzjz:Lcom/google/android/gms/common/api/internal/RemoteCall;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzav;->zzjz:Lcom/google/android/gms/common/api/internal/RemoteCall;

    check-cast p1, Lcom/google/android/gms/games/internal/zzf;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    :try_start_6
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/common/api/internal/RemoteCall;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_c
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p1

    goto :goto_d

    :catch_c
    move-exception p1

    .line 5
    :goto_d
    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    return-void
.end method
