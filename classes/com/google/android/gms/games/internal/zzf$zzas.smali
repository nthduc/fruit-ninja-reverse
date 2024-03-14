.class final Lcom/google/android/gms/games/internal/zzf$zzas;
.super Lcom/google/android/gms/games/internal/zza;
.source "com.google.android.gms:play-services-games@@20.0.1"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zzas"
.end annotation


# instance fields
.field private final zzhq:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/android/gms/games/AnnotatedData<",
            "Lcom/google/android/gms/games/Player;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/android/gms/games/AnnotatedData<",
            "Lcom/google/android/gms/games/Player;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zza;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzf$zzas;->zzhq:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 7

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getStatusCode()I

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_f

    if-eq v0, v1, :cond_f

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/games/internal/zzf$zzas;->zzhq:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {p1, v0}, Lcom/google/android/gms/games/internal/zzf;->zzb(Lcom/google/android/gms/tasks/TaskCompletionSource;I)V

    return-void

    .line 8
    :cond_f
    new-instance v2, Lcom/google/android/gms/games/PlayerBuffer;

    invoke-direct {v2, p1}, Lcom/google/android/gms/games/PlayerBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    const/4 p1, 0x0

    .line 10
    :try_start_15
    invoke-virtual {v2}, Lcom/google/android/gms/games/PlayerBuffer;->getCount()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_28

    .line 11
    invoke-virtual {v2, v4}, Lcom/google/android/gms/games/PlayerBuffer;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/Player;

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->freeze()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/Player;
    :try_end_28
    .catchall {:try_start_15 .. :try_end_28} :catchall_39

    .line 12
    :cond_28
    invoke-virtual {v2}, Lcom/google/android/gms/games/PlayerBuffer;->release()V

    if-ne v0, v1, :cond_2e

    const/4 v4, 0x1

    .line 17
    :cond_2e
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzf$zzas;->zzhq:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v1, Lcom/google/android/gms/games/AnnotatedData;

    invoke-direct {v1, p1, v4}, Lcom/google/android/gms/games/AnnotatedData;-><init>(Ljava/lang/Object;Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void

    :catchall_39
    move-exception p1

    .line 14
    invoke-virtual {v2}, Lcom/google/android/gms/games/PlayerBuffer;->release()V

    .line 15
    throw p1
.end method
