.class public final Lcom/google/android/gms/internal/ads/zzhu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# static fields
.field public static final zzahz:Lcom/google/android/gms/internal/ads/zzhu;


# instance fields
.field public final zzaia:F

.field public final zzaib:F

.field private final zzaic:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 16
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhu;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzhu;-><init>(FF)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhu;->zzahz:Lcom/google/android/gms/internal/ads/zzhu;

    return-void
.end method

.method public constructor <init>(FF)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhu;->zzaia:F

    .line 3
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzhu;->zzaib:F

    const/high16 p2, 0x447a0000    # 1000.0f

    mul-float p1, p1, p2

    .line 4
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhu;->zzaic:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_25

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_25

    .line 11
    :cond_12
    check-cast p1, Lcom/google/android/gms/internal/ads/zzhu;

    .line 12
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzhu;->zzaia:F

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzhu;->zzaia:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_25

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzhu;->zzaib:F

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzhu;->zzaib:F

    cmpl-float p1, v2, p1

    if-nez p1, :cond_25

    return v0

    :cond_25
    :goto_25
    return v1
.end method

.method public final hashCode()I
    .registers 3

    .line 13
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhu;->zzaia:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 14
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzhu;->zzaib:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final zzdu(J)J
    .registers 5

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhu;->zzaic:I

    int-to-long v0, v0

    mul-long p1, p1, v0

    return-wide p1
.end method
