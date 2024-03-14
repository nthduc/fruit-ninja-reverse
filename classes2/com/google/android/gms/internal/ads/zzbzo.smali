.class public final Lcom/google/android/gms/internal/ads/zzbzo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeoy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeoy<",
        "Lcom/google/android/gms/internal/ads/zzdls;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfwg:Lcom/google/android/gms/internal/ads/zzbys;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbys;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbzo;->zzfwg:Lcom/google/android/gms/internal/ads/zzbys;

    return-void
.end method

.method public static zzaa(Lcom/google/android/gms/internal/ads/zzbys;)Lcom/google/android/gms/internal/ads/zzbzo;
    .registers 2

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbzo;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbzo;-><init>(Lcom/google/android/gms/internal/ads/zzbys;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzo;->zzfwg:Lcom/google/android/gms/internal/ads/zzbys;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbys;->zzakq()Lcom/google/android/gms/internal/ads/zzdls;

    move-result-object v0

    return-object v0
.end method
