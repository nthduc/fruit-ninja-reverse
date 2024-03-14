.class final Lcom/google/android/gms/internal/ads/zzbkx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdan;


# instance fields
.field private zzevb:Lcom/google/android/gms/internal/ads/zzbtp;

.field private final synthetic zzfbq:Lcom/google/android/gms/internal/ads/zzbjv;

.field private zzflx:Lcom/google/android/gms/internal/ads/zzdbd;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbjv;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbkx;->zzfbq:Lcom/google/android/gms/internal/ads/zzbjv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbjv;Lcom/google/android/gms/internal/ads/zzbju;)V
    .registers 3

    .line 17
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbkx;-><init>(Lcom/google/android/gms/internal/ads/zzbjv;)V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzdbd;)Lcom/google/android/gms/internal/ads/zzdan;
    .registers 2

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzepe;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdbd;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbkx;->zzflx:Lcom/google/android/gms/internal/ads/zzdbd;

    return-object p0
.end method

.method public final zzagt()Lcom/google/android/gms/internal/ads/zzdao;
    .registers 13

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkx;->zzevb:Lcom/google/android/gms/internal/ads/zzbtp;

    const-class v1, Lcom/google/android/gms/internal/ads/zzbtp;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzepe;->zza(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkx;->zzflx:Lcom/google/android/gms/internal/ads/zzdbd;

    const-class v1, Lcom/google/android/gms/internal/ads/zzdbd;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzepe;->zza(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbkw;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbkx;->zzfbq:Lcom/google/android/gms/internal/ads/zzbjv;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbkx;->zzflx:Lcom/google/android/gms/internal/ads/zzdbd;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzbrr;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzbrr;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/ads/zzcni;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzcni;-><init>()V

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzbkx;->zzevb:Lcom/google/android/gms/internal/ads/zzbtp;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzdpp;

    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/zzdpp;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lcom/google/android/gms/internal/ads/zzbkw;-><init>(Lcom/google/android/gms/internal/ads/zzbjv;Lcom/google/android/gms/internal/ads/zzdbd;Lcom/google/android/gms/internal/ads/zzbrr;Lcom/google/android/gms/internal/ads/zzcni;Lcom/google/android/gms/internal/ads/zzbtp;Lcom/google/android/gms/internal/ads/zzdpp;Lcom/google/android/gms/internal/ads/zzdmd;Lcom/google/android/gms/internal/ads/zzdlf;Lcom/google/android/gms/internal/ads/zzbju;)V

    return-object v0
.end method

.method public final synthetic zzg(Lcom/google/android/gms/internal/ads/zzbtp;)Lcom/google/android/gms/internal/ads/zzdan;
    .registers 2

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzepe;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbtp;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbkx;->zzevb:Lcom/google/android/gms/internal/ads/zzbtp;

    return-object p0
.end method

.method public final synthetic zzg(Lcom/google/android/gms/internal/ads/zzbys;)Lcom/google/android/gms/internal/ads/zzdan;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzepe;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
