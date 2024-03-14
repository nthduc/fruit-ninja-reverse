.class public final Lcom/google/android/gms/internal/ads/zzcwh;
.super Lcom/google/android/gms/internal/ads/zzcwe;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzcwe<",
        "Lcom/google/android/gms/internal/ads/zzcjg;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfbr:Lcom/google/android/gms/internal/ads/zzbys;

.field private final zzgpt:Lcom/google/android/gms/internal/ads/zzbix;

.field private final zzgpu:Lcom/google/android/gms/internal/ads/zzbtp$zza;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbix;Lcom/google/android/gms/internal/ads/zzbtp$zza;Lcom/google/android/gms/internal/ads/zzbys;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcwe;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcwh;->zzgpt:Lcom/google/android/gms/internal/ads/zzbix;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcwh;->zzgpu:Lcom/google/android/gms/internal/ads/zzbtp$zza;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcwh;->zzfbr:Lcom/google/android/gms/internal/ads/zzbys;

    return-void
.end method


# virtual methods
.method protected final zza(Lcom/google/android/gms/internal/ads/zzdok;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdok;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Lcom/google/android/gms/internal/ads/zzcjg;",
            ">;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwh;->zzgpt:Lcom/google/android/gms/internal/ads/zzbix;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbix;->zzadv()Lcom/google/android/gms/internal/ads/zzcjm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcwh;->zzgpu:Lcom/google/android/gms/internal/ads/zzbtp$zza;

    .line 8
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzbtp$zza;->zza(Lcom/google/android/gms/internal/ads/zzdok;)Lcom/google/android/gms/internal/ads/zzbtp$zza;

    move-result-object p1

    .line 9
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzbtp$zza;->zzf(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzbtp$zza;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbtp$zza;->zzajv()Lcom/google/android/gms/internal/ads/zzbtp;

    move-result-object p1

    .line 11
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzcjm;->zzf(Lcom/google/android/gms/internal/ads/zzbtp;)Lcom/google/android/gms/internal/ads/zzcjm;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcwh;->zzfbr:Lcom/google/android/gms/internal/ads/zzbys;

    .line 12
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzcjm;->zzf(Lcom/google/android/gms/internal/ads/zzbys;)Lcom/google/android/gms/internal/ads/zzcjm;

    move-result-object p1

    .line 13
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcjm;->zzagl()Lcom/google/android/gms/internal/ads/zzcjj;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcjj;->zzaev()Lcom/google/android/gms/internal/ads/zzbrl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbrl;->zzajh()Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1
.end method
