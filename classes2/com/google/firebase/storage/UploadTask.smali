.class public Lcom/google/firebase/storage/UploadTask;
.super Lcom/google/firebase/storage/StorageTask;
.source "com.google.firebase:firebase-storage@@19.1.1"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/storage/UploadTask$TaskSnapshot;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/storage/StorageTask<",
        "Lcom/google/firebase/storage/UploadTask$TaskSnapshot;",
        ">;"
    }
.end annotation


# static fields
.field private static final APPLICATION_OCTET_STREAM:Ljava/lang/String; = "application/octet-stream"

.field private static final MAXIMUM_CHUNK_SIZE:I = 0x2000000

.field static final PREFERRED_CHUNK_SIZE:I = 0x40000
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final RESUMABLE_FINAL_STATUS:Ljava/lang/String; = "final"

.field private static final TAG:Ljava/lang/String; = "UploadTask"

.field private static final X_GOOG_UPLOAD_URL:Ljava/lang/String; = "X-Goog-Upload-URL"


# instance fields
.field private final mAuthProvider:Lcom/google/firebase/auth/internal/InternalAuthProvider;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mBytesUploaded:Ljava/util/concurrent/atomic/AtomicLong;

.field private mCurrentChunkSize:I

.field private volatile mException:Ljava/lang/Exception;

.field private mIsStreamOwned:Z

.field private volatile mMetadata:Lcom/google/firebase/storage/StorageMetadata;

.field private volatile mResultCode:I

.field private mSender:Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

.field private volatile mServerException:Ljava/lang/Exception;

.field private volatile mServerStatus:Ljava/lang/String;

.field private final mStorageRef:Lcom/google/firebase/storage/StorageReference;

.field private final mStreamBuffer:Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;

.field private final mTotalByteCount:J

