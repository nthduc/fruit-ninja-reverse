.class public final Lcom/google/android/gms/internal/ads/zzcca;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeoy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeoy<",
        "Lcom/google/android/gms/internal/ads/zzbgj;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfwx:Lcom/google/android/gms/internal/ads/zzcbf;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcbf;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcca;->zzfwx:Lcom/google/android/gms/internal/ads/zzcbf;

    return-void
.end method

.method public static zzd(Lcom/google/android/gms/internal/ads/zzcbf;)Lcom/google/android/gms/internal/ads/zzcca;
    .registers 2

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcca;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcca;-><init>(Lcom/google/android/gms/internal/ads/zzcbf;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcca;->zzfwx:Lcom/google/android/gms/internal/ads/zzcbf;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcbf;->zzahl()Lcom/google/android/gms/internal/ads/zzbgj;

    move-result-object v0

    return-object v0
.end method
