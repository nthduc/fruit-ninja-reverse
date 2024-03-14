.class public Lcom/google/android/gms/internal/ads/zzcbf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzfww:Lcom/google/android/gms/internal/ads/zzccm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzccm;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzcbf;-><init>(Lcom/google/android/gms/internal/ads/zzccm;Lcom/google/android/gms/internal/ads/zzbgj;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzccm;Lcom/google/android/gms/internal/ads/zzbgj;)V
    .registers 3
    .param p2    # Lcom/google/android/gms/internal/ads/zzbgj;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbf;->zzfww:Lcom/google/android/gms/internal/ads/zzccm;

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcbf;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    return-void
.end method


# virtual methods
.method public final zzahl()Lcom/google/android/gms/internal/ads/zzbgj;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbf;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    return-object v0
.end method

.method public final zzakz()Lcom/google/android/gms/internal/ads/zzccm;
    .registers 2

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbf;->zzfww:Lcom/google/android/gms/internal/ads/zzccm;

    return-object v0
.end method

.method public final zzala()Landroid/view/View;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbf;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgj;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzalb()Landroid/view/View;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbf;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgj;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzcab;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzcab<",
            "Lcom/google/android/gms/internal/ads/zzbxz;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbf;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    .line 18
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcab;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcbh;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzcbh;-><init>(Lcom/google/android/gms/internal/ads/zzbgj;)V

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzcab;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-object v1
.end method

.method public zzb(Lcom/google/android/gms/internal/ads/zzbtd;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbtd;",
            ")",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzcab<",
            "Lcom/google/android/gms/internal/ads/zzbuh;",
            ">;>;"
        }
    .end annotation

    .line 12
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbz;->zzeeu:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 13
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzcab;->zzb(Ljava/lang/Object;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzcab;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public zzc(Lcom/google/android/gms/internal/ads/zzbtd;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbtd;",
            ")",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzcab<",
            "Lcom/google/android/gms/internal/ads/zzbzu;",
            ">;>;"
        }
    .end annotation

    .line 15
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbz;->zzeeu:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 16
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzcab;->zzb(Ljava/lang/Object;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzcab;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