.field private volatile mUploadUri:Landroid/net/Uri;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/google/firebase/storage/StorageReference;Lcom/google/firebase/storage/StorageMetadata;Landroid/net/Uri;Landroid/net/Uri;)V
    .registers 13

    const-string v0, "UploadTask"

    .line 97
    invoke-direct {p0}, Lcom/google/firebase/storage/StorageTask;-><init>()V

    .line 62
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v1, p0, Lcom/google/firebase/storage/UploadTask;->mBytesUploaded:Ljava/util/concurrent/atomic/AtomicLong;

    const/high16 v1, 0x40000

    .line 64
    iput v1, p0, Lcom/google/firebase/storage/UploadTask;->mCurrentChunkSize:I

    const/4 v2, 0x0

    .line 68
    iput-object v2, p0, Lcom/google/firebase/storage/UploadTask;->mUploadUri:Landroid/net/Uri;

    .line 69
    iput-object v2, p0, Lcom/google/firebase/storage/UploadTask;->mException:Ljava/lang/Exception;

    .line 70
    iput-object v2, p0, Lcom/google/firebase/storage/UploadTask;->mServerException:Ljava/lang/Exception;

    const/4 v3, 0x0

    .line 71
    iput v3, p0, Lcom/google/firebase/storage/UploadTask;->mResultCode:I

    .line 98
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageReference;->getStorage()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object v3

    .line 103
    iput-object p1, p0, Lcom/google/firebase/storage/UploadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    .line 104
    iput-object p2, p0, Lcom/google/firebase/storage/UploadTask;->mMetadata:Lcom/google/firebase/storage/StorageMetadata;

    .line 105
    invoke-virtual {v3}, Lcom/google/firebase/storage/FirebaseStorage;->getAuthProvider()Lcom/google/firebase/auth/internal/InternalAuthProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/storage/UploadTask;->mAuthProvider:Lcom/google/firebase/auth/internal/InternalAuthProvider;

    .line 106
    iput-object p3, p0, Lcom/google/firebase/storage/UploadTask;->mUri:Landroid/net/Uri;

    .line 108
    new-instance p1, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

    iget-object p2, p0, Lcom/google/firebase/storage/UploadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    .line 110
    invoke-virtual {p2}, Lcom/google/firebase/storage/StorageReference;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lcom/google/firebase/storage/UploadTask;->mAuthProvider:Lcom/google/firebase/auth/internal/InternalAuthProvider;

    .line 112
    invoke-virtual {v3}, Lcom/google/firebase/storage/FirebaseStorage;->getMaxUploadRetryTimeMillis()J

    move-result-wide v3

    invoke-direct {p1, p2, p3, v3, v4}, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;-><init>(Landroid/content/Context;Lcom/google/firebase/auth/internal/InternalAuthProvider;J)V

    iput-object p1, p0, Lcom/google/firebase/storage/UploadTask;->mSender:Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

    const-wide/16 p1, -0x1

    .line 115
    :try_start_4b
    iget-object p3, p0, Lcom/google/firebase/storage/UploadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    .line 116
    invoke-virtual {p3}, Lcom/google/firebase/storage/StorageReference;->getStorage()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/firebase/storage/FirebaseStorage;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3
    :try_end_5d
    .catch Ljava/io/FileNotFoundException; {:try_start_4b .. :try_end_5d} :catch_b6

    .line 118
    :try_start_5d
    iget-object v3, p0, Lcom/google/firebase/storage/UploadTask;->mUri:Landroid/net/Uri;

    const-string v4, "r"

    invoke-virtual {p3, v3, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    if-eqz v3, :cond_97

    .line 120
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v4
    :try_end_6b
    .catch Ljava/lang/NullPointerException; {:try_start_5d .. :try_end_6b} :catch_90
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_6b} :catch_73
    .catch Ljava/io/FileNotFoundException; {:try_start_5d .. :try_end_6b} :catch_b6

    .line 121
    :try_start_6b
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6e
    .catch Ljava/lang/NullPointerException; {:try_start_6b .. :try_end_6e} :catch_71
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_6f
    .catch Ljava/io/FileNotFoundException; {:try_start_6b .. :try_end_6e} :catch_b4

    goto :goto_98

    :catch_6f
    move-exception v3

    goto :goto_75

    :catch_71
    move-exception v3

    goto :goto_92

    :catch_73
    move-exception v3

    move-wide v4, p1

    .line 128
    :goto_75
    :try_start_75
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "could not retrieve file size for upload "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/google/firebase/storage/UploadTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_98

    :catch_90
    move-exception v3

    move-wide v4, p1

    :goto_92
    const-string v6, "NullPointerException during file size calculation."

    .line 125
    invoke-static {v0, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_97
    move-wide v4, p1

    .line 131
    :goto_98
    iget-object v3, p0, Lcom/google/firebase/storage/UploadTask;->mUri:Landroid/net/Uri;

    invoke-virtual {p3, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_9e
    .catch Ljava/io/FileNotFoundException; {:try_start_75 .. :try_end_9e} :catch_b4

    if-eqz v2, :cond_b2

    cmp-long p3, v4, p1

    if-nez p3, :cond_ab

    .line 136
    :try_start_a4
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result p1
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_a8} :catch_ab
    .catch Ljava/io/FileNotFoundException; {:try_start_a4 .. :try_end_a8} :catch_b4

    if-ltz p1, :cond_ab

    int-to-long v4, p1

    :catch_ab
    :cond_ab
    move-wide p1, v4

    .line 144
    :try_start_ac
    new-instance p3, Ljava/io/BufferedInputStream;

    invoke-direct {p3, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_b1
    .catch Ljava/io/FileNotFoundException; {:try_start_ac .. :try_end_b1} :catch_b6

    goto :goto_d7

    :cond_b2
    move-object p3, v2

    goto :goto_d6

    :catch_b4
    move-exception p1

    goto :goto_b9

    :catch_b6
    move-exception p3

    move-wide v4, p1

    move-object p1, p3

    :goto_b9
    move-object p3, v2

    .line 147
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "could not locate file for uploading:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/firebase/storage/UploadTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iput-object p1, p0, Lcom/google/firebase/storage/UploadTask;->mException:Ljava/lang/Exception;

    :goto_d6
    move-wide p1, v4

    .line 150
    :goto_d7
    iput-wide p1, p0, Lcom/google/firebase/storage/UploadTask;->mTotalByteCount:J

    .line 151
    new-instance p1, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;

    invoke-direct {p1, p3, v1}, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;-><init>(Ljava/io/InputStream;I)V

    iput-object p1, p0, Lcom/google/firebase/storage/UploadTask;->mStreamBuffer:Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;

    const/4 p1, 0x1

    .line 152
    iput-boolean p1, p0, Lcom/google/firebase/storage/UploadTask;->mIsStreamOwned:Z

    .line 153
    iput-object p4, p0, Lcom/google/firebase/storage/UploadTask;->mUploadUri:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/storage/StorageReference;Lcom/google/firebase/storage/StorageMetadata;Ljava/io/InputStream;)V
    .registers 10

    .line 156
    invoke-direct {p0}, Lcom/google/firebase/storage/StorageTask;-><init>()V

    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/google/firebase/storage/UploadTask;->mBytesUploaded:Ljava/util/concurrent/atomic/AtomicLong;

    const/high16 v0, 0x40000

    .line 64
    iput v0, p0, Lcom/google/firebase/storage/UploadTask;->mCurrentChunkSize:I

    const/4 v1, 0x0

    .line 68
    iput-object v1, p0, Lcom/google/firebase/storage/UploadTask;->mUploadUri:Landroid/net/Uri;

    .line 69
    iput-object v1, p0, Lcom/google/firebase/storage/UploadTask;->mException:Ljava/lang/Exception;

    .line 70
    iput-object v1, p0, Lcom/google/firebase/storage/UploadTask;->mServerException:Ljava/lang/Exception;

    const/4 v2, 0x0

    .line 71
    iput v2, p0, Lcom/google/firebase/storage/UploadTask;->mResultCode:I

    .line 157
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageReference;->getStorage()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object v3

    const-wide/16 v4, -0x1

    .line 162
    iput-wide v4, p0, Lcom/google/firebase/storage/UploadTask;->mTotalByteCount:J

    .line 163
    iput-object p1, p0, Lcom/google/firebase/storage/UploadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    .line 164
    iput-object p2, p0, Lcom/google/firebase/storage/UploadTask;->mMetadata:Lcom/google/firebase/storage/StorageMetadata;

    .line 165
    invoke-virtual {v3}, Lcom/google/firebase/storage/FirebaseStorage;->getAuthProvider()Lcom/google/firebase/auth/internal/InternalAuthProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/storage/UploadTask;->mAuthProvider:Lcom/google/firebase/auth/internal/InternalAuthProvider;

    .line 166
    new-instance p1, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;

    invoke-direct {p1, p3, v0}, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;-><init>(Ljava/io/InputStream;I)V

    iput-object p1, p0, Lcom/google/firebase/storage/UploadTask;->mStreamBuffer:Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;

    .line 167
    iput-boolean v2, p0, Lcom/google/firebase/storage/UploadTask;->mIsStreamOwned:Z

    .line 168
    iput-object v1, p0, Lcom/google/firebase/storage/UploadTask;->mUri:Landroid/net/Uri;

    .line 169
    new-instance p1, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

    iget-object p2, p0, Lcom/google/firebase/storage/UploadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    .line 171
    invoke-virtual {p2}, Lcom/google/firebase/storage/StorageReference;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lcom/google/firebase/storage/UploadTask;->mAuthProvider:Lcom/google/firebase/auth/internal/InternalAuthProvider;

    iget-object v0, p0, Lcom/google/firebase/storage/UploadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    .line 173
    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageReference;->getStorage()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/storage/FirebaseStorage;->getMaxUploadRetryTimeMillis()J

    move-result-wide v0

    invoke-direct {p1, p2, p3, v0, v1}, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;-><init>(Landroid/content/Context;Lcom/google/firebase/auth/internal/InternalAuthProvider;J)V

    iput-object p1, p0, Lcom/google/firebase/storage/UploadTask;->mSender:Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/storage/StorageReference;Lcom/google/firebase/storage/StorageMetadata;[B)V
    .registers 9

    .line 74
    invoke-direct {p0}, Lcom/google/firebase/storage/StorageTask;-><init>()V

    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/google/firebase/storage/UploadTask;->mBytesUploaded:Ljava/util/concurrent/atomic/AtomicLong;

    const/high16 v0, 0x40000

    .line 64
    iput v0, p0, Lcom/google/firebase/storage/UploadTask;->mCurrentChunkSize:I

    const/4 v1, 0x0

    .line 68
    iput-object v1, p0, Lcom/google/firebase/storage/UploadTask;->mUploadUri:Landroid/net/Uri;

    .line 69
    iput-object v1, p0, Lcom/google/firebase/storage/UploadTask;->mException:Ljava/lang/Exception;

    .line 70
    iput-object v1, p0, Lcom/google/firebase/storage/UploadTask;->mServerException:Ljava/lang/Exception;

    const/4 v2, 0x0

    .line 71
    iput v2, p0, Lcom/google/firebase/storage/UploadTask;->mResultCode:I

    .line 75
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageReference;->getStorage()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object v2

    .line 80
    array-length v3, p3

    int-to-long v3, v3

    iput-wide v3, p0, Lcom/google/firebase/storage/UploadTask;->mTotalByteCount:J

    .line 81
    iput-object p1, p0, Lcom/google/firebase/storage/UploadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    .line 82
    iput-object p2, p0, Lcom/google/firebase/storage/UploadTask;->mMetadata:Lcom/google/firebase/storage/StorageMetadata;

    .line 83
    invoke-virtual {v2}, Lcom/google/firebase/storage/FirebaseStorage;->getAuthProvider()Lcom/google/firebase/auth/internal/InternalAuthProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/storage/UploadTask;->mAuthProvider:Lcom/google/firebase/auth/internal/InternalAuthProvider;

    .line 84
    iput-object v1, p0, Lcom/google/firebase/storage/UploadTask;->mUri:Landroid/net/Uri;

    .line 85
    new-instance p1, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;

    new-instance p2, Ljava/io/ByteArrayInputStream;

    invoke-direct {p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p1, p2, v0}, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;-><init>(Ljava/io/InputStream;I)V

    iput-object p1, p0, Lcom/google/firebase/storage/UploadTask;->mStreamBuffer:Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;

    const/4 p1, 0x1

    .line 87
    iput-boolean p1, p0, Lcom/google/firebase/storage/UploadTask;->mIsStreamOwned:Z

    .line 89
    new-instance p1, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

    .line 91
    invoke-virtual {v2}, Lcom/google/firebase/storage/FirebaseStorage;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    .line 92
    invoke-virtual {v2}, Lcom/google/firebase/storage/FirebaseStorage;->getAuthProvider()Lcom/google/firebase/auth/internal/InternalAuthProvider;

    move-result-object p3

    .line 93
    invoke-virtual {v2}, Lcom/google/firebase/storage/FirebaseStorage;->getMaxDownloadRetryTimeMillis()J

    move-result-wide v0

    invoke-direct {p1, p2, p3, v0, v1}, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;-><init>(Landroid/content/Context;Lcom/google/firebase/auth/internal/InternalAuthProvider;J)V

    iput-object p1, p0, Lcom/google/firebase/storage/UploadTask;->mSender:Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

    return-void
.end method

.method static synthetic access$000(Lcom/google/firebase/storage/UploadTask;)Lcom/google/firebase/auth/internal/InternalAuthProvider;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/google/firebase/storage/UploadTask;->mAuthProvider:Lcom/google/firebase/auth/internal/InternalAuthProvider;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/firebase/storage/UploadTask;)Lcom/google/firebase/storage/StorageReference;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/google/firebase/storage/UploadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    return-object p0
.end method

