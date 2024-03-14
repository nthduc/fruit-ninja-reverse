.class final synthetic Lcom/google/android/gms/internal/ads/zzakm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/common/util/Predicate;


# instance fields
.field private final zzdha:Lcom/google/android/gms/internal/ads/zzahq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzahq;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakm;->zzdha:Lcom/google/android/gms/internal/ads/zzahq;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakm;->zzdha:Lcom/google/android/gms/internal/ads/zzahq;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzahq;

    .line 2
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzakp;

    if-eqz v1, :cond_16

    check-cast p1, Lcom/google/android/gms/internal/ads/zzakp;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakp;->zza(Lcom/google/android/gms/internal/ads/zzakp;)Lcom/google/android/gms/internal/ads/zzahq;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    return p1

    :cond_16
    const/4 p1, 0x0

    return p1
.end method
