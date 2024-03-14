.class final Lcom/google/android/gms/internal/ads/zzbkf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbnp;


# instance fields
.field private zzevb:Lcom/google/android/gms/internal/ads/zzbtp;

.field private zzevd:Lcom/google/android/gms/internal/ads/zzdog;

.field private zzevf:Lcom/google/android/gms/internal/ads/zzdmd;

.field private zzevg:Lcom/google/android/gms/internal/ads/zzdlf;

.field private final synthetic zzfbq:Lcom/google/android/gms/internal/ads/zzbjv;

.field private zzfbr:Lcom/google/android/gms/internal/ads/zzbys;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbjv;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbkf;->zzfbq:Lcom/google/android/gms/internal/ads/zzbjv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbjv;Lcom/google/android/gms/internal/ads/zzbju;)V
    .registers 3

    .line 31
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbkf;-><init>(Lcom/google/android/gms/internal/ads/zzbjv;)V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzdlf;)Lcom/google/android/gms/internal/ads/zzbtq;
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbkf;->zzevg:Lcom/google/android/gms/internal/ads/zzdlf;

    return-object p0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzdmd;)Lcom/google/android/gms/internal/ads/zzbtq;
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbkf;->zzevf:Lcom/google/android/gms/internal/ads/zzdmd;

    return-object p0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzdog;)Lcom/google/android/gms/internal/ads/zzbtq;
    .registers 2

    .line 28
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbkf;->zzevd:Lcom/google/android/gms/internal/ads/zzdog;

    return-object p0
.end method

.method public final synthetic zzaey()Ljava/lang/Object;
    .registers 16

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkf;->zzfbr:Lcom/google/android/gms/internal/ads/zzbys;

    const-class v1, Lcom/google/android/gms/internal/ads/zzbys;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzepe;->zza(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkf;->zzevb:Lcom/google/android/gms/internal/ads/zzbtp;

    const-class v1, Lcom/google/android/gms/internal/ads/zzbtp;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzepe;->zza(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 17
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbke;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbkf;->zzfbq:Lcom/google/android/gms/internal/ads/zzbjv;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzbrr;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzbrr;-><init>()V

    new-instance v5, Lcom/google/android/gms/internal/ads/zzdph;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzdph;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/ads/zzbsz;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzbsz;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/ads/zzcni;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzcni;-><init>()V

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzbkf;->zzfbr:Lcom/google/android/gms/internal/ads/zzbys;

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzbkf;->zzevb:Lcom/google/android/gms/internal/ads/zzbtp;

    new-instance v10, Lcom/google/android/gms/internal/ads/zzdpp;

    invoke-direct {v10}, Lcom/google/android/gms/internal/ads/zzdpp;-><init>()V

    iget-object v11, p0, Lcom/google/android/gms/internal/ads/zzbkf;->zzevd:Lcom/google/android/gms/internal/ads/zzdog;

    iget-object v12, p0, Lcom/google/android/gms/internal/ads/zzbkf;->zzevf:Lcom/google/android/gms/internal/ads/zzdmd;

    iget-object v13, p0, Lcom/google/android/gms/internal/ads/zzbkf;->zzevg:Lcom/google/android/gms/internal/ads/zzdlf;

    const/4 v14, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lcom/google/android/gms/internal/ads/zzbke;-><init>(Lcom/google/android/gms/internal/ads/zzbjv;Lcom/google/android/gms/internal/ads/zzbrr;Lcom/google/android/gms/internal/ads/zzdph;Lcom/google/android/gms/internal/ads/zzbsz;Lcom/google/android/gms/internal/ads/zzcni;Lcom/google/android/gms/internal/ads/zzbys;Lcom/google/android/gms/internal/ads/zzbtp;Lcom/google/android/gms/internal/ads/zzdpp;Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdmd;Lcom/google/android/gms/internal/ads/zzdlf;Lcom/google/android/gms/internal/ads/zzbju;)V

    return-object v0
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/ads/zzbol;)Lcom/google/android/gms/internal/ads/zzbnp;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzepe;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final synthetic zzc(Lcom/google/android/gms/internal/ads/zzbtp;)Lcom/google/android/gms/internal/ads/zzbnp;
    .registers 2

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzepe;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbtp;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbkf;->zzevb:Lcom/google/android/gms/internal/ads/zzbtp;

    return-object p0
.end method

.method public final synthetic zzc(Lcom/google/android/gms/internal/ads/zzbys;)Lcom/google/android/gms/internal/ads/zzbnp;
    .registers 2

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzepe;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbys;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbkf;->zzfbr:Lcom/google/android/gms/internal/ads/zzbys;

    return-object p0
.end method
