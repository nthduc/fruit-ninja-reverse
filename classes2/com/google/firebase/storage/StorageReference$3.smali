.class Lcom/google/firebase/storage/StorageReference$3;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-storage@@19.1.1"

# interfaces
.implements Lcom/google/firebase/storage/StreamDownloadTask$StreamProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/storage/StorageReference;->getBytes(J)Lcom/google/android/gms/tasks/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/storage/StorageReference;

.field final synthetic val$maxDownloadSizeBytes:J

.field final synthetic val$pendingResult:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/google/firebase/storage/StorageReference;JLcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 5

    .line 412
    iput-object p1, p0, Lcom/google/firebase/storage/StorageReference$3;->this$0:Lcom/google/firebase/storage/StorageReference;

    iput-wide p2, p0, Lcom/google/firebase/storage/StorageReference$3;->val$maxDownloadSizeBytes:J

    iput-object p4, p0, Lcom/google/firebase/storage/StorageReference$3;->val$pendingResult:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground(Lcom/google/firebase/storage/StreamDownloadTask$TaskSnapshot;Ljava/io/InputStream;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p1, "the maximum allowed buffer size was exceeded."

    .line 417
    :try_start_2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x4000

    .line 421
    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 422
    :goto_d
    array-length v4, v1

    invoke-virtual {p2, v1, v2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2c

    add-int/2addr v3, v4

    int-to-long v5, v3

    .line 424
    iget-wide v7, p0, Lcom/google/firebase/storage/StorageReference$3;->val$maxDownloadSizeBytes:J

    cmp-long v9, v5, v7

    if-gtz v9, :cond_21

    .line 429
    invoke-virtual {v0, v1, v2, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_d

    :cond_21
    const-string v0, "StorageReference"

    .line 425
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 431
    :cond_2c
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 432
    iget-object p1, p0, Lcom/google/firebase/storage/StorageReference$3;->val$pendingResult:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V
    :try_end_38
    .catchall {:try_start_2 .. :try_end_38} :catchall_3c

    .line 434
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_3c
    move-exception p1

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    throw p1

    return-void
.end method
