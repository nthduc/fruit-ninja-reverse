.class public final Lcom/google/android/gms/internal/ads/zzcwd;
.super Lcom/google/android/gms/internal/ads/zzcwe;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzcwe<",
        "Lcom/google/android/gms/internal/ads/zzboq;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzeve:Lcom/google/android/gms/internal/ads/zzccw;

.field private final zzfbr:Lcom/google/android/gms/internal/ads/zzbys;

.field private final zzfig:Lcom/google/android/gms/internal/ads/zzcyn;

.field private final zzfpw:Landroid/view/ViewGroup;

.field private final zzfrk:Lcom/google/android/gms/internal/ads/zzbwk;

.field private final zzgpt:Lcom/google/android/gms/internal/ads/zzbix;

.field private final zzgpu:Lcom/google/android/gms/internal/ads/zzbtp$zza;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbix;Lcom/google/android/gms/internal/ads/zzbtp$zza;Lcom/google/android/gms/internal/ads/zzcyn;Lcom/google/android/gms/internal/ads/zzbys;Lcom/google/android/gms/internal/ads/zzccw;Lcom/google/android/gms/internal/ads/zzbwk;Landroid/view/ViewGroup;)V
    .registers 8
    .param p7    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcwe;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcwd;->zzgpt:Lcom/google/android/gms/internal/ads/zzbix;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcwd;->zzgpu:Lcom/google/android/gms/internal/ads/zzbtp$zza;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcwd;->zzfig:Lcom/google/android/gms/internal/ads/zzcyn;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcwd;->zzfbr:Lcom/google/android/gms/internal/ads/zzbys;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcwd;->zzeve:Lcom/google/android/gms/internal/ads/zzccw;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzcwd;->zzfrk:Lcom/google/android/gms/internal/ads/zzbwk;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzcwd;->zzfpw:Landroid/view/ViewGroup;

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
            "Lcom/google/android/gms/internal/ads/zzboq;",
            ">;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwd;->zzgpt:Lcom/google/android/gms/internal/ads/zzbix;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbix;->zzadp()Lcom/google/android/gms/internal/ads/zzbpl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcwd;->zzgpu:Lcom/google/android/gms/internal/ads/zzbtp$zza;

    .line 12
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzbtp$zza;->zza(Lcom/google/android/gms/internal/ads/zzdok;)Lcom/google/android/gms/internal/ads/zzbtp$zza;

    move-result-object p1

    .line 13
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzbtp$zza;->zzf(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzbtp$zza;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbtp$zza;->zzajv()Lcom/google/android/gms/internal/ads/zzbtp;

    move-result-object p1

    .line 15
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbpl;->zzd(Lcom/google/android/gms/internal/ads/zzbtp;)Lcom/google/android/gms/internal/ads/zzbpl;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcwd;->zzfbr:Lcom/google/android/gms/internal/ads/zzbys;

    .line 16
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzbpl;->zzd(Lcom/google/android/gms/internal/ads/zzbys;)Lcom/google/android/gms/internal/ads/zzbpl;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcwd;->zzfig:Lcom/google/android/gms/internal/ads/zzcyn;

    .line 17
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzbpl;->zza(Lcom/google/android/gms/internal/ads/zzcyn;)Lcom/google/android/gms/internal/ads/zzbpl;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcwd;->zzeve:Lcom/google/android/gms/internal/ads/zzccw;

    .line 18
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzbpl;->zzb(Lcom/google/android/gms/internal/ads/zzccw;)Lcom/google/android/gms/internal/ads/zzbpl;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzbqh;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwd;->zzfrk:Lcom/google/android/gms/internal/ads/zzbwk;

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzbqh;-><init>(Lcom/google/android/gms/internal/ads/zzbwk;)V

    .line 19
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzbpl;->zza(Lcom/google/android/gms/internal/ads/zzbqh;)Lcom/google/android/gms/internal/ads/zzbpl;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzbol;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwd;->zzfpw:Landroid/view/ViewGroup;

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzbol;-><init>(Landroid/view/ViewGroup;)V

    .line 20
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzbpl;->zzc(Lcom/google/android/gms/internal/ads/zzbol;)Lcom/google/android/gms/internal/ads/zzbpl;

    move-result-object p1

    .line 21
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbpl;->zzafw()Lcom/google/android/gms/internal/ads/zzbpm;

    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbpm;->zzaev()Lcom/google/android/gms/internal/ads/zzbrl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbrl;->zzajh()Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1
.end method
