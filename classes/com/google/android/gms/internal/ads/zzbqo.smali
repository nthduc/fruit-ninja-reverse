.class public Lcom/google/android/gms/internal/ads/zzbqo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field protected final zzeot:Lcom/google/android/gms/internal/ads/zzdnv;

.field protected final zzfmw:Lcom/google/android/gms/internal/ads/zzdog;

.field private final zzfrq:Lcom/google/android/gms/internal/ads/zzbvb;

.field private final zzfrr:Lcom/google/android/gms/internal/ads/zzbvr;

.field private final zzfrs:Lcom/google/android/gms/internal/ads/zzdls;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzfrt:Lcom/google/android/gms/internal/ads/zzbty;

.field private final zzfru:Lcom/google/android/gms/internal/ads/zzbwv;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/ads/zzbqn;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbqn;->zza(Lcom/google/android/gms/internal/ads/zzbqn;)Lcom/google/android/gms/internal/ads/zzdog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqo;->zzfmw:Lcom/google/android/gms/internal/ads/zzdog;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbqn;->zzb(Lcom/google/android/gms/internal/ads/zzbqn;)Lcom/google/android/gms/internal/ads/zzdnv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqo;->zzeot:Lcom/google/android/gms/internal/ads/zzdnv;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbqn;->zzc(Lcom/google/android/gms/internal/ads/zzbqn;)Lcom/google/android/gms/internal/ads/zzbvb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqo;->zzfrq:Lcom/google/android/gms/internal/ads/zzbvb;

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbqn;->zzd(Lcom/google/android/gms/internal/ads/zzbqn;)Lcom/google/android/gms/internal/ads/zzbvr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqo;->zzfrr:Lcom/google/android/gms/internal/ads/zzbvr;

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbqn;->zze(Lcom/google/android/gms/internal/ads/zzbqn;)Lcom/google/android/gms/internal/ads/zzdls;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqo;->zzfrs:Lcom/google/android/gms/internal/ads/zzdls;

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbqn;->zzf(Lcom/google/android/gms/internal/ads/zzbqn;)Lcom/google/android/gms/internal/ads/zzbty;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqo;->zzfrt:Lcom/google/android/gms/internal/ads/zzbty;

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbqn;->zzg(Lcom/google/android/gms/internal/ads/zzbqn;)Lcom/google/android/gms/internal/ads/zzbwv;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqo;->zzfru:Lcom/google/android/gms/internal/ads/zzbwv;

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 3

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqo;->zzfrq:Lcom/google/android/gms/internal/ads/zzbvb;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbvb;->zzcc(Landroid/content/Context;)V

    return-void
.end method

.method public zzaih()V
    .registers 2

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqo;->zzfrr:Lcom/google/android/gms/internal/ads/zzbvr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbvr;->onAdLoaded()V

    return-void
.end method

.method public final zzaiw()Lcom/google/android/gms/internal/ads/zzbvb;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqo;->zzfrq:Lcom/google/android/gms/internal/ads/zzbvb;

    return-object v0
.end method

.method public final zzaix()Lcom/google/android/gms/internal/ads/zzbty;
    .registers 2

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqo;->zzfrt:Lcom/google/android/gms/internal/ads/zzbty;

    return-object v0
.end method

.method public final zzaiy()Lcom/google/android/gms/internal/ads/zzdls;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqo;->zzfrs:Lcom/google/android/gms/internal/ads/zzdls;

    return-object v0
.end method

.method public final zzaiz()Lcom/google/android/gms/internal/ads/zzbxq;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqo;->zzfru:Lcom/google/android/gms/internal/ads/zzbwv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbwv;->zzaiz()Lcom/google/android/gms/internal/ads/zzbxq;

    move-result-object v0

    return-object v0
.end method
