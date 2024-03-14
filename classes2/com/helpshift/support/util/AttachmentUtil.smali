.class public final Lcom/helpshift/support/util/AttachmentUtil;
.super Ljava/lang/Object;
.source "AttachmentUtil.java"


# static fields
.field private static final IMAGE_MAX_DIMENSION:I = 0x400

.field private static final TAG:Ljava/lang/String; = "Helpshift_AttachUtil"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildLocalAttachmentCopyFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "localRscMessage_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "0-thumbnail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p0, :cond_34

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_34
    return-object v0
.end method

.method public static copyAttachment(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 33
    new-instance v1, Lcom/helpshift/support/HSApiData;

    invoke-direct {v1, v0}, Lcom/helpshift/support/HSApiData;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-static {p0}, Lcom/helpshift/util/AndroidFileUtil;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 38
    :try_start_e
    invoke-static {v2}, Lcom/helpshift/support/util/AttachmentUtil;->buildLocalAttachmentCopyFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 39
    new-instance v4, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 41
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_59

    .line 42
    invoke-virtual {v1, v2}, Lcom/helpshift/support/HSApiData;->storeFile(Ljava/lang/String;)V

    .line 43
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_32
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_32} :catch_65
    .catchall {:try_start_e .. :try_end_32} :catchall_62

    const/4 p0, 0x0

    .line 44
    :try_start_33
    invoke-virtual {v0, v2, p0}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0
    :try_end_37
    .catch Ljava/lang/NullPointerException; {:try_start_33 .. :try_end_37} :catch_56
    .catchall {:try_start_33 .. :try_end_37} :catchall_54

    const/16 v2, 0x2000

    .line 47
    :try_start_39
    new-array v2, v2, [B

    .line 48
    :goto_3b
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_46

    .line 49
    invoke-virtual {v0, v2, p0, v4}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_3b

    .line 51
    :cond_46
    invoke-static {v5}, Lcom/helpshift/util/ImageUtil;->isResizableImage(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5b

    const/16 p0, 0x400

    .line 52
    invoke-static {v5, p0}, Lcom/helpshift/util/ImageUtil;->scaleDownAndSaveWithMaxDimension(Ljava/lang/String;I)V
    :try_end_51
    .catch Ljava/lang/NullPointerException; {:try_start_39 .. :try_end_51} :catch_52
    .catchall {:try_start_39 .. :try_end_51} :catchall_76

    goto :goto_5b

    :catch_52
    move-exception p0

    goto :goto_68

    :catchall_54
    move-exception p0

    goto :goto_78

    :catch_56
    move-exception p0

    move-object v0, v3

    goto :goto_68

    :cond_59
    move-object v0, v3

    move-object v1, v0

    .line 63
    :cond_5b
    :goto_5b
    invoke-static {v0}, Lcom/helpshift/util/IOUtils;->closeQuitely(Ljava/io/Closeable;)V

    .line 64
    invoke-static {v1}, Lcom/helpshift/util/IOUtils;->closeQuitely(Ljava/io/Closeable;)V

    return-object v5

    :catchall_62
    move-exception p0

    move-object v1, v3

    goto :goto_78

    :catch_65
    move-exception p0

    move-object v0, v3

    move-object v1, v0

    :goto_68
    :try_start_68
    const-string v2, "Helpshift_AttachUtil"

    const-string v4, "NPE"

    .line 59
    invoke-static {v2, v4, p0}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6f
    .catchall {:try_start_68 .. :try_end_6f} :catchall_76

    .line 63
    invoke-static {v0}, Lcom/helpshift/util/IOUtils;->closeQuitely(Ljava/io/Closeable;)V

    .line 64
    invoke-static {v1}, Lcom/helpshift/util/IOUtils;->closeQuitely(Ljava/io/Closeable;)V

    return-object v3

    :catchall_76
    move-exception p0

    move-object v3, v0

    .line 63
    :goto_78
    invoke-static {v3}, Lcom/helpshift/util/IOUtils;->closeQuitely(Ljava/io/Closeable;)V

    .line 64
    invoke-static {v1}, Lcom/helpshift/util/IOUtils;->closeQuitely(Ljava/io/Closeable;)V

    .line 65
    throw p0

    return-void
.end method

.method public static copyAttachment(Lcom/helpshift/conversation/dto/AttachmentPickerFile;)V
    .registers 11
    .param p0    # Lcom/helpshift/conversation/dto/AttachmentPickerFile;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/helpshift/conversation/dto/AttachmentPickerFile;->transientUri:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    if-nez v0, :cond_e

    const-string p0, "Helpshift_AttachUtil"

    const-string v0, "Can\'t proceed if uri is null"

    .line 71
    invoke-static {p0, v0}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 74
    :cond_e
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 75
    new-instance v2, Lcom/helpshift/support/HSApiData;

    invoke-direct {v2, v1}, Lcom/helpshift/support/HSApiData;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    .line 80
    :try_start_18
    invoke-static {v1, v0}, Lcom/helpshift/util/AndroidFileUtil;->getFileExtensionFromMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 81
    invoke-static {v4}, Lcom/helpshift/support/util/AttachmentUtil;->buildLocalAttachmentCopyFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 82
    new-instance v5, Ljava/io/File;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 83
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 84
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    const/4 v7, 0x1

    if-nez v5, :cond_69

    .line 85
    invoke-virtual {v2, v4}, Lcom/helpshift/support/HSApiData;->storeFile(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_3f
    .catchall {:try_start_18 .. :try_end_3f} :catchall_75

    const/4 v5, 0x0

    .line 87
    :try_start_40
    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    const/16 v4, 0x2000

    .line 90
    new-array v4, v4, [B

    .line 91
    :goto_48
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_53

    .line 92
    invoke-virtual {v3, v4, v5, v8}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_48

    .line 94
    :cond_53
    iput-object v6, p0, Lcom/helpshift/conversation/dto/AttachmentPickerFile;->filePath:Ljava/lang/String;

    .line 95
    iput-boolean v7, p0, Lcom/helpshift/conversation/dto/AttachmentPickerFile;->isFileCompressionAndCopyingDone:Z

    .line 96
    invoke-static {v6}, Lcom/helpshift/util/ImageUtil;->isResizableImage(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6e

    .line 97
    invoke-static {v1, v0}, Lcom/helpshift/util/ImageUtil;->getExifOrientation(Landroid/content/Context;Landroid/net/Uri;)I

    move-result p0

    const/16 v0, 0x400

    .line 98
    invoke-static {v6, v0, p0}, Lcom/helpshift/util/ImageUtil;->scaleDownAndSaveWithMaxDimension(Ljava/lang/String;II)V
    :try_end_66
    .catchall {:try_start_40 .. :try_end_66} :catchall_67

    goto :goto_6e

    :catchall_67
    move-exception p0

    goto :goto_77

    .line 103
    :cond_69
    :try_start_69
    iput-object v6, p0, Lcom/helpshift/conversation/dto/AttachmentPickerFile;->filePath:Ljava/lang/String;

    .line 104
    iput-boolean v7, p0, Lcom/helpshift/conversation/dto/AttachmentPickerFile;->isFileCompressionAndCopyingDone:Z
    :try_end_6d
    .catchall {:try_start_69 .. :try_end_6d} :catchall_75

    move-object v2, v3

    .line 108
    :cond_6e
    :goto_6e
    invoke-static {v3}, Lcom/helpshift/util/IOUtils;->closeQuitely(Ljava/io/Closeable;)V

    .line 109
    invoke-static {v2}, Lcom/helpshift/util/IOUtils;->closeQuitely(Ljava/io/Closeable;)V

    return-void

    :catchall_75
    move-exception p0

    move-object v2, v3

    .line 108
    :goto_77
    invoke-static {v3}, Lcom/helpshift/util/IOUtils;->closeQuitely(Ljava/io/Closeable;)V

    .line 109
    invoke-static {v2}, Lcom/helpshift/util/IOUtils;->closeQuitely(Ljava/io/Closeable;)V

    .line 110
    throw p0

    return-void
.end method
