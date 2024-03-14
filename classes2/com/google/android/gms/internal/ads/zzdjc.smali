.class public final Lcom/google/android/gms/internal/ads/zzdjc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeoy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeoy<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzgzp:Lcom/google/android/gms/internal/ads/zzdiy;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdiy;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdjc;->zzgzp:Lcom/google/android/gms/internal/ads/zzdiy;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjc;->zzgzp:Lcom/google/android/gms/internal/ads/zzdiy;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdiy;->zzasm()I

    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
