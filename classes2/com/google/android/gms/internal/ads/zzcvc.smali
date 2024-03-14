.class final Lcom/google/android/gms/internal/ads/zzcvc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzccm;


# instance fields
.field private final zzbot:Lcom/google/android/gms/internal/ads/zzbbx;

.field private final zzgah:Lcom/google/android/gms/internal/ads/zzdnv;

.field private final zzgod:Lcom/google/android/gms/internal/ads/zzdzc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Lcom/google/android/gms/internal/ads/zzcbg;",
            ">;"
        }
    .end annotation
.end field

.field private final zzgoe:Lcom/google/android/gms/internal/ads/zzbgj;

.field private final zzvr:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbx;Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdnv;Lcom/google/android/gms/internal/ads/zzbgj;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/zzbbx;",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Lcom/google/android/gms/internal/ads/zzcbg;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzdnv;",
            "Lcom/google/android/gms/internal/ads/zzbgj;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvc;->zzvr:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcvc;->zzbot:Lcom/google/android/gms/internal/ads/zzbbx;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcvc;->zzgod:Lcom/google/android/gms/internal/ads/zzdzc;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcvc;->zzgah:Lcom/google/android/gms/internal/ads/zzdnv;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcvc;->zzgoe:Lcom/google/android/gms/internal/ads/zzbgj;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbx;Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdnv;Lcom/google/android/gms/internal/ads/zzbgj;Lcom/google/android/gms/internal/ads/zzcuz;)V
    .registers 7

    .line 17
    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/internal/ads/zzcvc;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbx;Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdnv;Lcom/google/android/gms/internal/ads/zzbgj;)V

    return-void
.end method


# virtual methods
.method public final zza(ZLandroid/content/Context;)V
    .registers 19

    move-object/from16 v0, p0

    .line 8
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcvc;->zzgod:Lcom/google/android/gms/internal/ads/zzdzc;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdyq;->zzb(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcbg;

    .line 9
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzcvc;->zzgoe:Lcom/google/android/gms/internal/ads/zzbgj;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzbgj;->zzba(Z)V

    .line 10
    new-instance v2, Lcom/google/android/gms/ads/internal/zzi;

    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkr()Lcom/google/android/gms/internal/ads/zzayu;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzcvc;->zzvr:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzayu;->zzbc(Landroid/content/Context;)Z

    move-result v6

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzcvc;->zzgah:Lcom/google/android/gms/internal/ads/zzdnv;

    iget-boolean v11, v4, Lcom/google/android/gms/internal/ads/zzdnv;->zzfph:Z

    const/4 v5, 0x0

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
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcbg;->zzafr()Lcom/google/android/gms/internal/ads/zzccc;

    move-result-object v6

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzcvc;->zzgoe:Lcom/google/android/gms/internal/ads/zzbgj;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcvc;->zzgah:Lcom/google/android/gms/internal/ads/zzdnv;

    iget v9, v1, Lcom/google/android/gms/internal/ads/zzdnv;->zzhea:I

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzcvc;->zzbot:Lcom/google/android/gms/internal/ads/zzbbx;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcvc;->zzgah:Lcom/google/android/gms/internal/ads/zzdnv;

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzdnv;->zzdss:Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcvc;->zzgah:Lcom/google/android/gms/internal/ads/zzdnv;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdnv;->zzhdr:Lcom/google/android/gms/internal/ads/zzdny;

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzdny;->zzdpn:Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcvc;->zzgah:Lcom/google/android/gms/internal/ads/zzdnv;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdnv;->zzhdr:Lcom/google/android/gms/internal/ads/zzdny;

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/zzdny;->zzdpp:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v4, v15

    move-object v12, v2

    invoke-direct/range {v4 .. v14}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/zzux;Lcom/google/android/gms/ads/internal/overlay/zzp;Lcom/google/android/gms/ads/internal/overlay/zzv;Lcom/google/android/gms/internal/ads/zzbgj;ILcom/google/android/gms/internal/ads/zzbbx;Ljava/lang/String;Lcom/google/android/gms/ads/internal/zzi;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, p2

    .line 15
    invoke-static {v1, v15, v3}, Lcom/google/android/gms/ads/internal/overlay/zzl;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    return-void
.end method
