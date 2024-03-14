.class public final Lcom/google/android/gms/internal/ads/zzbkm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private zzesw:Lcom/google/android/gms/internal/ads/zzbky;

.field private zzesx:Lcom/google/android/gms/internal/ads/zzbja;

.field private zzfjy:Lcom/google/android/gms/internal/ads/zzdsp;

.field private zzfjz:Lcom/google/android/gms/internal/ads/zzblh;

.field private zzfka:Lcom/google/android/gms/internal/ads/zzdpf;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbju;)V
    .registers 2

    .line 16
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbkm;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzbky;)Lcom/google/android/gms/internal/ads/zzbkm;
    .registers 2

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzepe;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbky;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbkm;->zzesw:Lcom/google/android/gms/internal/ads/zzbky;

    return-object p0
.end method

.method public final zzagf()Lcom/google/android/gms/internal/ads/zzbix;
    .registers 9

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkm;->zzesx:Lcom/google/android/gms/internal/ads/zzbja;

    const-class v1, Lcom/google/android/gms/internal/ads/zzbja;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzepe;->zza(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkm;->zzesw:Lcom/google/android/gms/internal/ads/zzbky;

    const-class v1, Lcom/google/android/gms/internal/ads/zzbky;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzepe;->zza(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkm;->zzfjy:Lcom/google/android/gms/internal/ads/zzdsp;

    if-nez v0, :cond_19

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdsp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdsp;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkm;->zzfjy:Lcom/google/android/gms/internal/ads/zzdsp;

    .line 11
    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkm;->zzfjz:Lcom/google/android/gms/internal/ads/zzblh;

    if-nez v0, :cond_24

    .line 12
    new-instance v0, Lcom/google/android/gms/internal/ads/zzblh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzblh;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkm;->zzfjz:Lcom/google/android/gms/internal/ads/zzblh;

    .line 13
    :cond_24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkm;->zzfka:Lcom/google/android/gms/internal/ads/zzdpf;

    if-nez v0, :cond_2f

    .line 14
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdpf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdpf;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkm;->zzfka:Lcom/google/android/gms/internal/ads/zzdpf;

    .line 15
    :cond_2f
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbjv;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbkm;->zzesx:Lcom/google/android/gms/internal/ads/zzbja;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbkm;->zzesw:Lcom/google/android/gms/internal/ads/zzbky;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbkm;->zzfjy:Lcom/google/android/gms/internal/ads/zzdsp;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbkm;->zzfjz:Lcom/google/android/gms/internal/ads/zzblh;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzbkm;->zzfka:Lcom/google/android/gms/internal/ads/zzdpf;

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzbjv;-><init>(Lcom/google/android/gms/internal/ads/zzbja;Lcom/google/android/gms/internal/ads/zzbky;Lcom/google/android/gms/internal/ads/zzdsp;Lcom/google/android/gms/internal/ads/zzblh;Lcom/google/android/gms/internal/ads/zzdpf;Lcom/google/android/gms/internal/ads/zzbju;)V

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzbja;)Lcom/google/android/gms/internal/ads/zzbkm;
    .registers 2

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzepe;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbja;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbkm;->zzesx:Lcom/google/android/gms/internal/ads/zzbja;

    return-object p0
.end method
