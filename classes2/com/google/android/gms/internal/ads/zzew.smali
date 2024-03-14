.class final Lcom/google/android/gms/internal/ads/zzew;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdve;


# instance fields
.field private final zzxn:Lcom/google/android/gms/internal/ads/zzfi;

.field private final zzyr:Lcom/google/android/gms/internal/ads/zzdtd;

.field private final zzys:Lcom/google/android/gms/internal/ads/zzdtp;

.field private final zzyt:Lcom/google/android/gms/internal/ads/zzev;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdtd;Lcom/google/android/gms/internal/ads/zzdtp;Lcom/google/android/gms/internal/ads/zzfi;Lcom/google/android/gms/internal/ads/zzev;)V
    .registers 5
    .param p1    # Lcom/google/android/gms/internal/ads/zzdtd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/internal/ads/zzdtp;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/internal/ads/zzfi;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/internal/ads/zzev;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzew;->zzyr:Lcom/google/android/gms/internal/ads/zzdtd;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzew;->zzys:Lcom/google/android/gms/internal/ads/zzdtp;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzew;->zzxn:Lcom/google/android/gms/internal/ads/zzfi;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzew;->zzyt:Lcom/google/android/gms/internal/ads/zzev;

    return-void
.end method

.method private final zzcc()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzew;->zzys:Lcom/google/android/gms/internal/ads/zzdtp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdtp;->zzco()Lcom/google/android/gms/internal/ads/zzcf$zza;

    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzew;->zzyr:Lcom/google/android/gms/internal/ads/zzdtd;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdtd;->zzavt()Ljava/lang/String;

    move-result-object v2

    const-string v3, "v"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzew;->zzyr:Lcom/google/android/gms/internal/ads/zzdtd;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdtd;->zzcm()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "gms"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcf$zza;->zzaf()Ljava/lang/String;

    move-result-object v1

    const-string v2, "int"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzew;->zzyt:Lcom/google/android/gms/internal/ads/zzev;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzev;->zzcb()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "up"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "t"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method final zzc(Landroid/view/View;)V
    .registers 3

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzew;->zzxn:Lcom/google/android/gms/internal/ads/zzfi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfi;->zze(Landroid/view/View;)V

    return-void
.end method

.method public final zzcd()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzew;->zzcc()Ljava/util/Map;

    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzew;->zzys:Lcom/google/android/gms/internal/ads/zzdtp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdtp;->zzawa()Lcom/google/android/gms/internal/ads/zzcf$zza;

    move-result-object v1

    .line 19
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzew;->zzyr:Lcom/google/android/gms/internal/ads/zzdtd;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdtd;->zzavu()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "gai"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcf$zza;->zzal()Ljava/lang/String;

    move-result-object v2

    const-string v3, "did"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcf$zza;->zzam()Lcom/google/android/gms/internal/ads/zzcf$zza$zzc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcf$zza$zzc;->zzv()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "dst"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcf$zza;->zzan()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "doo"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final zzce()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzew;->zzcc()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final zzcf()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzew;->zzcc()Ljava/util/Map;

    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzew;->zzxn:Lcom/google/android/gms/internal/ads/zzfi;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfi;->zzcu()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "lts"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
