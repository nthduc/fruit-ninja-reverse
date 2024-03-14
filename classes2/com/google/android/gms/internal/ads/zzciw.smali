.class public final Lcom/google/android/gms/internal/ads/zzciw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final zzeot:Lcom/google/android/gms/internal/ads/zzdnv;

.field private final zzeou:Lcom/google/android/gms/internal/ads/zzdnw;

.field private final zzfsg:Lcom/google/android/gms/internal/ads/zzbvh;

.field private final zzfwy:Lcom/google/android/gms/internal/ads/zzbwa;

.field private final zzfxw:Lcom/google/android/gms/internal/ads/zzbuc;

.field private final zzges:Lcom/google/android/gms/internal/ads/zzbvv;

.field private final zzget:Lcom/google/android/gms/internal/ads/zzbyf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbuc;Lcom/google/android/gms/internal/ads/zzbvh;Lcom/google/android/gms/internal/ads/zzbvv;Lcom/google/android/gms/internal/ads/zzbwa;Lcom/google/android/gms/internal/ads/zzbyf;Lcom/google/android/gms/internal/ads/zzdnv;Lcom/google/android/gms/internal/ads/zzdnw;)V
    .registers 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzciw;->zzfxw:Lcom/google/android/gms/internal/ads/zzbuc;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzciw;->zzfsg:Lcom/google/android/gms/internal/ads/zzbvh;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzciw;->zzges:Lcom/google/android/gms/internal/ads/zzbvv;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzciw;->zzfwy:Lcom/google/android/gms/internal/ads/zzbwa;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzciw;->zzget:Lcom/google/android/gms/internal/ads/zzbyf;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzciw;->zzeot:Lcom/google/android/gms/internal/ads/zzdnv;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzciw;->zzeou:Lcom/google/android/gms/internal/ads/zzdnw;

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzcil;)V
    .registers 8

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcil;->zza(Lcom/google/android/gms/internal/ads/zzcil;)Lcom/google/android/gms/internal/ads/zzcit;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzciw;->zzfxw:Lcom/google/android/gms/internal/ads/zzbuc;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzciw;->zzges:Lcom/google/android/gms/internal/ads/zzbvv;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzciw;->zzfwy:Lcom/google/android/gms/internal/ads/zzbwa;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzciw;->zzget:Lcom/google/android/gms/internal/ads/zzbyf;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzciw;->zzfsg:Lcom/google/android/gms/internal/ads/zzbvh;

    .line 11
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzciv;->zza(Lcom/google/android/gms/internal/ads/zzbvh;)Lcom/google/android/gms/ads/internal/overlay/zzv;

    move-result-object v5

    .line 12
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzcit;->zza(Lcom/google/android/gms/internal/ads/zzcit;Lcom/google/android/gms/internal/ads/zzux;Lcom/google/android/gms/internal/ads/zzagt;Lcom/google/android/gms/ads/internal/overlay/zzp;Lcom/google/android/gms/internal/ads/zzagv;Lcom/google/android/gms/ads/internal/overlay/zzv;)V

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzciw;->zzeot:Lcom/google/android/gms/internal/ads/zzdnv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzciw;->zzeou:Lcom/google/android/gms/internal/ads/zzdnw;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcil;->zza(Lcom/google/android/gms/internal/ads/zzdnv;Lcom/google/android/gms/internal/ads/zzdnw;)V

    return-void
.end method
