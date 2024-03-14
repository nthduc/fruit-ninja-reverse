.class public final Lcom/google/android/gms/internal/ads/zzbtv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeoy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeoy<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfuk:Lcom/google/android/gms/internal/ads/zzbtp;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbtp;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtv;->zzfuk:Lcom/google/android/gms/internal/ads/zzbtp;

    return-void
.end method

.method public static zzj(Lcom/google/android/gms/internal/ads/zzbtp;)Lcom/google/android/gms/internal/ads/zzbtv;
    .registers 2

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbtv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbtv;-><init>(Lcom/google/android/gms/internal/ads/zzbtp;)V

    return-object v0
.end method

.method public static zzk(Lcom/google/android/gms/internal/ads/zzbtp;)Landroid/os/Bundle;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbtp;->zzajt()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtv;->zzfuk:Lcom/google/android/gms/internal/ads/zzbtp;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbtp;->zzajt()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
