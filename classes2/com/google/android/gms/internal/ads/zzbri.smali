.class public final Lcom/google/android/gms/internal/ads/zzbri;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeoy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeoy<",
        "Lcom/google/android/gms/internal/ads/zzdog;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfsf:Lcom/google/android/gms/internal/ads/zzbre;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbre;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbri;->zzfsf:Lcom/google/android/gms/internal/ads/zzbre;

    return-void
.end method

.method public static zzf(Lcom/google/android/gms/internal/ads/zzbre;)Lcom/google/android/gms/internal/ads/zzbri;
    .registers 2

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbri;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbri;-><init>(Lcom/google/android/gms/internal/ads/zzbre;)V

    return-object v0
.end method

.method public static zzg(Lcom/google/android/gms/internal/ads/zzbre;)Lcom/google/android/gms/internal/ads/zzdog;
    .registers 2

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbre;->zzajc()Lcom/google/android/gms/internal/ads/zzdog;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzepe;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzdog;

    return-object p0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 2

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbri;->zzfsf:Lcom/google/android/gms/internal/ads/zzbre;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbri;->zzg(Lcom/google/android/gms/internal/ads/zzbre;)Lcom/google/android/gms/internal/ads/zzdog;

    move-result-object v0

    return-object v0
.end method
