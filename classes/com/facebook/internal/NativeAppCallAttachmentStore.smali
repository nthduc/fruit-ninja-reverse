.class public final Lcom/facebook/internal/NativeAppCallAttachmentStore;
.super Ljava/lang/Object;
.source "NativeAppCallAttachmentStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;
    }
.end annotation


# static fields
.field static final ATTACHMENTS_DIR_NAME:Ljava/lang/String; = "com.facebook.NativeAppCallAttachmentStore.files"

.field private static final TAG:Ljava/lang/String; = "com.facebook.internal.NativeAppCallAttachmentStore"

.field private static attachmentsDirectory:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAttachments(Ljava/util/Collection;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_92

    .line 95
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_92

    .line 100
    :cond_a
    sget-object v0, Lcom/facebook/internal/NativeAppCallAttachmentStore;->attachmentsDirectory:Ljava/io/File;

    if-nez v0, :cond_11

    .line 101
    invoke-static {}, Lcom/facebook/internal/NativeAppCallAttachmentStore;->cleanupAllAttachments()V

    .line 104
    :cond_11
    invoke-static {}, Lcom/facebook/internal/NativeAppCallAttachmentStore;->ensureAttachmentsDirectoryExists()Ljava/io/File;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    :try_start_19
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1d
    :goto_1d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_60

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;

    .line 110
    # getter for: Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->shouldCreateFile:Z
    invoke-static {v1}, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->access$100(Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;)Z

    move-result v2

    if-nez v2, :cond_30

    goto :goto_1d

    .line 114
    :cond_30
    # getter for: Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->callId:Ljava/util/UUID;
    invoke-static {v1}, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->access$200(Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;)Ljava/util/UUID;

    move-result-object v2

    # getter for: Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->attachmentName:Ljava/lang/String;
    invoke-static {v1}, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->access$300(Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/facebook/internal/NativeAppCallAttachmentStore;->getAttachmentFile(Ljava/util/UUID;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v2

    .line 115
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    # getter for: Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->access$400(Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_4e

    .line 118
    # getter for: Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->access$400(Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/facebook/internal/NativeAppCallAttachmentStore;->processAttachmentBitmap(Landroid/graphics/Bitmap;Ljava/io/File;)V

    goto :goto_1d

    .line 119
    :cond_4e
    # getter for: Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->originalUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->access$500(Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_1d

    .line 120
    # getter for: Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->originalUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->access$500(Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;)Landroid/net/Uri;

    move-result-object v3

    # getter for: Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->isContentUri:Z
    invoke-static {v1}, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->access$600(Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;)Z

    move-result v1

    invoke-static {v3, v1, v2}, Lcom/facebook/internal/NativeAppCallAttachmentStore;->processAttachmentFile(Landroid/net/Uri;ZLjava/io/File;)V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_5f} :catch_61

    goto :goto_1d

    :cond_60
    return-void

    :catch_61
    move-exception p0

    .line 124
    sget-object v1, Lcom/facebook/internal/NativeAppCallAttachmentStore;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got unexpected exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_7c
    :goto_7c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 127
    :try_start_88
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_8b} :catch_7c

    goto :goto_7c

    .line 132
    :cond_8c
    new-instance v0, Lcom/facebook/FacebookException;

    invoke-direct {v0, p0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_92
    :goto_92
    return-void
.end method

.method public static cleanupAllAttachments()V
    .registers 1

    .line 206
    invoke-static {}, Lcom/facebook/internal/NativeAppCallAttachmentStore;->getAttachmentsDirectory()Ljava/io/File;

    move-result-object v0

    .line 207
    invoke-static {v0}, Lcom/facebook/internal/Utility;->deleteDirectory(Ljava/io/File;)V

    return-void
.end method

.method public static cleanupAttachmentsForCall(Ljava/util/UUID;)V
    .registers 2

    const/4 v0, 0x0

    .line 142
    invoke-static {p0, v0}, Lcom/facebook/internal/NativeAppCallAttachmentStore;->getAttachmentsDirectoryForCall(Ljava/util/UUID;Z)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_a

    .line 144
    invoke-static {p0}, Lcom/facebook/internal/Utility;->deleteDirectory(Ljava/io/File;)V

    :cond_a
    return-void
.end method

.method public static createAttachment(Ljava/util/UUID;Landroid/graphics/Bitmap;)Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;
    .registers 4

    const-string v0, "callId"

    .line 54
    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attachmentBitmap"

    .line 55
    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    new-instance v0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, v1}, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;-><init>(Ljava/util/UUID;Landroid/graphics/Bitmap;Landroid/net/Uri;Lcom/facebook/internal/NativeAppCallAttachmentStore$1;)V

    return-object v0
.end method

.method public static createAttachment(Ljava/util/UUID;Landroid/net/Uri;)Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;
    .registers 4

    const-string v0, "callId"

    .line 61
    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attachmentUri"

    .line 62
    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    new-instance v0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, v1}, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;-><init>(Ljava/util/UUID;Landroid/graphics/Bitmap;Landroid/net/Uri;Lcom/facebook/internal/NativeAppCallAttachmentStore$1;)V

    return-object v0
