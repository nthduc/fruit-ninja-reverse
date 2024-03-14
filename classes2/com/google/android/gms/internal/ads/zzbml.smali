.class public final Lcom/google/android/gms/internal/ads/zzbml;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final zzbrd:Ljava/lang/String;

.field private final zzfni:Lcom/google/android/gms/internal/ads/zzamk;

.field private zzfnj:Lcom/google/android/gms/internal/ads/zzbmu;

.field private final zzfnk:Lcom/google/android/gms/internal/ads/zzahq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzahq<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfnl:Lcom/google/android/gms/internal/ads/zzahq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzahq<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzamk;Ljava/util/concurrent/Executor;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbmo;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbmo;-><init>(Lcom/google/android/gms/internal/ads/zzbml;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbml;->zzfnk:Lcom/google/android/gms/internal/ads/zzahq;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbmq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbmq;-><init>(Lcom/google/android/gms/internal/ads/zzbml;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbml;->zzfnl:Lcom/google/android/gms/internal/ads/zzahq;

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbml;->zzbrd:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbml;->zzfni:Lcom/google/android/gms/internal/ads/zzamk;

    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbml;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzbml;)Ljava/util/concurrent/Executor;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbml;->executor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzbml;Ljava/util/Map;)Z
    .registers 2

    .line 25
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbml;->zzm(Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzbml;)Lcom/google/android/gms/internal/ads/zzbmu;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbml;->zzfnj:Lcom/google/android/gms/internal/ads/zzbmu;

    return-object p0
.end method

.method private final zzm(Ljava/util/Map;)Z
    .registers 4
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const-string v1, "hashCode"

    .line 23
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 24
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1c

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbml;->zzbrd:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    const/4 p1, 0x1

    return p1

    :cond_1c
    return v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzbmu;)V
    .registers 5

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbml;->zzfni:Lcom/google/android/gms/internal/ads/zzamk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbml;->zzfnk:Lcom/google/android/gms/internal/ads/zzahq;

    const-string v2, "/updateActiveView"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzamk;->zzc(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbml;->zzfni:Lcom/google/android/gms/internal/ads/zzamk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbml;->zzfnl:Lcom/google/android/gms/internal/ads/zzahq;

    const-string v2, "/untrackActiveViewUnit"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzamk;->zzc(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbml;->zzfnj:Lcom/google/android/gms/internal/ads/zzbmu;

    return-void
.end method

.method public final zzahe()V
    .registers 4

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbml;->zzfni:Lcom/google/android/gms/internal/ads/zzamk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbml;->zzfnk:Lcom/google/android/gms/internal/ads/zzahq;

    const-string v2, "/updateActiveView"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzamk;->zzd(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbml;->zzfni:Lcom/google/android/gms/internal/ads/zzamk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbml;->zzfnl:Lcom/google/android/gms/internal/ads/zzahq;

    const-string v2, "/untrackActiveViewUnit"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzamk;->zzd(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzbgj;)V
    .registers 4

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbml;->zzfnk:Lcom/google/android/gms/internal/ads/zzahq;

    const-string v1, "/updateActiveView"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbgj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbml;->zzfnl:Lcom/google/android/gms/internal/ads/zzahq;

    const-string v1, "/untrackActiveViewUnit"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbgj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzbgj;)V
    .registers 4

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbml;->zzfnk:Lcom/google/android/gms/internal/ads/zzahq;

    const-string v1, "/updateActiveView"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbgj;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbml;->zzfnl:Lcom/google/android/gms/internal/ads/zzahq;

    const-string v1, "/untrackActiveViewUnit"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbgj;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    return-void
.end method
