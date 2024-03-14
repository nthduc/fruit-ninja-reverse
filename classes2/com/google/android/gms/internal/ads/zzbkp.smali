.class final Lcom/google/android/gms/internal/ads/zzbkp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzccd;


# instance fields
.field private zzevb:Lcom/google/android/gms/internal/ads/zzbtp;

.field private zzevd:Lcom/google/android/gms/internal/ads/zzdog;

.field private zzevf:Lcom/google/android/gms/internal/ads/zzdmd;

.field private zzevg:Lcom/google/android/gms/internal/ads/zzdlf;

.field private final synthetic zzfbq:Lcom/google/android/gms/internal/ads/zzbjv;

.field private zzfbr:Lcom/google/android/gms/internal/ads/zzbys;

.field private zzfig:Lcom/google/android/gms/internal/ads/zzcyn;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbjv;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbkp;->zzfbq:Lcom/google/android/gms/internal/ads/zzbjv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbjv;Lcom/google/android/gms/internal/ads/zzbju;)V
    .registers 3

    .line 31
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbkp;-><init>(Lcom/google/android/gms/internal/ads/zzbjv;)V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzdlf;)Lcom/google/android/gms/internal/ads/zzbtq;
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbkp;->zzevg:Lcom/google/android/gms/internal/ads/zzdlf;

    return-object p0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzdmd;)Lcom/google/android/gms/internal/ads/zzbtq;
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbkp;->zzevf:Lcom/google/android/gms/internal/ads/zzdmd;

    return-object p0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzdog;)Lcom/google/android/gms/internal/ads/zzbtq;
    .registers 2

    .line 28
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbkp;->zzevd:Lcom/google/android/gms/internal/ads/zzdog;

    return-object p0
.end method

.method public final synthetic zzaey()Ljava/lang/Object;
    .registers 2

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbkp;->zzagh()Lcom/google/android/gms/internal/ads/zzcce;

    move-result-object v0

    return-object v0
.end method

.method public final zzagh()Lcom/google/android/gms/internal/ads/zzcce;
    .registers 18

    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbkp;->zzfbr:Lcom/google/android/gms/internal/ads/zzbys;

    const-class v2, Lcom/google/android/gms/internal/ads/zzbys;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzepe;->zza(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbkp;->zzevb:Lcom/google/android/gms/internal/ads/zzbtp;

    const-class v2, Lcom/google/android/gms/internal/ads/zzbtp;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzepe;->zza(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 4
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbkp;->zzfig:Lcom/google/android/gms/internal/ads/zzcyn;

    const-class v2, Lcom/google/android/gms/internal/ads/zzcyn;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzepe;->zza(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 5
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbko;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzbkp;->zzfbq:Lcom/google/android/gms/internal/ads/zzbjv;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzbrr;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzbrr;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/ads/zzdph;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzdph;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/ads/zzbsz;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzbsz;-><init>()V

    new-instance v8, Lcom/google/android/gms/internal/ads/zzcni;

    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/zzcni;-><init>()V

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzbkp;->zzfbr:Lcom/google/android/gms/internal/ads/zzbys;

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzbkp;->zzevb:Lcom/google/android/gms/internal/ads/zzbtp;

    new-instance v11, Lcom/google/android/gms/internal/ads/zzdpp;

    invoke-direct {v11}, Lcom/google/android/gms/internal/ads/zzdpp;-><init>()V

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzbkp;->zzfig:Lcom/google/android/gms/internal/ads/zzcyn;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzbkp;->zzevd:Lcom/google/android/gms/internal/ads/zzdog;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzbkp;->zzevf:Lcom/google/android/gms/internal/ads/zzdmd;

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzbkp;->zzevg:Lcom/google/android/gms/internal/ads/zzdlf;

    const/16 v16, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v16}, Lcom/google/android/gms/internal/ads/zzbko;-><init>(Lcom/google/android/gms/internal/ads/zzbjv;Lcom/google/android/gms/internal/ads/zzbrr;Lcom/google/android/gms/internal/ads/zzdph;Lcom/google/android/gms/internal/ads/zzbsz;Lcom/google/android/gms/internal/ads/zzcni;Lcom/google/android/gms/internal/ads/zzbys;Lcom/google/android/gms/internal/ads/zzbtp;Lcom/google/android/gms/internal/ads/zzdpp;Lcom/google/android/gms/internal/ads/zzcyn;Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdmd;Lcom/google/android/gms/internal/ads/zzdlf;Lcom/google/android/gms/internal/ads/zzbju;)V

    return-object v1
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/ads/zzcyn;)Lcom/google/android/gms/internal/ads/zzccd;
    .registers 2

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzepe;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcyn;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbkp;->zzfig:Lcom/google/android/gms/internal/ads/zzcyn;

    return-object p0
.end method

.method public final synthetic zze(Lcom/google/android/gms/internal/ads/zzbtp;)Lcom/google/android/gms/internal/ads/zzccd;
    .registers 2

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzepe;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbtp;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbkp;->zzevb:Lcom/google/android/gms/internal/ads/zzbtp;

    return-object p0
.end method

.method public final synthetic zze(Lcom/google/android/gms/internal/ads/zzbys;)Lcom/google/android/gms/internal/ads/zzccd;
    .registers 2

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzepe;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbys;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbkp;->zzfbr:Lcom/google/android/gms/internal/ads/zzbys;

    return-object p0
.end method
