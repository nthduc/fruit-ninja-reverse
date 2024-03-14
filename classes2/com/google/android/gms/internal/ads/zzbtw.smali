.class public final Lcom/google/android/gms/internal/ads/zzbtw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeoy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeoy<",
        "Lcom/google/android/gms/internal/ads/zzdok;",
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
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtw;->zzfuk:Lcom/google/android/gms/internal/ads/zzbtp;

    return-void
.end method

.method public static zzl(Lcom/google/android/gms/internal/ads/zzbtp;)Lcom/google/android/gms/internal/ads/zzbtw;
    .registers 2

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbtw;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbtw;-><init>(Lcom/google/android/gms/internal/ads/zzbtp;)V

    return-object v0
.end method

.method public static zzm(Lcom/google/android/gms/internal/ads/zzbtp;)Lcom/google/android/gms/internal/ads/zzdok;
    .registers 2

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbtp;->zzajr()Lcom/google/android/gms/internal/ads/zzdok;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzepe;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzdok;

    return-object p0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 2

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtw;->zzfuk:Lcom/google/android/gms/internal/ads/zzbtp;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbtw;->zzm(Lcom/google/android/gms/internal/ads/zzbtp;)Lcom/google/android/gms/internal/ads/zzdok;

    move-result-object v0

    return-object v0
.end method
