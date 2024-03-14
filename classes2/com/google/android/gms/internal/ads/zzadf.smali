.class public final Lcom/google/android/gms/internal/ads/zzadf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# static fields
.field private static zzdco:Lcom/google/android/gms/internal/ads/zzaci;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzaci<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static zzdcp:Lcom/google/android/gms/internal/ads/zzaci;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzaci<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static zzdcq:Lcom/google/android/gms/internal/ads/zzaci;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzaci<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-wide/32 v0, 0xea60

    const-string v2, "gads:ad_loader:timeout_ms"

    .line 2
    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzaci;->zzb(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/zzaci;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/internal/ads/zzadf;->zzdco:Lcom/google/android/gms/internal/ads/zzaci;

    const-string v2, "gads:rendering:timeout_ms"

    .line 4
    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzaci;->zzb(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/zzaci;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzadf;->zzdcp:Lcom/google/android/gms/internal/ads/zzaci;

    const-string v0, "gads:resolve_future:default_timeout_ms"

    const-wide/16 v1, 0x7530

    .line 6
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaci;->zzb(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/zzaci;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzadf;->zzdcq:Lcom/google/android/gms/internal/ads/zzaci;

    return-void
.end method
