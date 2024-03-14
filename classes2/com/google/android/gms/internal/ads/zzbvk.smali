.class final synthetic Lcom/google/android/gms/internal/ads/zzbvk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbyt;


# instance fields
.field private final zzdgm:Ljava/lang/String;

.field private final zzdjk:Ljava/lang/String;

.field private final zzfuw:Lcom/google/android/gms/internal/ads/zzatw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzatw;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbvk;->zzfuw:Lcom/google/android/gms/internal/ads/zzatw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbvk;->zzdgm:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbvk;->zzdjk:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzp(Ljava/lang/Object;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvk;->zzfuw:Lcom/google/android/gms/internal/ads/zzatw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbvk;->zzdgm:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbvk;->zzdjk:Ljava/lang/String;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbuh;

    .line 2
    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbuh;->zzb(Lcom/google/android/gms/internal/ads/zzatw;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
