.class public final Lcom/google/android/gms/internal/ads/zzacq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# static fields
.field public static zzdaq:Lcom/google/android/gms/internal/ads/zzaci;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzaci<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static zzdar:Lcom/google/android/gms/internal/ads/zzaci;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzaci<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static zzdas:Lcom/google/android/gms/internal/ads/zzaci;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzaci<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static zzdat:Lcom/google/android/gms/internal/ads/zzaci;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzaci<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static zzdau:Lcom/google/android/gms/internal/ads/zzaci;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzaci<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static zzdav:Lcom/google/android/gms/internal/ads/zzaci;
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
    .registers 6

    const-wide/16 v0, 0x1

    const-string v2, "gads:content_age_weight"

    .line 2
    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzaci;->zzb(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/zzaci;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/internal/ads/zzacq;->zzdaq:Lcom/google/android/gms/internal/ads/zzaci;

    const-string v2, "gads:enable_content_fetching"

    const/4 v3, 0x1

    .line 4
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzaci;->zzg(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzaci;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/internal/ads/zzacq;->zzdar:Lcom/google/android/gms/internal/ads/zzaci;

    const-wide/16 v2, 0xa

    const-string v4, "gads:fingerprint_number"

    .line 6
    invoke-static {v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzaci;->zzb(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/zzaci;

    move-result-object v4

    sput-object v4, Lcom/google/android/gms/internal/ads/zzacq;->zzdas:Lcom/google/android/gms/internal/ads/zzaci;

    const-string v4, "gads:content_length_weight"

    .line 8
    invoke-static {v4, v0, v1}, Lcom/google/android/gms/internal/ads/zzaci;->zzb(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/zzaci;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzacq;->zzdat:Lcom/google/android/gms/internal/ads/zzaci;

    const-string v0, "gads:min_content_len"

    const-wide/16 v4, 0xb

    .line 10
    invoke-static {v0, v4, v5}, Lcom/google/android/gms/internal/ads/zzaci;->zzb(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/zzaci;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzacq;->zzdau:Lcom/google/android/gms/internal/ads/zzaci;

    const-string v0, "gads:sleep_sec"

    .line 12
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzaci;->zzb(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/zzaci;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzacq;->zzdav:Lcom/google/android/gms/internal/ads/zzaci;

    return-void
.end method
