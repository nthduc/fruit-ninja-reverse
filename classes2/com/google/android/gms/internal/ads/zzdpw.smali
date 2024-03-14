.class public final Lcom/google/android/gms/internal/ads/zzdpw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private zzhgr:Lcom/google/android/gms/internal/ads/zzdpv;

.field private zzhgs:Lcom/google/android/gms/internal/ads/zzdpv;

.field private zzhgt:Lcom/google/android/gms/internal/ads/zzdpv;

.field private zzhgu:Lcom/google/android/gms/internal/ads/zzdpv;

.field private zzhgv:Lcom/google/android/gms/internal/ads/zzdpv;

.field private zzhgw:Lcom/google/android/gms/internal/ads/zzdpv;

.field private zzhgx:Lcom/google/android/gms/internal/ads/zzdpv;

.field private zzhgy:Lcom/google/android/gms/internal/ads/zzdpv;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpw;->zzhgr:Lcom/google/android/gms/internal/ads/zzdpv;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpw;->zzhgs:Lcom/google/android/gms/internal/ads/zzdpv;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpw;->zzhgt:Lcom/google/android/gms/internal/ads/zzdpv;

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpw;->zzhgu:Lcom/google/android/gms/internal/ads/zzdpv;

    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpw;->zzhgv:Lcom/google/android/gms/internal/ads/zzdpv;

    .line 7
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpw;->zzhgw:Lcom/google/android/gms/internal/ads/zzdpv;

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpw;->zzhgx:Lcom/google/android/gms/internal/ads/zzdpv;

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpw;->zzhgy:Lcom/google/android/gms/internal/ads/zzdpv;

    return-void
.end method


# virtual methods
.method public final onAdClosed()V
    .registers 2

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpw;->zzhgu:Lcom/google/android/gms/internal/ads/zzdpv;

    if-eqz v0, :cond_7

    .line 14
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdpv;->execute()V

    :cond_7
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzdpv;)V
    .registers 2

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdpw;->zzhgu:Lcom/google/android/gms/internal/ads/zzdpv;

    return-void
.end method