.method private beginResumableUpload()V
    .registers 7

    .line 251
    iget-object v0, p0, Lcom/google/firebase/storage/UploadTask;->mMetadata:Lcom/google/firebase/storage/StorageMetadata;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 252
    iget-object v0, p0, Lcom/google/firebase/storage/UploadTask;->mMetadata:Lcom/google/firebase/storage/StorageMetadata;

    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageMetadata;->getContentType()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_c
    move-object v0, v1

    .line 254
    :goto_d
    iget-object v2, p0, Lcom/google/firebase/storage/UploadTask;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_2f

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 255
    iget-object v0, p0, Lcom/google/firebase/storage/UploadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageReference;->getStorage()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/storage/FirebaseStorage;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 256
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/google/firebase/storage/UploadTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 258
    :cond_2f
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_37

    const-string v0, "application/octet-stream"

    .line 261
    :cond_37
    new-instance v2, Lcom/google/firebase/storage/network/ResumableUploadStartRequest;

    iget-object v3, p0, Lcom/google/firebase/storage/UploadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    .line 263
    invoke-virtual {v3}, Lcom/google/firebase/storage/StorageReference;->getStorageUri()Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/google/firebase/storage/UploadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    .line 264
    invoke-virtual {v4}, Lcom/google/firebase/storage/StorageReference;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v4

    .line 265
    iget-object v5, p0, Lcom/google/firebase/storage/UploadTask;->mMetadata:Lcom/google/firebase/storage/StorageMetadata;

    if-eqz v5, :cond_4f

    iget-object v1, p0, Lcom/google/firebase/storage/UploadTask;->mMetadata:Lcom/google/firebase/storage/StorageMetadata;

    invoke-virtual {v1}, Lcom/google/firebase/storage/StorageMetadata;->createJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    :cond_4f
    invoke-direct {v2, v3, v4, v1, v0}, Lcom/google/firebase/storage/network/ResumableUploadStartRequest;-><init>(Landroid/net/Uri;Lcom/google/firebase/FirebaseApp;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 268
    invoke-direct {p0, v2}, Lcom/google/firebase/storage/UploadTask;->sendWithRetry(Lcom/google/firebase/storage/network/NetworkRequest;)Z

    move-result v0

    if-nez v0, :cond_59

    return-void

    :cond_59
    const-string v0, "X-Goog-Upload-URL"

    .line 271
    invoke-virtual {v2, v0}, Lcom/google/firebase/storage/network/NetworkRequest;->getResultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 272
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6b

    .line 273
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/storage/UploadTask;->mUploadUri:Landroid/net/Uri;

    :cond_6b
    return-void
.end method

.method private isValidHttpResponseCode(I)Z
    .registers 3

    const/16 v0, 0x134

    if-eq p1, v0, :cond_f

    const/16 v0, 0xc8

    if-lt p1, v0, :cond_d

    const/16 v0, 0x12c

    if-ge p1, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    return p1
.end method

.method private processResultValid(Lcom/google/firebase/storage/network/NetworkRequest;)Z
    .registers 4

    .line 472
    invoke-virtual {p1}, Lcom/google/firebase/storage/network/NetworkRequest;->getResultCode()I

    move-result v0

    .line 473
    iget-object v1, p0, Lcom/google/firebase/storage/UploadTask;->mSender:Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

    invoke-virtual {v1, v0}, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->isRetryableError(I)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v0, -0x2

    :cond_d
    iput v0, p0, Lcom/google/firebase/storage/UploadTask;->mResultCode:I

    .line 474
    invoke-virtual {p1}, Lcom/google/firebase/storage/network/NetworkRequest;->getException()Ljava/lang/Exception;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/storage/UploadTask;->mServerException:Ljava/lang/Exception;

    const-string v0, "X-Goog-Upload-Status"

    .line 475
    invoke-virtual {p1, v0}, Lcom/google/firebase/storage/network/NetworkRequest;->getResultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/storage/UploadTask;->mServerStatus:Ljava/lang/String;

    .line 476
    iget p1, p0, Lcom/google/firebase/storage/UploadTask;->mResultCode:I

    invoke-direct {p0, p1}, Lcom/google/firebase/storage/UploadTask;->isValidHttpResponseCode(I)Z

    move-result p1

    if-eqz p1, :cond_2b

    iget-object p1, p0, Lcom/google/firebase/storage/UploadTask;->mServerException:Ljava/lang/Exception;

    if-nez p1, :cond_2b

    const/4 p1, 0x1

    goto :goto_2c

    :cond_2b
    const/4 p1, 0x0

    :goto_2c
    return p1
.end method

.method private recoverStatus(Z)Z
    .registers 13

    const-string v0, "UploadTask"

    .line 346
    new-instance v1, Lcom/google/firebase/storage/network/ResumableUploadQueryRequest;

    iget-object v2, p0, Lcom/google/firebase/storage/UploadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    .line 348
    invoke-virtual {v2}, Lcom/google/firebase/storage/StorageReference;->getStorageUri()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/storage/UploadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v3}, Lcom/google/firebase/storage/StorageReference;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v3

    iget-object v4, p0, Lcom/google/firebase/storage/UploadTask;->mUploadUri:Landroid/net/Uri;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/firebase/storage/network/ResumableUploadQueryRequest;-><init>(Landroid/net/Uri;Lcom/google/firebase/FirebaseApp;Landroid/net/Uri;)V

    .line 350
    iget-object v2, p0, Lcom/google/firebase/storage/UploadTask;->mServerStatus:Ljava/lang/String;

    const-string v3, "final"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_21

    return v4

    :cond_21
    if-eqz p1, :cond_2a

    .line 355
    invoke-direct {p0, v1}, Lcom/google/firebase/storage/UploadTask;->sendWithRetry(Lcom/google/firebase/storage/network/NetworkRequest;)Z

    move-result p1

    if-nez p1, :cond_31

    return v4

    .line 359
    :cond_2a
    invoke-direct {p0, v1}, Lcom/google/firebase/storage/UploadTask;->send(Lcom/google/firebase/storage/network/NetworkRequest;)Z

    move-result p1

    if-nez p1, :cond_31

    return v4

    :cond_31
    const-string p1, "X-Goog-Upload-Status"

    .line 364
    invoke-virtual {v1, p1}, Lcom/google/firebase/storage/network/NetworkRequest;->getResultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_47

    .line 365
    new-instance p1, Ljava/io/IOException;

    const-string v0, "The server has terminated the upload session"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/firebase/storage/UploadTask;->mException:Ljava/lang/Exception;

    return v4

    :cond_47
    const-string p1, "X-Goog-Upload-Size-Received"

    .line 369
    invoke-virtual {v1, p1}, Lcom/google/firebase/storage/network/NetworkRequest;->getResultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 371
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_58

    .line 372
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_5a

    :cond_58
    const-wide/16 v1, 0x0

    .line 376
    :goto_5a
    iget-object p1, p0, Lcom/google/firebase/storage/UploadTask;->mBytesUploaded:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    cmp-long p1, v5, v1

    if-lez p1, :cond_6e

    .line 378
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Unexpected error. The server lost a chunk update."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/firebase/storage/UploadTask;->mException:Ljava/lang/Exception;

    return v4

    :cond_6e
    cmp-long p1, v5, v1

    if-gez p1, :cond_aa

    .line 382
    :try_start_72
    iget-object p1, p0, Lcom/google/firebase/storage/UploadTask;->mStreamBuffer:Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;

    sub-long v7, v1, v5

    long-to-int v3, v7

    invoke-virtual {p1, v3}, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;->advance(I)I

    move-result p1

    int-to-long v9, p1

    cmp-long p1, v9, v7

    if-eqz p1, :cond_8a

    .line 384
    new-instance p1, Ljava/io/IOException;

    const-string v1, "Unexpected end of stream encountered."

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/firebase/storage/UploadTask;->mException:Ljava/lang/Exception;

    return v4

    .line 387
    :cond_8a
    iget-object p1, p0, Lcom/google/firebase/storage/UploadTask;->mBytesUploaded:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1, v5, v6, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result p1

    if-nez p1, :cond_aa

    const-string p1, "Somehow, the uploaded bytes changed during an uploaded.  This should nothappen"

    .line 388
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "uploaded bytes changed unexpectedly."

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/firebase/storage/UploadTask;->mException:Ljava/lang/Exception;
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_a0} :catch_a1

    return v4

    :catch_a1
    move-exception p1

    const-string v1, "Unable to recover position in Stream during resumable upload"

    .line 396
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 398
    iput-object p1, p0, Lcom/google/firebase/storage/UploadTask;->mException:Ljava/lang/Exception;

    return v4

    :cond_aa
    const/4 p1, 0x1

    return p1
