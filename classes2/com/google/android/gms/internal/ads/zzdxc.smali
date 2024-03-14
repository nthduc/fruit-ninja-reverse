.class final Lcom/google/android/gms/internal/ads/zzdxc;
.super Lcom/google/android/gms/internal/ads/zzdwp;
.source "com.google.android.gms:play-services-gass@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdwp<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final transient offset:I

.field private final transient size:I

.field private final transient zzhqz:[Ljava/lang/Object;


# direct methods
.method constructor <init>([Ljava/lang/Object;II)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdwp;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxc;->zzhqz:[Ljava/lang/Object;

    .line 3
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzdxc;->offset:I

    .line 4
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzdxc;->size:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .registers 4

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdxc;->size:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzdwd;->zzs(II)I

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxc;->zzhqz:[Ljava/lang/Object;

    mul-int/lit8 p1, p1, 0x2

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdxc;->offset:I

    add-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final size()I
    .registers 2

    .line 9
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdxc;->size:I

    return v0
.end method

.method final zzaxn()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
