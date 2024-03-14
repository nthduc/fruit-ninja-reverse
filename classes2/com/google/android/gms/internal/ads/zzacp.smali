.class public final Lcom/google/android/gms/internal/ads/zzacp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# static fields
.field public static zzdan:Lcom/google/android/gms/internal/ads/zzaci;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzaci<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public static zzdao:Lcom/google/android/gms/internal/ads/zzaci;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzaci<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static zzdap:Lcom/google/android/gms/internal/ads/zzaci;
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
    .registers 3

    const-string v0, "gads:csi_reporting_ratio"

    const-wide v1, 0x3fa999999999999aL    # 0.05

    .line 2
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaci;->zzb(Ljava/lang/String;D)Lcom/google/android/gms/internal/ads/zzaci;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzacp;->zzdan:Lcom/google/android/gms/internal/ads/zzaci;

    const-string v0, "gads:sdk_csi_server"

    const-string v1, "https://csi.gstatic.com/csi"

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaci;->zzi(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaci;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzacp;->zzdao:Lcom/google/android/gms/internal/ads/zzaci;

    const-string v0, "gads:enabled_sdk_csi"

    const/4 v1, 0x0

    .line 6
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaci;->zzg(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzaci;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzacp;->zzdap:Lcom/google/android/gms/internal/ads/zzaci;

    return-void
.end method
