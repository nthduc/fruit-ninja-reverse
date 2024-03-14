.class public final Lcom/google/android/gms/internal/ads/zzdbv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdgx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdgx<",
        "Lcom/google/android/gms/internal/ads/zzdbt;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfsk:Lcom/google/android/gms/internal/ads/zzdok;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdok;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdbv;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    return-void
.end method


# virtual methods
.method public final zzarj()Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Lcom/google/android/gms/internal/ads/zzdbt;",
            ">;"
        }
    .end annotation

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdbt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdbv;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdbt;-><init>(Lcom/google/android/gms/internal/ads/zzdok;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdyq;->zzaf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    return-object v0
.end method