.end method

.method private send(Lcom/google/firebase/storage/network/NetworkRequest;)Z
    .registers 4

    .line 461
    iget-object v0, p0, Lcom/google/firebase/storage/UploadTask;->mAuthProvider:Lcom/google/firebase/auth/internal/InternalAuthProvider;

    .line 462
    invoke-static {v0}, Lcom/google/firebase/storage/internal/Util;->getCurrentAuthToken(Lcom/google/firebase/auth/internal/InternalAuthProvider;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/storage/UploadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v1}, Lcom/google/firebase/storage/StorageReference;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 461
    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/storage/network/NetworkRequest;->performRequest(Ljava/lang/String;Landroid/content/Context;)V

    .line 463
    invoke-direct {p0, p1}, Lcom/google/firebase/storage/UploadTask;->processResultValid(Lcom/google/firebase/storage/network/NetworkRequest;)Z

    move-result p1

    return p1
.end method

.method private sendWithRetry(Lcom/google/firebase/storage/network/NetworkRequest;)Z
    .registers 3

    .line 467
    iget-object v0, p0, Lcom/google/firebase/storage/UploadTask;->mSender:Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

    invoke-virtual {v0, p1}, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->sendWithExponentialBackoff(Lcom/google/firebase/storage/network/NetworkRequest;)V

    .line 468
    invoke-direct {p0, p1}, Lcom/google/firebase/storage/UploadTask;->processResultValid(Lcom/google/firebase/storage/network/NetworkRequest;)Z

    move-result p1

    return p1
