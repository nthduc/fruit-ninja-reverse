.class public final Lcom/google/android/gms/internal/games/zzf;
.super Lcom/google/android/gms/games/AchievementsClient;
.source "com.google.android.gms:play-services-games@@20.0.1"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/gms/games/Games$GamesOptions;)V
    .registers 3
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/games/Games$GamesOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/games/AchievementsClient;-><init>(Landroid/app/Activity;Lcom/google/android/gms/games/Games$GamesOptions;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/games/Games$GamesOptions;)V
    .registers 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/games/Games$GamesOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/games/AchievementsClient;-><init>(Landroid/content/Context;Lcom/google/android/gms/games/Games$GamesOptions;)V

    return-void
.end method


# virtual methods
.method public final getAchievementsIntent()Lcom/google/android/gms/tasks/Task;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/games/zze;->zzbk:Lcom/google/android/gms/common/api/internal/RemoteCall;

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/games/zzas;->zzd(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/TaskApiCall;

    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/games/zzf;->doRead(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final increment(Ljava/lang/String;I)V
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 25
    new-instance v0, Lcom/google/android/gms/internal/games/zzk;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/games/zzk;-><init>(Ljava/lang/String;I)V

    .line 26
    invoke-static {v0}, Lcom/google/android/gms/internal/games/zzas;->zzd(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/TaskApiCall;

    move-result-object p1

    .line 27
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/games/zzf;->doWrite(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final incrementImmediate(Ljava/lang/String;I)Lcom/google/android/gms/tasks/Task;
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 29
    new-instance v0, Lcom/google/android/gms/internal/games/zzn;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/games/zzn;-><init>(Ljava/lang/String;I)V

    .line 30
    invoke-static {v0}, Lcom/google/android/gms/internal/games/zzas;->zzd(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/TaskApiCall;

    move-result-object p1

    .line 31
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/games/zzf;->doWrite(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final load(Z)Lcom/google/android/gms/tasks/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/games/AnnotatedData<",
            "Lcom/google/android/gms/games/achievement/AchievementBuffer;",
            ">;>;"
        }
    .end annotation

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/games/zzh;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/games/zzh;-><init>(Z)V

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/internal/games/zzas;->zzd(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/TaskApiCall;

    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/games/zzf;->doRead(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final reveal(Ljava/lang/String;)V
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 11
    new-instance v0, Lcom/google/android/gms/internal/games/zzg;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/games/zzg;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/internal/games/zzas;->zzd(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/TaskApiCall;

    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/games/zzf;->doWrite(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final revealImmediate(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 15
    new-instance v0, Lcom/google/android/gms/internal/games/zzj;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/games/zzj;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-static {v0}, Lcom/google/android/gms/internal/games/zzas;->zzd(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/TaskApiCall;

    move-result-object p1

    .line 17
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/games/zzf;->doWrite(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final setSteps(Ljava/lang/String;I)V
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 32
    new-instance v0, Lcom/google/android/gms/internal/games/zzm;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/games/zzm;-><init>(Ljava/lang/String;I)V

    .line 33
    invoke-static {v0}, Lcom/google/android/gms/internal/games/zzas;->zzd(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/TaskApiCall;

    move-result-object p1

    .line 34
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/games/zzf;->doWrite(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final setStepsImmediate(Ljava/lang/String;I)Lcom/google/android/gms/tasks/Task;
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/google/android/gms/internal/games/zzp;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/games/zzp;-><init>(Ljava/lang/String;I)V

    .line 37
    invoke-static {v0}, Lcom/google/android/gms/internal/games/zzas;->zzd(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/TaskApiCall;

    move-result-object p1

    .line 38
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/games/zzf;->doWrite(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final unlock(Ljava/lang/String;)V
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 18
    new-instance v0, Lcom/google/android/gms/internal/games/zzi;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/games/zzi;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-static {v0}, Lcom/google/android/gms/internal/games/zzas;->zzd(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/TaskApiCall;

    move-result-object p1

    .line 20
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/games/zzf;->doWrite(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final unlockImmediate(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 22
    new-instance v0, Lcom/google/android/gms/internal/games/zzl;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/games/zzl;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-static {v0}, Lcom/google/android/gms/internal/games/zzas;->zzd(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/TaskApiCall;

    move-result-object p1

    .line 24
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/games/zzf;->doWrite(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
