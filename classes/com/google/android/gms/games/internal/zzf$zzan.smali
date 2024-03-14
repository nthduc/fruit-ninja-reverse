.class final Lcom/google/android/gms/games/internal/zzf$zzan;
.super Lcom/google/android/gms/games/internal/zza;
.source "com.google.android.gms:play-services-games@@20.0.1"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zzan"
.end annotation


# instance fields
.field private final zzhq:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/android/gms/games/AnnotatedData<",
            "Lcom/google/android/gms/games/stats/PlayerStats;",
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
            "Lcom/google/android/gms/games/stats/PlayerStats;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zza;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzf$zzan;->zzhq:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final zzao(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 7

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getStatusCode()I

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_f

    if-eq v0, v1, :cond_f

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/games/internal/zzf$zzan;->zzhq:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {p1, v0}, Lcom/google/android/gms/games/internal/zzf;->zzb(Lcom/google/android/gms/tasks/TaskCompletionSource;I)V

    return-void

    :cond_f
    const/4 v2, 0x0

    .line 9
    new-instance v3, Lcom/google/android/gms/games/stats/PlayerStatsBuffer;

    invoke-direct {v3, p1}, Lcom/google/android/gms/games/stats/PlayerStatsBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    .line 10
    :try_start_15
    invoke-virtual {v3}, Lcom/google/android/gms/games/stats/PlayerStatsBuffer;->getCount()I

    move-result p1

    const/4 v4, 0x0

    if-lez p1, :cond_29

    .line 11
    invoke-virtual {v3, v4}, Lcom/google/android/gms/games/stats/PlayerStatsBuffer;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/stats/PlayerStats;

    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->freeze()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/games/stats/PlayerStats;
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_29} :catch_3a

    .line 12
    :cond_29
    invoke-virtual {v3}, Lcom/google/android/gms/games/stats/PlayerStatsBuffer;->close()V

    if-ne v0, v1, :cond_2f

    const/4 v4, 0x1

    .line 15
    :cond_2f
    iget-object p1, p0, Lcom/google/android/gms/games/internal/zzf$zzan;->zzhq:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v0, Lcom/google/android/gms/games/AnnotatedData;

    invoke-direct {v0, v2, v4}, Lcom/google/android/gms/games/AnnotatedData;-><init>(Ljava/lang/Object;Z)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void

    :catch_3a
    move-exception p1

    .line 13
    :try_start_3b
    invoke-virtual {v3}, Lcom/google/android/gms/games/stats/PlayerStatsBuffer;->close()V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3e} :catch_3f

    goto :goto_43

    :catch_3f
    move-exception v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/games/zzfq;->zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_43
    throw p1
.end method
