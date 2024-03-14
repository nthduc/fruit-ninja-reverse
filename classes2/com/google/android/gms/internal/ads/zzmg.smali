.class public final Lcom/google/android/gms/internal/ads/zzmg;
.super Lcom/google/android/gms/internal/ads/zzmj;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzmg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final description:Ljava/lang/String;

.field private final mimeType:Ljava/lang/String;

.field private final zzbdh:I

.field private final zzbdi:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    new-instance v0, Lcom/google/android/gms/internal/ads/zzmf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzmf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzmg;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    const-string v0, "APIC"

    .line 7
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzmj;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzmg;->mimeType:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzmg;->description:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzmg;->zzbdh:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzmg;->zzbdi:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I[B)V
    .registers 5

    const-string p2, "APIC"

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzmj;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzmg;->mimeType:Ljava/lang/String;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzmg;->description:Ljava/lang/String;

    const/4 p1, 0x3

    .line 4
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzmg;->zzbdh:I

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzmg;->zzbdi:[B

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

    if-eqz p1, :cond_39

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_39

    .line 17
    :cond_12
    check-cast p1, Lcom/google/android/gms/internal/ads/zzmg;

    .line 18
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzmg;->zzbdh:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzmg;->zzbdh:I

    if-ne v2, v3, :cond_39

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzmg;->mimeType:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzmg;->mimeType:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzpq;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzmg;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzmg;->description:Ljava/lang/String;

    .line 19
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzpq;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzmg;->zzbdi:[B

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzmg;->zzbdi:[B

    .line 20
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_39

    return v0

    :cond_39
    :goto_39
    return v1
.end method

.method public final hashCode()I
    .registers 4

    .line 22
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzmg;->zzbdh:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 23
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzmg;->mimeType:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 24
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzmg;->description:Ljava/lang/String;

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_1c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 25
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzmg;->zzbdi:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 27
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzmg;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzmg;->description:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzmg;->zzbdh:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzmg;->zzbdi:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method