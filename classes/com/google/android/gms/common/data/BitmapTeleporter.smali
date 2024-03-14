.class public Lcom/google/android/gms/common/data/BitmapTeleporter;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-base@@17.2.1"

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "BitmapTeleporterCreator"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/data/BitmapTeleporter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mType:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x3
    .end annotation
.end field

.field private final zalk:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$VersionField;
        id = 0x1
    .end annotation
.end field

.field private zall:Landroid/os/ParcelFileDescriptor;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x2
    .end annotation
.end field

.field private zalm:Landroid/graphics/Bitmap;

.field private zaln:Z

.field private zalo:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 89
    new-instance v0, Lcom/google/android/gms/common/data/zaa;

    invoke-direct {v0}, Lcom/google/android/gms/common/data/zaa;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/data/BitmapTeleporter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/ParcelFileDescriptor;I)V
    .registers 4
    .param p1    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x1
        .end annotation
    .end param
    .param p2    # Landroid/os/ParcelFileDescriptor;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .param p3    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x3
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/common/data/BitmapTeleporter;->zalk:I

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/common/data/BitmapTeleporter;->zall:Landroid/os/ParcelFileDescriptor;

    .line 4
    iput p3, p0, Lcom/google/android/gms/common/data/BitmapTeleporter;->mType:I

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/common/data/BitmapTeleporter;->zalm:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/google/android/gms/common/data/BitmapTeleporter;->zaln:Z

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 4
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x1

    .line 9
    iput v0, p0, Lcom/google/android/gms/common/data/BitmapTeleporter;->zalk:I

    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lcom/google/android/gms/common/data/BitmapTeleporter;->zall:Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x0

    .line 11
    iput v1, p0, Lcom/google/android/gms/common/data/BitmapTeleporter;->mType:I

    .line 12
    iput-object p1, p0, Lcom/google/android/gms/common/data/BitmapTeleporter;->zalm:Landroid/graphics/Bitmap;

    .line 13
    iput-boolean v0, p0, Lcom/google/android/gms/common/data/BitmapTeleporter;->zaln:Z

    return-void
.end method

