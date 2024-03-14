.class public final Lcom/google/android/gms/auth/api/signin/internal/zzo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth@@18.1.0"


# static fields
.field private static zzcl:Lcom/google/android/gms/auth/api/signin/internal/zzo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private zzcm:Lcom/google/android/gms/auth/api/signin/internal/Storage;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private zzcn:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private zzco:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/Storage;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/zzo;->zzcm:Lcom/google/android/gms/auth/api/signin/internal/Storage;

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/zzo;->zzcm:Lcom/google/android/gms/auth/api/signin/internal/Storage;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->getSavedDefaultGoogleSignInAccount()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/zzo;->zzcn:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/zzo;->zzcm:Lcom/google/android/gms/auth/api/signin/internal/Storage;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->getSavedDefaultGoogleSignInOptions()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/zzo;->zzco:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    return-void
.end method

.method public static declared-synchronized zzd(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/zzo;
    .registers 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-class v0, Lcom/google/android/gms/auth/api/signin/internal/zzo;

    monitor-enter v0

    .line 6
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/auth/api/signin/internal/zzo;->zze(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/zzo;

    move-result-object p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized zze(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/zzo;
    .registers 3

    const-class v0, Lcom/google/android/gms/auth/api/signin/internal/zzo;

    monitor-enter v0

    .line 7
    :try_start_3
    sget-object v1, Lcom/google/android/gms/auth/api/signin/internal/zzo;->zzcl:Lcom/google/android/gms/auth/api/signin/internal/zzo;

    if-eqz v1, :cond_b

    .line 8
    sget-object p0, Lcom/google/android/gms/auth/api/signin/internal/zzo;->zzcl:Lcom/google/android/gms/auth/api/signin/internal/zzo;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_14

    monitor-exit v0

    return-object p0

    .line 9
    :cond_b
    :try_start_b
    new-instance v1, Lcom/google/android/gms/auth/api/signin/internal/zzo;

    invoke-direct {v1, p0}, Lcom/google/android/gms/auth/api/signin/internal/zzo;-><init>(Landroid/content/Context;)V

    .line 10
    sput-object v1, Lcom/google/android/gms/auth/api/signin/internal/zzo;->zzcl:Lcom/google/android/gms/auth/api/signin/internal/zzo;
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_14

    .line 11
    monitor-exit v0

    return-object v1

    :catchall_14
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final declared-synchronized clear()V
    .registers 2

    monitor-enter p0

    .line 12
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzo;->zzcm:Lcom/google/android/gms/auth/api/signin/internal/Storage;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->clear()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzo;->zzcn:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 14
    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzo;->zzco:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 15
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzc(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .registers 4

    monitor-enter p0

    .line 16
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzo;->zzcm:Lcom/google/android/gms/auth/api/signin/internal/Storage;

    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->saveDefaultGoogleSignInAccount(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    .line 17
    iput-object p2, p0, Lcom/google/android/gms/auth/api/signin/internal/zzo;->zzcn:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 18
    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/zzo;->zzco:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 19
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzl()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 20
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzo;->zzcn:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzm()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 21
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzo;->zzco:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
