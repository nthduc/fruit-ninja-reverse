.class public final Lcom/google/android/gms/internal/ads/zzdvg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# static fields
.field private static final zzhoq:Lcom/google/android/gms/internal/ads/zzdvd;

.field private static volatile zzhor:Lcom/google/android/gms/internal/ads/zzdvd;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdvi;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdvi;-><init>(Lcom/google/android/gms/internal/ads/zzdvf;)V

    .line 3
    sput-object v0, Lcom/google/android/gms/internal/ads/zzdvg;->zzhoq:Lcom/google/android/gms/internal/ads/zzdvd;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdvg;->zzhor:Lcom/google/android/gms/internal/ads/zzdvd;

    return-void
.end method

.method public static zzaxc()Lcom/google/android/gms/internal/ads/zzdvd;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdvg;->zzhor:Lcom/google/android/gms/internal/ads/zzdvd;

    return-object v0
.end method
