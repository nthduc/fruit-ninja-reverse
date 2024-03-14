.class public final Lcom/google/android/gms/internal/ads/zzadc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# static fields
.field private static zzdci:Lcom/google/android/gms/internal/ads/zzaci;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzaci<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static zzdcj:Lcom/google/android/gms/internal/ads/zzaci;
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

    const-string v0, "gads:safe_browsing:api_key"

    const-string v1, "AIzaSyDRKQ9d6kfsoZT2lUnZcZnBYvH69HExNPE"

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaci;->zzi(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaci;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzadc;->zzdci:Lcom/google/android/gms/internal/ads/zzaci;

    const-string v0, "gads:safe_browsing:debug"

    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaci;->zzg(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzaci;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzadc;->zzdcj:Lcom/google/android/gms/internal/ads/zzaci;

    return-void
.end method
