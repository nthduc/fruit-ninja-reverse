.class public final Lcom/google/android/gms/internal/ads/zzabq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final time:J

.field private final zzczh:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzczi:Lcom/google/android/gms/internal/ads/zzabq;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/lang/String;Lcom/google/android/gms/internal/ads/zzabq;)V
    .registers 5
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/internal/ads/zzabq;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzabq;->time:J

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzabq;->zzczh:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzabq;->zzczi:Lcom/google/android/gms/internal/ads/zzabq;

    return-void
.end method


# virtual methods
.method public final getTime()J
    .registers 3

    .line 6
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabq;->time:J

    return-wide v0
.end method

.method public final zzrq()Ljava/lang/String;
    .registers 2

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabq;->zzczh:Ljava/lang/String;

    return-object v0
.end method

.method public final zzrr()Lcom/google/android/gms/internal/ads/zzabq;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabq;->zzczi:Lcom/google/android/gms/internal/ads/zzabq;

    return-object v0
.end method