.end method

.method static ensureAttachmentsDirectoryExists()Ljava/io/File;
    .registers 1

    .line 172
    invoke-static {}, Lcom/facebook/internal/NativeAppCallAttachmentStore;->getAttachmentsDirectory()Ljava/io/File;

    move-result-object v0

    .line 173
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    return-object v0
.end method

.method static getAttachmentFile(Ljava/util/UUID;Ljava/lang/String;Z)Ljava/io/File;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    invoke-static {p0, p2}, Lcom/facebook/internal/NativeAppCallAttachmentStore;->getAttachmentsDirectoryForCall(Ljava/util/UUID;Z)Ljava/io/File;

    move-result-object p0

    const/4 p2, 0x0

    if-nez p0, :cond_8

    return-object p2

    .line 197
    :cond_8
    :try_start_8
    new-instance v0, Ljava/io/File;

    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_13} :catch_14

    return-object v0

    :catch_14
    return-object p2
.end method

.method static declared-synchronized getAttachmentsDirectory()Ljava/io/File;
    .registers 4

    const-class v0, Lcom/facebook/internal/NativeAppCallAttachmentStore;

    monitor-enter v0

    .line 164
    :try_start_3
    sget-object v1, Lcom/facebook/internal/NativeAppCallAttachmentStore;->attachmentsDirectory:Ljava/io/File;

    if-nez v1, :cond_18

    .line 165
    new-instance v1, Ljava/io/File;

    .line 166
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "com.facebook.NativeAppCallAttachmentStore.files"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Lcom/facebook/internal/NativeAppCallAttachmentStore;->attachmentsDirectory:Ljava/io/File;

    .line 168
    :cond_18
    sget-object v1, Lcom/facebook/internal/NativeAppCallAttachmentStore;->attachmentsDirectory:Ljava/io/File;
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1c

    monitor-exit v0

    return-object v1

    :catchall_1c
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static getAttachmentsDirectoryForCall(Ljava/util/UUID;Z)Ljava/io/File;
    .registers 4

    .line 178
    sget-object v0, Lcom/facebook/internal/NativeAppCallAttachmentStore;->attachmentsDirectory:Ljava/io/File;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 182
    :cond_6
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz p1, :cond_1a

    .line 183
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1a

    .line 184
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_1a
    return-object v1
.end method

.method public static openAttachment(Ljava/util/UUID;Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 150
    invoke-static {p1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    if-eqz p0, :cond_14

    const/4 v0, 0x0

    .line 155
    :try_start_9
    invoke-static {p0, p1, v0}, Lcom/facebook/internal/NativeAppCallAttachmentStore;->getAttachmentFile(Ljava/util/UUID;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object p0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_d} :catch_e

    return-object p0

    .line 159
    :catch_e
    new-instance p0, Ljava/io/FileNotFoundException;

    invoke-direct {p0}, Ljava/io/FileNotFoundException;-><init>()V

    throw p0

    .line 151
    :cond_14
    new-instance p0, Ljava/io/FileNotFoundException;

    invoke-direct {p0}, Ljava/io/FileNotFoundException;-><init>()V

    throw p0
.end method

.method private static processAttachmentBitmap(Landroid/graphics/Bitmap;Ljava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 70
    :try_start_5
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p0, p1, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_10

    .line 72
    invoke-static {v0}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_10
    move-exception p0

    invoke-static {v0}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 73
    throw p0
.end method

.method private static processAttachmentFile(Landroid/net/Uri;ZLjava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    if-nez p1, :cond_11

    .line 82
    :try_start_7
    new-instance p1, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_1d

    .line 85
    :cond_11
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    .line 88
    :goto_1d
    invoke-static {p1, v0}, Lcom/facebook/internal/Utility;->copyAndCloseInputStream(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_24

    .line 90
    invoke-static {v0}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_24
    move-exception p0

    invoke-static {v0}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 91
    throw p0
.end method
