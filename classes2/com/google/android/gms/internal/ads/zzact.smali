.class public final Lcom/google/android/gms/internal/ads/zzact;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# static fields
.field public static zzdbb:Lcom/google/android/gms/internal/ads/zzaci;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzaci<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static zzdbc:Lcom/google/android/gms/internal/ads/zzaci;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzaci<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static zzdbd:Lcom/google/android/gms/internal/ads/zzaci;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzaci<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static zzdbe:Lcom/google/android/gms/internal/ads/zzaci;
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

    const-string v1, "gads:gma_attestation:click:enable"

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaci;->zzg(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzaci;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzact;->zzdbb:Lcom/google/android/gms/internal/ads/zzaci;

    const-string v1, "gads:gma_attestation:impression:enable"

    .line 4
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaci;->zzg(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzaci;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzact;->zzdbc:Lcom/google/android/gms/internal/ads/zzaci;

    const-string v1, "gads:gma_attestation:request:enable_javascript"

    .line 6
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaci;->zzg(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzaci;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzact;->zzdbd:Lcom/google/android/gms/internal/ads/zzaci;

    const-string v1, "gads:gma_attestation:request:enable"

    .line 8
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaci;->zzg(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzaci;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzact;->zzdbe:Lcom/google/android/gms/internal/ads/zzaci;

    return-void
.end method
