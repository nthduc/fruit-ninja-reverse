.class public final Lcom/google/android/gms/internal/ads/zzcyq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeoy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeoy<",
        "Lcom/google/android/gms/internal/ads/zzaby;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzgry:Lcom/google/android/gms/internal/ads/zzcyn;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcyn;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcyq;->zzgry:Lcom/google/android/gms/internal/ads/zzcyn;

    return-void
.end method

.method public static zzd(Lcom/google/android/gms/internal/ads/zzcyn;)Lcom/google/android/gms/internal/ads/zzcyq;
    .registers 2

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcyq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcyq;-><init>(Lcom/google/android/gms/internal/ads/zzcyn;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyq;->zzgry:Lcom/google/android/gms/internal/ads/zzcyn;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcyn;->zzaqn()Lcom/google/android/gms/internal/ads/zzaby;

    move-result-object v0

    return-object v0
.end method
