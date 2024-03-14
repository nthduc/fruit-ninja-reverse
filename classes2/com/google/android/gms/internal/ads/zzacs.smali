.class public final Lcom/google/android/gms/internal/ads/zzacs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# static fields
.field public static zzday:Lcom/google/android/gms/internal/ads/zzaci;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzaci<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static zzdaz:Lcom/google/android/gms/internal/ads/zzaci;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzaci<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static zzdba:Lcom/google/android/gms/internal/ads/zzaci;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzaci<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    const-string v1, "gad:force_dynamite_loading_enabled"

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaci;->zzg(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzaci;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzacs;->zzday:Lcom/google/android/gms/internal/ads/zzaci;

    const-string v1, "gads:uri_query_to_map_rewrite:enabled"

    .line 4
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaci;->zzg(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzaci;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzacs;->zzdaz:Lcom/google/android/gms/internal/ads/zzaci;

    const-string v1, "gads:sdk_csi_write_to_file"

    .line 6
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaci;->zzg(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzaci;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzacs;->zzdba:Lcom/google/android/gms/internal/ads/zzaci;

    return-void
.end method
