.class public Lcom/google/android/gms/internal/ads/zzcxa;
.super Lcom/google/android/gms/internal/ads/zzcyc;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private zzgqk:Lcom/google/android/gms/internal/ads/zzcal;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbuc;Lcom/google/android/gms/internal/ads/zzbuu;Lcom/google/android/gms/internal/ads/zzbvh;Lcom/google/android/gms/internal/ads/zzbvr;Lcom/google/android/gms/internal/ads/zzbuk;Lcom/google/android/gms/internal/ads/zzbyf;Lcom/google/android/gms/internal/ads/zzcau;Lcom/google/android/gms/internal/ads/zzbwa;Lcom/google/android/gms/internal/ads/zzcal;Lcom/google/android/gms/internal/ads/zzbxy;)V
    .registers 21

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p8

    move-object/from16 v7, p7

    move-object/from16 v8, p10

    move-object v9, p5

    .line 1
    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/zzcyc;-><init>(Lcom/google/android/gms/internal/ads/zzbuc;Lcom/google/android/gms/internal/ads/zzbuu;Lcom/google/android/gms/internal/ads/zzbvh;Lcom/google/android/gms/internal/ads/zzbvr;Lcom/google/android/gms/internal/ads/zzbyf;Lcom/google/android/gms/internal/ads/zzbwa;Lcom/google/android/gms/internal/ads/zzcau;Lcom/google/android/gms/internal/ads/zzbxy;Lcom/google/android/gms/internal/ads/zzbuk;)V

    move-object/from16 v1, p9

    .line 2
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcxa;->zzgqk:Lcom/google/android/gms/internal/ads/zzcal;

    return-void
.end method


# virtual methods
.method public final onVideoEnd()V
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxa;->zzgqk:Lcom/google/android/gms/internal/ads/zzcal;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcal;->zztb()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzaux;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzcyc;->zza(Lcom/google/android/gms/internal/ads/zzaux;)V

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxa;->zzgqk:Lcom/google/android/gms/internal/ads/zzcal;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzauv;

    .line 10
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaux;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaux;->getAmount()I

    move-result p1

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzauv;-><init>(Ljava/lang/String;I)V

    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcal;->zza(Lcom/google/android/gms/internal/ads/zzauv;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzauv;)V
    .registers 3

    .line 13
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzcyc;->zzb(Lcom/google/android/gms/internal/ads/zzauv;)V

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxa;->zzgqk:Lcom/google/android/gms/internal/ads/zzcal;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcal;->zza(Lcom/google/android/gms/internal/ads/zzauv;)V

    return-void
.end method

.method public final zzuc()V
    .registers 2

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxa;->zzgqk:Lcom/google/android/gms/internal/ads/zzcal;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcal;->zzta()V

    return-void
.end method

.method public final zzud()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxa;->zzgqk:Lcom/google/android/gms/internal/ads/zzcal;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcal;->zztb()V

    return-void
.end method
