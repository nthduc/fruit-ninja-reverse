.class public Lcom/google/android/gms/internal/ads/zzaru;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# static fields
.field private static zzdqb:Lcom/google/android/gms/internal/ads/zzaxl;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "InternalQueryInfoGenerator.class"
    .end annotation
.end field


# instance fields
.field private final zzacu:Lcom/google/android/gms/internal/ads/zzyw;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzdqa:Lcom/google/android/gms/ads/AdFormat;

.field private final zzvr:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdFormat;Lcom/google/android/gms/internal/ads/zzyw;)V
    .registers 4
    .param p3    # Lcom/google/android/gms/internal/ads/zzyw;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaru;->zzvr:Landroid/content/Context;

    .line 8
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaru;->zzdqa:Lcom/google/android/gms/ads/AdFormat;

    .line 9
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaru;->zzacu:Lcom/google/android/gms/internal/ads/zzyw;

    return-void
.end method

.method public static zzs(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzaxl;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzaru;

    monitor-enter v0

    .line 2
    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzaru;->zzdqb:Lcom/google/android/gms/internal/ads/zzaxl;

    if-nez v1, :cond_16

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpu()Lcom/google/android/gms/internal/ads/zzvx;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzanc;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzanc;-><init>()V

    invoke-virtual {v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzvx;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzanb;)Lcom/google/android/gms/internal/ads/zzaxl;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/internal/ads/zzaru;->zzdqb:Lcom/google/android/gms/internal/ads/zzaxl;

    .line 4
    :cond_16
    sget-object p0, Lcom/google/android/gms/internal/ads/zzaru;->zzdqb:Lcom/google/android/gms/internal/ads/zzaxl;

    monitor-exit v0

    return-object p0

    :catchall_1a
    move-exception p0

    .line 5
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;)V
    .registers 8

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaru;->zzvr:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaru;->zzs(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzaxl;

    move-result-object v0

    if-nez v0, :cond_e

    const-string v0, "Internal Error, query info generator is null."

    .line 13
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;->onFailure(Ljava/lang/String;)V

    return-void

    .line 15
    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaru;->zzvr:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 16
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaru;->zzacu:Lcom/google/android/gms/internal/ads/zzyw;

    if-nez v2, :cond_22

    .line 17
    new-instance v2, Lcom/google/android/gms/internal/ads/zzvj;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzvj;-><init>()V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzvj;->zzpj()Lcom/google/android/gms/internal/ads/zzvg;

    move-result-object v2

    goto :goto_28

    .line 18
    :cond_22
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaru;->zzvr:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzvl;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzyw;)Lcom/google/android/gms/internal/ads/zzvg;

    move-result-object v2

    .line 19
    :goto_28
    new-instance v3, Lcom/google/android/gms/internal/ads/zzaxr;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzaru;->zzdqa:Lcom/google/android/gms/ads/AdFormat;

    .line 20
    invoke-virtual {v4}, Lcom/google/android/gms/ads/AdFormat;->name()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v5, v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzaxr;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvn;Lcom/google/android/gms/internal/ads/zzvg;)V

    .line 21
    :try_start_34
    new-instance v2, Lcom/google/android/gms/internal/ads/zzarx;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/ads/zzarx;-><init>(Lcom/google/android/gms/internal/ads/zzaru;Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;)V

    invoke-interface {v0, v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzaxl;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzaxr;Lcom/google/android/gms/internal/ads/zzaxg;)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_3c} :catch_3d

    return-void

    :catch_3d
    const-string v0, "Internal Error."

    .line 24
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;->onFailure(Ljava/lang/String;)V

    return-void
.end method