.method private static zaa(Ljava/io/Closeable;)V
    .registers 3

    .line 84
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    const-string v0, "BitmapTeleporter"

    const-string v1, "Could not close stream"

    .line 87
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private final zabx()Ljava/io/FileOutputStream;
    .registers 4

    .line 71
    iget-object v0, p0, Lcom/google/android/gms/common/data/BitmapTeleporter;->zalo:Ljava/io/File;

    if-eqz v0, :cond_2e

    :try_start_4
    const-string v1, "teleporter"

    const-string v2, ".tmp"

    .line 73
    invoke-static {v1, v2, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_c} :catch_25

    .line 77
    :try_start_c
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/high16 v2, 0x10000000

    .line 78
    invoke-static {v0, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/common/data/BitmapTeleporter;->zall:Landroid/os/ParcelFileDescriptor;
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_19} :catch_1d

    .line 82
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-object v1

    .line 81
    :catch_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Temporary file is somehow already deleted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_25
    move-exception v0

    .line 76
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not create temporary file"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 72
    :cond_2e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setTempDir() must be called before writing this object to a parcel"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public get()Landroid/graphics/Bitmap;
    .registers 6
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 15
    iget-boolean v0, p0, Lcom/google/android/gms/common/data/BitmapTeleporter;->zaln:Z

    if-nez v0, :cond_4c

    .line 16
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    iget-object v2, p0, Lcom/google/android/gms/common/data/BitmapTeleporter;->zall:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v1, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 17
    :try_start_10
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    new-array v1, v1, [B

    .line 18
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 19
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 20
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Bitmap$Config;->valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$Config;

    move-result-object v4

    .line 21
    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->read([B)I
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_29} :catch_3f
    .catchall {:try_start_10 .. :try_end_29} :catchall_3d

    .line 22
    invoke-static {v0}, Lcom/google/android/gms/common/data/BitmapTeleporter;->zaa(Ljava/io/Closeable;)V

    .line 28
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 29
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 30
    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 31
    iput-object v1, p0, Lcom/google/android/gms/common/data/BitmapTeleporter;->zalm:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/google/android/gms/common/data/BitmapTeleporter;->zaln:Z

    goto :goto_4c

    :catchall_3d
    move-exception v1

    goto :goto_48

    :catch_3f
    move-exception v1

    .line 25
    :try_start_40
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Could not read from parcel file descriptor"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_48
    .catchall {:try_start_40 .. :try_end_48} :catchall_3d

    .line 26
    :goto_48
    invoke-static {v0}, Lcom/google/android/gms/common/data/BitmapTeleporter;->zaa(Ljava/io/Closeable;)V

    .line 27
    throw v1

    .line 33
    :cond_4c
    :goto_4c
    iget-object v0, p0, Lcom/google/android/gms/common/data/BitmapTeleporter;->zalm:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public release()V
    .registers 4
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 61
    iget-boolean v0, p0, Lcom/google/android/gms/common/data/BitmapTeleporter;->zaln:Z

    if-nez v0, :cond_12

    .line 62
    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/common/data/BitmapTeleporter;->zall:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception v0

    const-string v1, "BitmapTeleporter"

    const-string v2, "Could not close PFD"

    .line 65
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_12
    return-void
.end method

.method public setTempDir(Ljava/io/File;)V
    .registers 3
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    if-eqz p1, :cond_5

    .line 69
    iput-object p1, p0, Lcom/google/android/gms/common/data/BitmapTeleporter;->zalo:Ljava/io/File;

    return-void

    .line 68
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Cannot set null temp directory"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/common/data/BitmapTeleporter;->zall:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_5c

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/common/data/BitmapTeleporter;->zalm:Landroid/graphics/Bitmap;

    .line 36
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int v1, v1, v2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 38
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 39
    new-instance v2, Ljava/io/BufferedOutputStream;

    .line 40
    invoke-direct {p0}, Lcom/google/android/gms/common/data/BitmapTeleporter;->zabx()Ljava/io/FileOutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 41
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 42
    :try_start_29
    array-length v2, v1

    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 43
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 44
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 45
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap$Config;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_49} :catch_4f
    .catchall {:try_start_29 .. :try_end_49} :catchall_4d

    .line 47
    invoke-static {v3}, Lcom/google/android/gms/common/data/BitmapTeleporter;->zaa(Ljava/io/Closeable;)V

    goto :goto_5c

    :catchall_4d
    move-exception p1

    goto :goto_58

    :catch_4f
    move-exception p1

    .line 50
    :try_start_50
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Could not write into unlinked file"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_58
    .catchall {:try_start_50 .. :try_end_58} :catchall_4d

    .line 51
    :goto_58
    invoke-static {v3}, Lcom/google/android/gms/common/data/BitmapTeleporter;->zaa(Ljava/io/Closeable;)V

    .line 52
    throw p1

    :cond_5c
    :goto_5c
    const/4 v0, 0x1

    or-int/2addr p2, v0

    .line 54
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v1

    .line 55
    iget v2, p0, Lcom/google/android/gms/common/data/BitmapTeleporter;->zalk:I

    invoke-static {p1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/4 v0, 0x2

    .line 56
    iget-object v2, p0, Lcom/google/android/gms/common/data/BitmapTeleporter;->zall:Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    invoke-static {p1, v0, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x3

    .line 57
    iget v0, p0, Lcom/google/android/gms/common/data/BitmapTeleporter;->mType:I

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 58
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    const/4 p1, 0x0

    .line 59
    iput-object p1, p0, Lcom/google/android/gms/common/data/BitmapTeleporter;->zall:Landroid/os/ParcelFileDescriptor;

    return-void
.end method
