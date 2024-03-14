.class public final Lcom/google/android/gms/internal/ads/zzq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzan;


# instance fields
.field private zzac:I

.field private zzad:I

.field private final zzae:I

.field private final zzaf:F


# direct methods
.method public constructor <init>()V
    .registers 4

    const/16 v0, 0x9c4

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzq;-><init>(IIF)V

    return-void
.end method

.method private constructor <init>(IIF)V
    .registers 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x9c4

    .line 4
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzq;->zzac:I

    const/4 p1, 0x1

    .line 5
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzq;->zzae:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 6
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzq;->zzaf:F

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzao;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzao;
        }
    .end annotation

    .line 10
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzq;->zzad:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzq;->zzad:I

    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzq;->zzac:I

    int-to-float v2, v0

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzq;->zzaf:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzq;->zzac:I

    .line 13
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzq;->zzad:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzq;->zzae:I

    if-gt v0, v2, :cond_18

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    if-eqz v1, :cond_1c

    return-void

    .line 15
    :cond_1c
    throw p1
.end method

.method public final zzb()I
    .registers 2

    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzq;->zzac:I

    return v0
.end method

.method public final zzc()I
    .registers 2

    .line 9
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzq;->zzad:I

    return v0
.end method
