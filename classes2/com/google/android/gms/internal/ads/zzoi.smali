.class public final Lcom/google/android/gms/internal/ads/zzoi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field public final zzbhw:Lcom/google/android/gms/internal/ads/zznp;

.field public final zzbhx:Lcom/google/android/gms/internal/ads/zzod;

.field public final zzbhy:Ljava/lang/Object;

.field public final zzbhz:[Lcom/google/android/gms/internal/ads/zzhz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zznp;Lcom/google/android/gms/internal/ads/zzod;Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/zzhz;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzoi;->zzbhw:Lcom/google/android/gms/internal/ads/zznp;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzoi;->zzbhx:Lcom/google/android/gms/internal/ads/zzod;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzoi;->zzbhy:Ljava/lang/Object;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzoi;->zzbhz:[Lcom/google/android/gms/internal/ads/zzhz;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzoi;I)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 9
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzoi;->zzbhx:Lcom/google/android/gms/internal/ads/zzod;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzod;->zzbg(I)Lcom/google/android/gms/internal/ads/zzob;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzoi;->zzbhx:Lcom/google/android/gms/internal/ads/zzod;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/ads/zzod;->zzbg(I)Lcom/google/android/gms/internal/ads/zzob;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzpq;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzoi;->zzbhz:[Lcom/google/android/gms/internal/ads/zzhz;

    aget-object v1, v1, p2

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzoi;->zzbhz:[Lcom/google/android/gms/internal/ads/zzhz;

    aget-object p1, p1, p2

    .line 10
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzpq;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    const/4 p1, 0x1

    return p1

    :cond_26
    return v0
.end method