.end method

.method private serverStateValid()Z
    .registers 4

    .line 329
    iget-object v0, p0, Lcom/google/firebase/storage/UploadTask;->mServerStatus:Ljava/lang/String;

    const-string v1, "final"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 330
    iget-object v0, p0, Lcom/google/firebase/storage/UploadTask;->mException:Ljava/lang/Exception;

    if-nez v0, :cond_19

    .line 331
    new-instance v0, Ljava/io/IOException;

    iget-object v1, p0, Lcom/google/firebase/storage/UploadTask;->mServerException:Ljava/lang/Exception;

    const-string v2, "The server has terminated the upload session"

    invoke-direct {v0, v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v0, p0, Lcom/google/firebase/storage/UploadTask;->mException:Ljava/lang/Exception;

    :cond_19
    const/16 v0, 0x40

    const/4 v1, 0x0

    .line 334
    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/storage/UploadTask;->tryChangeState(IZ)Z

    return v1

    :cond_20
    const/4 v0, 0x1

    return v0
.end method

.method private shouldContinue()Z
    .registers 6

    .line 282
    invoke-virtual {p0}, Lcom/google/firebase/storage/UploadTask;->getInternalState()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x80

    if-ne v0, v2, :cond_a

    return v1

    .line 287
    :cond_a
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    const/16 v2, 0x40

    if-eqz v0, :cond_1d

    .line 288
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/storage/UploadTask;->mException:Ljava/lang/Exception;

    .line 289
    invoke-virtual {p0, v2, v1}, Lcom/google/firebase/storage/UploadTask;->tryChangeState(IZ)Z

    return v1

    .line 292
    :cond_1d
    invoke-virtual {p0}, Lcom/google/firebase/storage/UploadTask;->getInternalState()I

    move-result v0

    const/16 v3, 0x20

    if-ne v0, v3, :cond_2b

    const/16 v0, 0x100

    .line 293
    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/storage/UploadTask;->tryChangeState(IZ)Z

    return v1

    .line 296
    :cond_2b
    invoke-virtual {p0}, Lcom/google/firebase/storage/UploadTask;->getInternalState()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_39

    const/16 v0, 0x10

    .line 297
    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/storage/UploadTask;->tryChangeState(IZ)Z

    return v1

    .line 300
    :cond_39
    invoke-direct {p0}, Lcom/google/firebase/storage/UploadTask;->serverStateValid()Z

    move-result v0

    if-nez v0, :cond_40

    return v1

    .line 303
    :cond_40
    iget-object v0, p0, Lcom/google/firebase/storage/UploadTask;->mUploadUri:Landroid/net/Uri;

    if-nez v0, :cond_55

    .line 304
    iget-object v0, p0, Lcom/google/firebase/storage/UploadTask;->mException:Ljava/lang/Exception;

    if-nez v0, :cond_51

    .line 305
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Unable to obtain an upload URL."

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/firebase/storage/UploadTask;->mException:Ljava/lang/Exception;

    .line 307
    :cond_51
    invoke-virtual {p0, v2, v1}, Lcom/google/firebase/storage/UploadTask;->tryChangeState(IZ)Z

    return v1

    .line 310
    :cond_55
    iget-object v0, p0, Lcom/google/firebase/storage/UploadTask;->mException:Ljava/lang/Exception;

    if-eqz v0, :cond_5d

    .line 311
    invoke-virtual {p0, v2, v1}, Lcom/google/firebase/storage/UploadTask;->tryChangeState(IZ)Z

    return v1

    .line 315
    :cond_5d
    iget-object v0, p0, Lcom/google/firebase/storage/UploadTask;->mServerException:Ljava/lang/Exception;

    const/4 v3, 0x1

    if-nez v0, :cond_71

    iget v0, p0, Lcom/google/firebase/storage/UploadTask;->mResultCode:I

    const/16 v4, 0xc8

    if-lt v0, v4, :cond_71

    iget v0, p0, Lcom/google/firebase/storage/UploadTask;->mResultCode:I

    const/16 v4, 0x12c

    if-lt v0, v4, :cond_6f

    goto :goto_71

    :cond_6f
    const/4 v0, 0x0

    goto :goto_72

    :cond_71
    :goto_71
    const/4 v0, 0x1

    :goto_72
    if-eqz v0, :cond_84

    .line 317
    invoke-direct {p0, v3}, Lcom/google/firebase/storage/UploadTask;->recoverStatus(Z)Z

    move-result v0

    if-nez v0, :cond_84

    .line 319
    invoke-direct {p0}, Lcom/google/firebase/storage/UploadTask;->serverStateValid()Z

    move-result v0

    if-eqz v0, :cond_83

    .line 320
    invoke-virtual {p0, v2, v1}, Lcom/google/firebase/storage/UploadTask;->tryChangeState(IZ)Z

    :cond_83
    return v1

    :cond_84
    return v3
.end method

.method private uploadChunk()V
    .registers 13

    const-string v0, "UploadTask"

    .line 407
    :try_start_2
    iget-object v1, p0, Lcom/google/firebase/storage/UploadTask;->mStreamBuffer:Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;

    iget v2, p0, Lcom/google/firebase/storage/UploadTask;->mCurrentChunkSize:I

    invoke-virtual {v1, v2}, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;->fill(I)I

    .line 408
    iget v1, p0, Lcom/google/firebase/storage/UploadTask;->mCurrentChunkSize:I

    iget-object v2, p0, Lcom/google/firebase/storage/UploadTask;->mStreamBuffer:Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;

    invoke-virtual {v2}, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;->available()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 410
    new-instance v2, Lcom/google/firebase/storage/network/ResumableUploadByteRequest;

    iget-object v3, p0, Lcom/google/firebase/storage/UploadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    .line 412
    invoke-virtual {v3}, Lcom/google/firebase/storage/StorageReference;->getStorageUri()Landroid/net/Uri;

    move-result-object v4

    iget-object v3, p0, Lcom/google/firebase/storage/UploadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    .line 413
    invoke-virtual {v3}, Lcom/google/firebase/storage/StorageReference;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v5

    iget-object v6, p0, Lcom/google/firebase/storage/UploadTask;->mUploadUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/firebase/storage/UploadTask;->mStreamBuffer:Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;

    .line 415
    invoke-virtual {v3}, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;->get()[B

    move-result-object v7

    iget-object v3, p0, Lcom/google/firebase/storage/UploadTask;->mBytesUploaded:Ljava/util/concurrent/atomic/AtomicLong;

    .line 416
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    iget-object v3, p0, Lcom/google/firebase/storage/UploadTask;->mStreamBuffer:Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;

    .line 418
    invoke-virtual {v3}, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;->isFinished()Z

    move-result v11

    move-object v3, v2

    move v10, v1

    invoke-direct/range {v3 .. v11}, Lcom/google/firebase/storage/network/ResumableUploadByteRequest;-><init>(Landroid/net/Uri;Lcom/google/firebase/FirebaseApp;Landroid/net/Uri;[BJIZ)V

    .line 420
    invoke-direct {p0, v2}, Lcom/google/firebase/storage/UploadTask;->send(Lcom/google/firebase/storage/network/NetworkRequest;)Z

    move-result v3

    if-nez v3, :cond_5d

    const/high16 v1, 0x40000

    .line 421
    iput v1, p0, Lcom/google/firebase/storage/UploadTask;->mCurrentChunkSize:I

    .line 422
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resetting chunk size to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/firebase/storage/UploadTask;->mCurrentChunkSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 426
    :cond_5d
    iget-object v3, p0, Lcom/google/firebase/storage/UploadTask;->mBytesUploaded:Ljava/util/concurrent/atomic/AtomicLong;

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    .line 428
    iget-object v3, p0, Lcom/google/firebase/storage/UploadTask;->mStreamBuffer:Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;

    invoke-virtual {v3}, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;->isFinished()Z

    move-result v3

    if-nez v3, :cond_93

    .line 429
    iget-object v2, p0, Lcom/google/firebase/storage/UploadTask;->mStreamBuffer:Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;

    invoke-virtual {v2, v1}, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;->advance(I)I

    .line 430
    iget v1, p0, Lcom/google/firebase/storage/UploadTask;->mCurrentChunkSize:I

    const/high16 v2, 0x2000000

    if-ge v1, v2, :cond_d3

    .line 431
    iget v1, p0, Lcom/google/firebase/storage/UploadTask;->mCurrentChunkSize:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/firebase/storage/UploadTask;->mCurrentChunkSize:I

    .line 432
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Increasing chunk size to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/firebase/storage/UploadTask;->mCurrentChunkSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_92} :catch_cb

    goto :goto_d3

    .line 436
    :cond_93
    :try_start_93
    new-instance v1, Lcom/google/firebase/storage/StorageMetadata$Builder;

    .line 437
    invoke-virtual {v2}, Lcom/google/firebase/storage/network/NetworkRequest;->getResultBody()Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, p0, Lcom/google/firebase/storage/UploadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    invoke-direct {v1, v3, v4}, Lcom/google/firebase/storage/StorageMetadata$Builder;-><init>(Lorg/json/JSONObject;Lcom/google/firebase/storage/StorageReference;)V

    invoke-virtual {v1}, Lcom/google/firebase/storage/StorageMetadata$Builder;->build()Lcom/google/firebase/storage/StorageMetadata;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/storage/UploadTask;->mMetadata:Lcom/google/firebase/storage/StorageMetadata;
    :try_end_a4
    .catch Lorg/json/JSONException; {:try_start_93 .. :try_end_a4} :catch_af
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_a4} :catch_cb

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 447
    :try_start_a6
    invoke-virtual {p0, v1, v2}, Lcom/google/firebase/storage/UploadTask;->tryChangeState(IZ)Z

    const/16 v1, 0x80

    .line 448
    invoke-virtual {p0, v1, v2}, Lcom/google/firebase/storage/UploadTask;->tryChangeState(IZ)Z

    goto :goto_d3

    :catch_af
    move-exception v1

    .line 439
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to parse resulting metadata from upload:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    invoke-virtual {v2}, Lcom/google/firebase/storage/network/NetworkRequest;->getRawResult()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 439
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 444
    iput-object v1, p0, Lcom/google/firebase/storage/UploadTask;->mException:Ljava/lang/Exception;
    :try_end_ca
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_ca} :catch_cb

    return-void

    :catch_cb
    move-exception v1

    const-string v2, "Unable to read bytes for uploading"

    .line 451
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 452
    iput-object v1, p0, Lcom/google/firebase/storage/UploadTask;->mException:Ljava/lang/Exception;

    :cond_d3
    :goto_d3
    return-void
