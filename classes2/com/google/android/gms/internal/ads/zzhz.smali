.class public final Lcom/google/android/gms/internal/ads/zzhz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# static fields
.field public static final zzaie:Lcom/google/android/gms/internal/ads/zzhz;


# instance fields
.field public final zzaif:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhz;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhz;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhz;->zzaie:Lcom/google/android/gms/internal/ads/zzhz;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhz;->zzaif:I

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

    if-eqz p1, :cond_1b

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_1b

    .line 8
    :cond_12
    check-cast p1, Lcom/google/android/gms/internal/ads/zzhz;

    .line 9
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzhz;->zzaif:I

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzhz;->zzaif:I

    if-ne v2, p1, :cond_1b

    return v0

    :cond_1b
    :goto_1b
    return v1
.end method

.method public final hashCode()I
    .registers 2

    .line 10
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhz;->zzaif:I

    return v0
.end method
