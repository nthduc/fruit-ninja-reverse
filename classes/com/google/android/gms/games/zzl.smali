.class final Lcom/google/android/gms/games/zzl;
.super Lcom/google/android/gms/internal/games/zzat;
.source "com.google.android.gms:play-services-games@@20.0.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/games/zzat<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzbe:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/GamesClient;I)V
    .registers 3

    .line 1
    iput p2, p0, Lcom/google/android/gms/games/zzl;->zzbe:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/games/zzat;-><init>()V

    return-void
.end method


# virtual methods
.method protected final zza(Lcom/google/android/gms/games/internal/zzf;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/internal/zzf;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    iget v0, p0, Lcom/google/android/gms/games/zzl;->zzbe:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/games/internal/zzf;->zzo(I)V

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method