.end method


# virtual methods
.method getStorage()Lcom/google/firebase/storage/StorageReference;
    .registers 2

    .line 179
    iget-object v0, p0, Lcom/google/firebase/storage/UploadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    return-object v0
.end method

.method getTotalByteCount()J
    .registers 3

    .line 185
    iget-wide v0, p0, Lcom/google/firebase/storage/UploadTask;->mTotalByteCount:J

    return-wide v0
.end method

.method protected onCanceled()V
    .registers 5

    .line 481
    iget-object v0, p0, Lcom/google/firebase/storage/UploadTask;->mSender:Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

    invoke-virtual {v0}, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->cancel()V

    .line 484
    iget-object v0, p0, Lcom/google/firebase/storage/UploadTask;->mUploadUri:Landroid/net/Uri;

    if-eqz v0, :cond_1d

    .line 485
    new-instance v0, Lcom/google/firebase/storage/network/ResumableUploadCancelRequest;

    iget-object v1, p0, Lcom/google/firebase/storage/UploadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    .line 487
    invoke-virtual {v1}, Lcom/google/firebase/storage/StorageReference;->getStorageUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/storage/UploadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v2}, Lcom/google/firebase/storage/StorageReference;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/storage/UploadTask;->mUploadUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/firebase/storage/network/ResumableUploadCancelRequest;-><init>(Landroid/net/Uri;Lcom/google/firebase/FirebaseApp;Landroid/net/Uri;)V

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    if-eqz v0, :cond_2c

    .line 492
    invoke-static {}, Lcom/google/firebase/storage/StorageTaskScheduler;->getInstance()Lcom/google/firebase/storage/StorageTaskScheduler;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/storage/UploadTask$1;

    invoke-direct {v2, p0, v0}, Lcom/google/firebase/storage/UploadTask$1;-><init>(Lcom/google/firebase/storage/UploadTask;Lcom/google/firebase/storage/network/NetworkRequest;)V

    .line 493
    invoke-virtual {v1, v2}, Lcom/google/firebase/storage/StorageTaskScheduler;->scheduleCommand(Ljava/lang/Runnable;)V

    .line 503
    :cond_2c
    sget-object v0, Lcom/google/android/gms/common/api/Status;->RESULT_CANCELED:Lcom/google/android/gms/common/api/Status;

    invoke-static {v0}, Lcom/google/firebase/storage/StorageException;->fromErrorStatus(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/storage/StorageException;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/storage/UploadTask;->mException:Ljava/lang/Exception;

    .line 505
    invoke-super {p0}, Lcom/google/firebase/storage/StorageTask;->onCanceled()V

    return-void
.end method

.method protected resetState()V
    .registers 3

    const/4 v0, 0x0

    .line 242
    iput-object v0, p0, Lcom/google/firebase/storage/UploadTask;->mException:Ljava/lang/Exception;

    .line 243
    iput-object v0, p0, Lcom/google/firebase/storage/UploadTask;->mServerException:Ljava/lang/Exception;

    const/4 v1, 0x0

    .line 244
    iput v1, p0, Lcom/google/firebase/storage/UploadTask;->mResultCode:I

    .line 245
    iput-object v0, p0, Lcom/google/firebase/storage/UploadTask;->mServerStatus:Ljava/lang/String;

    return-void
.end method

.method run()V
    .registers 6

    .line 197
    iget-object v0, p0, Lcom/google/firebase/storage/UploadTask;->mSender:Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

    invoke-virtual {v0}, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->reset()V

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 198
    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/storage/UploadTask;->tryChangeState(IZ)Z

    move-result v2

    const-string v3, "UploadTask"

    if-nez v2, :cond_15

    const-string v0, "The upload cannot continue as it is not in a valid state."

    .line 200
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 204
    :cond_15
    iget-object v2, p0, Lcom/google/firebase/storage/UploadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v2}, Lcom/google/firebase/storage/StorageReference;->getParent()Lcom/google/firebase/storage/StorageReference;

    move-result-object v2

    if-nez v2, :cond_26

    .line 205
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cannot upload to getRoot. You should upload to a storage location such as .getReference(\'image.png\').putFile..."

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/firebase/storage/UploadTask;->mException:Ljava/lang/Exception;

    .line 211
    :cond_26
    iget-object v2, p0, Lcom/google/firebase/storage/UploadTask;->mException:Ljava/lang/Exception;

    if-eqz v2, :cond_2b

    return-void

    .line 215
    :cond_2b
    iget-object v2, p0, Lcom/google/firebase/storage/UploadTask;->mUploadUri:Landroid/net/Uri;

    if-nez v2, :cond_33

    .line 216
    invoke-direct {p0}, Lcom/google/firebase/storage/UploadTask;->beginResumableUpload()V

    goto :goto_36

    .line 218
    :cond_33
    invoke-direct {p0, v1}, Lcom/google/firebase/storage/UploadTask;->recoverStatus(Z)Z

    .line 221
    :goto_36
    invoke-direct {p0}, Lcom/google/firebase/storage/UploadTask;->shouldContinue()Z

    move-result v2

    :cond_3a
    :goto_3a
    if-eqz v2, :cond_49

    .line 223
    invoke-direct {p0}, Lcom/google/firebase/storage/UploadTask;->uploadChunk()V

    .line 224
    invoke-direct {p0}, Lcom/google/firebase/storage/UploadTask;->shouldContinue()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 227
    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/storage/UploadTask;->tryChangeState(IZ)Z

    goto :goto_3a

    .line 231
    :cond_49
    iget-boolean v0, p0, Lcom/google/firebase/storage/UploadTask;->mIsStreamOwned:Z

    if-eqz v0, :cond_61

    invoke-virtual {p0}, Lcom/google/firebase/storage/UploadTask;->getInternalState()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_61

    .line 233
    :try_start_55
    iget-object v0, p0, Lcom/google/firebase/storage/UploadTask;->mStreamBuffer:Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;

    invoke-virtual {v0}, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_5a} :catch_5b

    goto :goto_61

    :catch_5b
    move-exception v0

    const-string v1, "Unable to close stream."

    .line 235
    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_61
    :goto_61
    return-void
