.class public final Lcom/google/android/gms/internal/ads/zzatb;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "LargeParcelTeleporterCreator"
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Reserved;
    value = {
        0x1
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzatb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzdtv:Landroid/os/ParcelFileDescriptor;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x2
    .end annotation
.end field

.field private zzdtw:Landroid/os/Parcelable;

.field private zzdtx:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 77
    new-instance v0, Lcom/google/android/gms/internal/ads/zzatd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzatd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzatb;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/ParcelFileDescriptor;)V
    .registers 2
    .param p1    # Landroid/os/ParcelFileDescriptor;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzatb;->zzdtv:Landroid/os/ParcelFileDescriptor;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzatb;->zzdtw:Landroid/os/Parcelable;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzatb;->zzdtx:Z

    return-void
.end method

.method static final synthetic zza(Ljava/io/OutputStream;[B)V
    .registers 5

    const/4 v0, 0x0

    .line 61
    :try_start_1
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_19
    .catchall {:try_start_1 .. :try_end_6} :catchall_17

    .line 62
    :try_start_6
    array-length v0, p1

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 63
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_d} :catch_14
    .catchall {:try_start_6 .. :try_end_d} :catchall_11

    .line 64
    invoke-static {v1}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_11
    move-exception p1

    move-object v0, v1

    goto :goto_32

    :catch_14
    move-exception p1

    move-object v0, v1

    goto :goto_1a

    :catchall_17
    move-exception p1

    goto :goto_32

    :catch_19
    move-exception p1

    :goto_1a
    :try_start_1a
    const-string v1, "Error transporting the ad response"

    .line 67
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkv()Lcom/google/android/gms/internal/ads/zzayb;

    move-result-object v1

    const-string v2, "LargeParcelTeleporter.pipeData.1"

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzayb;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_1a .. :try_end_28} :catchall_17

    if-nez v0, :cond_2e

    .line 70
    invoke-static {p0}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    .line 71
    :cond_2e
    invoke-static {v0}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :goto_32
    if-nez v0, :cond_38

    .line 74
    invoke-static {p0}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_3b

    .line 75
    :cond_38
    invoke-static {v0}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 76
    :goto_3b
    throw p1
.end method

.method private static zzh([B)Landroid/os/ParcelFileDescriptor;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B)",
            "Landroid/os/ParcelFileDescriptor;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 49
    :try_start_1
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    const/4 v2, 0x1

    .line 50
    aget-object v2, v1, v2

    .line 51
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v3, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_1d

    .line 53
    :try_start_d
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbbz;->zzeep:Lcom/google/android/gms/internal/ads/zzdzb;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzata;

    invoke-direct {v4, v3, p0}, Lcom/google/android/gms/internal/ads/zzata;-><init>(Ljava/io/OutputStream;[B)V

    invoke-interface {v2, v4}, Lcom/google/android/gms/internal/ads/zzdzb;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    .line 54
    aget-object p0, v1, p0
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_1a} :catch_1b

    return-object p0

    :catch_1b
    move-exception p0

    goto :goto_1f

    :catch_1d
    move-exception p0

    move-object v3, v0

    :goto_1f
    const-string v1, "Error transporting the ad response"

    .line 56
    invoke-static {v1, p0}, Lcom/google/android/gms/internal/ads/zzayp;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkv()Lcom/google/android/gms/internal/ads/zzayb;

    move-result-object v1

    const-string v2, "LargeParcelTeleporter.pipeData.2"

    invoke-virtual {v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzayb;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 58
    invoke-static {v3}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0
.end method

.method private final zzvf()Landroid/os/ParcelFileDescriptor;
    .registers 4

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatb;->zzdtv:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_21

    .line 39
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 40
    :try_start_8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzatb;->zzdtw:Landroid/os/Parcelable;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 41
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_1c

    .line 42
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 46
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzatb;->zzh([B)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzatb;->zzdtv:Landroid/os/ParcelFileDescriptor;

    goto :goto_21

    :catchall_1c
    move-exception v1

    .line 44
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 45
    throw v1

    .line 47
    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatb;->zzdtv:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    .line 32
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzatb;->zzvf()Landroid/os/ParcelFileDescriptor;

    .line 34
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 35
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzatb;->zzdtv:Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 36
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza(Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;",
            ">(",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 6
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzatb;->zzdtx:Z

    if-eqz v0, :cond_55

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatb;->zzdtv:Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x0

    if-nez v0, :cond_f

    const-string p1, "File descriptor is empty, returning null."

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfc(Ljava/lang/String;)V

    return-object v1

    .line 10
    :cond_f
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v3, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 11
    :try_start_19
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    new-array v0, v0, [B

    .line 12
    array-length v3, v0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/io/DataInputStream;->readFully([BII)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_24} :catch_47
    .catchall {:try_start_19 .. :try_end_24} :catchall_45

    .line 13
    invoke-static {v2}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 21
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 22
    :try_start_2b
    array-length v2, v0

    invoke-virtual {v1, v0, v4, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 23
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 24
    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzatb;->zzdtw:Landroid/os/Parcelable;
    :try_end_3a
    .catchall {:try_start_2b .. :try_end_3a} :catchall_40

    .line 25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 29
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzatb;->zzdtx:Z

    goto :goto_55

    :catchall_40
    move-exception p1

    .line 27
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 28
    throw p1

    :catchall_45
    move-exception p1

    goto :goto_51

    :catch_47
    move-exception p1

    :try_start_48
    const-string v0, "Could not read from parcel file descriptor"

    .line 16
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4d
    .catchall {:try_start_48 .. :try_end_4d} :catchall_45

    .line 17
    invoke-static {v2}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    .line 19
    :goto_51
    invoke-static {v2}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 20
    throw p1

    .line 30
    :cond_55
    :goto_55
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzatb;->zzdtw:Landroid/os/Parcelable;

    check-cast p1, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    return-object p1
.end method
