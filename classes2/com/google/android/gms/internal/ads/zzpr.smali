.class public final Lcom/google/android/gms/internal/ads/zzpr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzpr;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzahv:I

.field public final zzarw:I

.field public final zzarx:I

.field public final zzary:I

.field public final zzbkr:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    new-instance v0, Lcom/google/android/gms/internal/ads/zzpu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzpu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzpr;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(III[B)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzpr;->zzarw:I

    .line 3
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzpr;->zzary:I

    .line 4
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzpr;->zzarx:I

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzpr;->zzbkr:[B

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzpr;->zzarw:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzpr;->zzary:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzpr;->zzarx:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    if-eqz v0, :cond_25

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    goto :goto_26

    :cond_25
    const/4 p1, 0x0

    :goto_26
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpr;->zzbkr:[B

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_32

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_32

    .line 18
    :cond_12
    check-cast p1, Lcom/google/android/gms/internal/ads/zzpr;

    .line 19
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzpr;->zzarw:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzpr;->zzarw:I

    if-ne v2, v3, :cond_32

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzpr;->zzary:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzpr;->zzary:I

    if-ne v2, v3, :cond_32

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzpr;->zzarx:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzpr;->zzarx:I

    if-ne v2, v3, :cond_32

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpr;->zzbkr:[B

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzpr;->zzbkr:[B

    .line 20
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-nez p1, :cond_31

    goto :goto_32

    :cond_31
    return v0

    :cond_32
    :goto_32
    return v1
.end method

.method public final hashCode()I
    .registers 3

    .line 24
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzpr;->zzahv:I

    if-nez v0, :cond_1d

    .line 26
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzpr;->zzarw:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 27
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpr;->zzary:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 28
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpr;->zzarx:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 29
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpr;->zzbkr:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    .line 30
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzpr;->zzahv:I

    .line 31
    :cond_1d
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzpr;->zzahv:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 7

    .line 23
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzpr;->zzarw:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpr;->zzary:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzpr;->zzarx:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzpr;->zzbkr:[B

    if-eqz v3, :cond_c

    const/4 v3, 0x1

    goto :goto_d

    :cond_c
    const/4 v3, 0x0

    :goto_d
    const/16 v4, 0x37

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "ColorInfo("

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 33
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzpr;->zzarw:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzpr;->zzary:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzpr;->zzarx:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzpr;->zzbkr:[B

    if-eqz p2, :cond_15

    const/4 p2, 0x1

    goto :goto_16

    :cond_15
    const/4 p2, 0x0

    :goto_16
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzpr;->zzbkr:[B

    if-eqz p2, :cond_20

    .line 38
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    :cond_20
    return-void
.end method
