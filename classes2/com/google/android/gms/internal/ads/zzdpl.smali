.class public final Lcom/google/android/gms/internal/ads/zzdpl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final zzaai:Landroid/content/Context;

.field private final zzbot:Lcom/google/android/gms/internal/ads/zzbbx;

.field private final zzbpw:Lcom/google/android/gms/internal/ads/zzayb;

.field private final zzhgn:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzdpn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbx;Lcom/google/android/gms/internal/ads/zzayb;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpl;->zzhgn:Ljava/util/Map;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdpl;->zzaai:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdpl;->zzbot:Lcom/google/android/gms/internal/ads/zzbbx;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdpl;->zzbpw:Lcom/google/android/gms/internal/ads/zzayb;

    return-void
.end method

.method private final zzatv()Lcom/google/android/gms/internal/ads/zzdpn;
    .registers 6

    .line 14
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdpn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdpl;->zzaai:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdpl;->zzbpw:Lcom/google/android/gms/internal/ads/zzayb;

    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzayb;->zzwt()Lcom/google/android/gms/internal/ads/zzayr;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdpl;->zzbpw:Lcom/google/android/gms/internal/ads/zzayb;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzayb;->zzwv()Lcom/google/android/gms/internal/ads/zzayi;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzdpn;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzayr;Lcom/google/android/gms/internal/ads/zzayi;Lcom/google/android/gms/internal/ads/zzdpo;)V

    return-object v0
.end method

.method private final zzgw(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdpn;
    .registers 6

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpl;->zzaai:Landroid/content/Context;

    .line 18
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzatx;->zzaa(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzatx;

    move-result-object v0

    .line 19
    :try_start_6
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzatx;->setAppPackageName(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_9} :catch_2f

    .line 23
    new-instance v1, Lcom/google/android/gms/internal/ads/zzayq;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzayq;-><init>()V

    .line 24
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdpl;->zzaai:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/google/android/gms/internal/ads/zzayq;->zza(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 25
    new-instance p1, Lcom/google/android/gms/internal/ads/zzayv;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdpl;->zzbpw:Lcom/google/android/gms/internal/ads/zzayb;

    .line 26
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzayb;->zzwt()Lcom/google/android/gms/internal/ads/zzayr;

    move-result-object v2

    invoke-direct {p1, v2, v1}, Lcom/google/android/gms/internal/ads/zzayv;-><init>(Lcom/google/android/gms/internal/ads/zzayr;Lcom/google/android/gms/internal/ads/zzayr;)V

    .line 27
    new-instance v1, Lcom/google/android/gms/internal/ads/zzayi;

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbg;->zzyo()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzayi;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzayr;)V

    .line 29
    new-instance v2, Lcom/google/android/gms/internal/ads/zzdpn;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p1, v1, v3}, Lcom/google/android/gms/internal/ads/zzdpn;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzayr;Lcom/google/android/gms/internal/ads/zzayi;Lcom/google/android/gms/internal/ads/zzdpo;)V

    return-object v2

    .line 22
    :catch_2f
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdpl;->zzatv()Lcom/google/android/gms/internal/ads/zzdpn;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final zzgv(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdpn;
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_7

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdpl;->zzatv()Lcom/google/android/gms/internal/ads/zzdpn;

    move-result-object p1

    return-object p1

    .line 9
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpl;->zzhgn:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpl;->zzhgn:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdpn;

    return-object p1

    .line 11
    :cond_18
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdpl;->zzgw(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdpn;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdpl;->zzhgn:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
