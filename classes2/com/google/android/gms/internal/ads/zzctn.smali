.class final Lcom/google/android/gms/internal/ads/zzctn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzccm;


# instance fields
.field private final zzbot:Lcom/google/android/gms/internal/ads/zzbbx;

.field private final zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

.field private final zzgah:Lcom/google/android/gms/internal/ads/zzdnv;

.field private final zzgod:Lcom/google/android/gms/internal/ads/zzdzc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Lcom/google/android/gms/internal/ads/zzbnx;",
            ">;"
        }
    .end annotation
.end field

.field private final zzgoe:Lcom/google/android/gms/internal/ads/zzbgj;

.field private final zzvr:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbx;Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdnv;Lcom/google/android/gms/internal/ads/zzbgj;Lcom/google/android/gms/internal/ads/zzdok;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/zzbbx;",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Lcom/google/android/gms/internal/ads/zzbnx;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzdnv;",
            "Lcom/google/android/gms/internal/ads/zzbgj;",
            "Lcom/google/android/gms/internal/ads/zzdok;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzctn;->zzvr:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzctn;->zzbot:Lcom/google/android/gms/internal/ads/zzbbx;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzctn;->zzgod:Lcom/google/android/gms/internal/ads/zzdzc;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzctn;->zzgah:Lcom/google/android/gms/internal/ads/zzdnv;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzctn;->zzgoe:Lcom/google/android/gms/internal/ads/zzbgj;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzctn;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    return-void
.end method


# virtual methods
.method public final zza(ZLandroid/content/Context;)V
    .registers 19

    move-object/from16 v0, p0

    .line 9
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzctn;->zzgod:Lcom/google/android/gms/internal/ads/zzdzc;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdyq;->zzb(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbnx;

    .line 10
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzctn;->zzgoe:Lcom/google/android/gms/internal/ads/zzbgj;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzbgj;->zzba(Z)V

    .line 11
    new-instance v2, Lcom/google/android/gms/ads/internal/zzi;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzctn;->zzgah:Lcom/google/android/gms/internal/ads/zzdnv;

    iget-boolean v11, v4, Lcom/google/android/gms/internal/ads/zzdnv;->zzfph:Z

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v12, 0x0

    move-object v4, v2

    move/from16 v10, p1

    invoke-direct/range {v4 .. v12}, Lcom/google/android/gms/ads/internal/zzi;-><init>(ZZZFIZZZ)V

    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkq()Lcom/google/android/gms/ads/internal/overlay/zzl;

    new-instance v15, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbnx;->zzafr()Lcom/google/android/gms/internal/ads/zzccc;

    move-result-object v6

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzctn;->zzgoe:Lcom/google/android/gms/internal/ads/zzbgj;

    .line 15
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzctn;->zzgah:Lcom/google/android/gms/internal/ads/zzdnv;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzdnv;->zzhea:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_3a

    .line 16
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzctn;->zzgah:Lcom/google/android/gms/internal/ads/zzdnv;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzdnv;->zzhea:I

    :goto_38
    move v9, v1

    goto :goto_67

    .line 17
    :cond_3a
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzctn;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdok;->zzhfe:Lcom/google/android/gms/internal/ads/zzvs;

    if-eqz v1, :cond_5d

    .line 18
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzctn;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdok;->zzhfe:Lcom/google/android/gms/internal/ads/zzvs;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzvs;->orientation:I

    if-ne v1, v3, :cond_4e

    .line 19
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkt()Lcom/google/android/gms/internal/ads/zzazd;

    const/4 v1, 0x7

    const/4 v9, 0x7

    goto :goto_67

    .line 20
    :cond_4e
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzctn;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdok;->zzhfe:Lcom/google/android/gms/internal/ads/zzvs;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzvs;->orientation:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_5d

    .line 21
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkt()Lcom/google/android/gms/internal/ads/zzazd;

    const/4 v1, 0x6

    const/4 v9, 0x6

    goto :goto_67

    :cond_5d
    const-string v1, "Error setting app open orientation; no targeting orientation available."

    .line 22
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzayp;->zzef(Ljava/lang/String;)V

    .line 23
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzctn;->zzgah:Lcom/google/android/gms/internal/ads/zzdnv;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzdnv;->zzhea:I

    goto :goto_38

    .line 24
    :goto_67
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzctn;->zzbot:Lcom/google/android/gms/internal/ads/zzbbx;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzctn;->zzgah:Lcom/google/android/gms/internal/ads/zzdnv;

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzdnv;->zzdss:Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzctn;->zzgah:Lcom/google/android/gms/internal/ads/zzdnv;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdnv;->zzhdr:Lcom/google/android/gms/internal/ads/zzdny;

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzdny;->zzdpn:Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzctn;->zzgah:Lcom/google/android/gms/internal/ads/zzdnv;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdnv;->zzhdr:Lcom/google/android/gms/internal/ads/zzdny;

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/zzdny;->zzdpp:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v4, v15

    move-object v12, v2

    invoke-direct/range {v4 .. v14}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/zzux;Lcom/google/android/gms/ads/internal/overlay/zzp;Lcom/google/android/gms/ads/internal/overlay/zzv;Lcom/google/android/gms/internal/ads/zzbgj;ILcom/google/android/gms/internal/ads/zzbbx;Ljava/lang/String;Lcom/google/android/gms/ads/internal/zzi;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, p2

    .line 26
    invoke-static {v1, v15, v3}, Lcom/google/android/gms/ads/internal/overlay/zzl;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    return-void
.end method
