.class public final Lcom/google/android/gms/internal/ads/zzbnn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final zzevd:Lcom/google/android/gms/internal/ads/zzdog;

.field private final zzfpk:Lcom/google/android/gms/internal/ads/zzcmu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcmu;Lcom/google/android/gms/internal/ads/zzdog;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbnn;->zzfpk:Lcom/google/android/gms/internal/ads/zzcmu;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbnn;->zzevd:Lcom/google/android/gms/internal/ads/zzdog;

    return-void
.end method


# virtual methods
.method public final zzfd(J)V
    .registers 6

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnn;->zzfpk:Lcom/google/android/gms/internal/ads/zzcmu;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcmu;->zzapf()Lcom/google/android/gms/internal/ads/zzcmt;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbnn;->zzevd:Lcom/google/android/gms/internal/ads/zzdog;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdog;->zzhew:Lcom/google/android/gms/internal/ads/zzdoe;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdoe;->zzeou:Lcom/google/android/gms/internal/ads/zzdnw;

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcmt;->zza(Lcom/google/android/gms/internal/ads/zzdnw;)Lcom/google/android/gms/internal/ads/zzcmt;

    move-result-object v0

    const-string v1, "action"

    const-string v2, "ad_closed"

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcmt;->zzr(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcmt;

    move-result-object v0

    .line 9
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "show_time"

    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzcmt;->zzr(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcmt;

    move-result-object p1

    const-string p2, "ad_format"

    const-string v0, "appopen"

    .line 10
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzcmt;->zzr(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcmt;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcmt;->zzapc()V

    return-void
.end method