.end method

.method protected schedule()V
    .registers 3

    .line 190
    invoke-static {}, Lcom/google/firebase/storage/StorageTaskScheduler;->getInstance()Lcom/google/firebase/storage/StorageTaskScheduler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/storage/UploadTask;->getRunnable()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/storage/StorageTaskScheduler;->scheduleUpload(Ljava/lang/Runnable;)V

    return-void
.end method

.method bridge synthetic snapStateImpl()Lcom/google/firebase/storage/StorageTask$ProvideError;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 49
    invoke-virtual {p0}, Lcom/google/firebase/storage/UploadTask;->snapStateImpl()Lcom/google/firebase/storage/UploadTask$TaskSnapshot;

    move-result-object v0

    return-object v0
.end method

.method snapStateImpl()Lcom/google/firebase/storage/UploadTask$TaskSnapshot;
    .registers 10
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 511
    iget-object v0, p0, Lcom/google/firebase/storage/UploadTask;->mException:Ljava/lang/Exception;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/firebase/storage/UploadTask;->mException:Ljava/lang/Exception;

    goto :goto_9

    :cond_7
    iget-object v0, p0, Lcom/google/firebase/storage/UploadTask;->mServerException:Ljava/lang/Exception;

    .line 512
    :goto_9
    new-instance v8, Lcom/google/firebase/storage/UploadTask$TaskSnapshot;

    iget v1, p0, Lcom/google/firebase/storage/UploadTask;->mResultCode:I

    .line 513
    invoke-static {v0, v1}, Lcom/google/firebase/storage/StorageException;->fromExceptionAndHttpCode(Ljava/lang/Throwable;I)Lcom/google/firebase/storage/StorageException;

    move-result-object v3

    iget-object v0, p0, Lcom/google/firebase/storage/UploadTask;->mBytesUploaded:Ljava/util/concurrent/atomic/AtomicLong;

    .line 514
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/firebase/storage/UploadTask;->mUploadUri:Landroid/net/Uri;

    iget-object v7, p0, Lcom/google/firebase/storage/UploadTask;->mMetadata:Lcom/google/firebase/storage/StorageMetadata;

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/firebase/storage/UploadTask$TaskSnapshot;-><init>(Lcom/google/firebase/storage/UploadTask;Ljava/lang/Exception;JLandroid/net/Uri;Lcom/google/firebase/storage/StorageMetadata;)V

    return-object v8
.end method
