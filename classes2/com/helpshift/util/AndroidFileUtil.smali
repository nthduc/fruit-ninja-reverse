.class public Lcom/helpshift/util/AndroidFileUtil;
.super Ljava/lang/Object;
.source "AndroidFileUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AndroidFileUtil"

.field private static final imageMimeTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 27
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "image/jpeg"

    const-string v2, "image/png"

    const-string v3, "image/gif"

    const-string v4, "image/x-png"

    const-string v5, "image/x-citrix-pjpeg"

    const-string v6, "image/x-citrix-gif"

    const-string v7, "image/pjpeg"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    .line 28
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/helpshift/util/AndroidFileUtil;->imageMimeTypes:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doesFileFromUriExistAndCanRead(Landroid/net/Uri;Landroid/content/Context;)Z
    .registers 6

    const/4 v0, 0x0

    .line 116
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "r"

    invoke-virtual {p1, p0, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_16
    .catchall {:try_start_1 .. :try_end_b} :catchall_14

    if-eqz p0, :cond_e

    const/4 v0, 0x1

    :cond_e
    if-eqz p0, :cond_13

    .line 127
    :try_start_10
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_13

    :catch_13
    :cond_13
    return v0

    :catchall_14
    move-exception p0

    goto :goto_2e

    :catch_16
    move-exception p1

    .line 120
    :try_start_17
    sget-object v1, Lcom/helpshift/util/AndroidFileUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open input file descriptor for doesFileFromUriExistAndCanRead: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 121
    invoke-static {v1, p0, p1}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2d
    .catchall {:try_start_17 .. :try_end_2d} :catchall_14

    return v0

    .line 132
    :goto_2e
    throw p0
.end method

.method public static getFileExtension(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    if-eqz p1, :cond_4b

    if-nez p0, :cond_6

    goto :goto_4b

    .line 195
    :cond_6
    :try_start_6
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_13} :catch_38
    .catchall {:try_start_6 .. :try_end_13} :catchall_35

    if-eqz p0, :cond_2f

    .line 197
    :try_start_15
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_2f

    const-string p1, "_display_name"

    .line 198
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 199
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 200
    invoke-static {p1}, Lcom/helpshift/util/AndroidFileUtil;->getFileExtensionFromFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_29} :catch_39
    .catchall {:try_start_15 .. :try_end_29} :catchall_44

    if-eqz p0, :cond_2e

    .line 208
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2e
    return-object p1

    :cond_2f
    if-eqz p0, :cond_43

    :goto_31
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_43

    :catchall_35
    move-exception p1

    move-object p0, v0

    goto :goto_45

    :catch_38
    move-object p0, v0

    .line 204
    :catch_39
    :try_start_39
    sget-object p1, Lcom/helpshift/util/AndroidFileUtil;->TAG:Ljava/lang/String;

    const-string v1, "Unable to detect file extension via Uri"

    invoke-static {p1, v1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_44

    if-eqz p0, :cond_43

    goto :goto_31

    :cond_43
    :goto_43
    return-object v0

    :catchall_44
    move-exception p1

    :goto_45
    if-eqz p0, :cond_4a

    .line 208
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 210
    :cond_4a
    throw p1

    :cond_4b
    :goto_4b
    return-object v0
.end method

.method public static getFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 90
    invoke-static {p0}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    const/16 v0, 0x2f

    .line 93
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/16 v2, 0x2e

    .line 94
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-lez v2, :cond_28

    .line 101
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-lt v2, v3, :cond_1f

    goto :goto_28

    :cond_1f
    if-ge v0, v2, :cond_28

    add-int/lit8 v2, v2, 0x1

    .line 107
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_28
    :goto_28
    return-object v1
.end method

.method public static getFileExtensionFromFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 156
    invoke-static {p0}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    const/16 v0, 0x2e

    .line 159
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-gtz v0, :cond_11

    return-object v1

    .line 169
    :cond_11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_1a

    return-object v1

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    .line 173
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2f

    .line 176
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_29

    return-object v1

    :cond_29
    return-object p0
.end method

.method public static getFileExtensionFromMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 4
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 138
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 139
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    .line 140
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_32

    .line 143
    :cond_1d
    new-instance p0, Ljava/io/File;

    .line 144
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_32
    return-object p0
.end method

.method public static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 75
    :try_start_0
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpshift/util/AndroidFileUtil;->getMimeType(Ljava/net/URL;)Ljava/lang/String;

    move-result-object p0
    :try_end_1a
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_1a} :catch_1b

    return-object p0

    :catch_1b
    move-exception p0

    .line 78
    sget-object v0, Lcom/helpshift/util/AndroidFileUtil;->TAG:Ljava/lang/String;

    const-string v1, "error in getting mimeType :"

    invoke-static {v0, v1, p0}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getMimeType(Ljava/net/URL;)Ljava/lang/String;
    .registers 3

    .line 65
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 68
    sget-object v0, Lcom/helpshift/util/AndroidFileUtil;->TAG:Ljava/lang/String;

    const-string v1, "openConnection() Exception :"

    invoke-static {v0, v1, p0}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static isSupportedMimeType(Ljava/lang/String;)Z
    .registers 2

    .line 37
    sget-object v0, Lcom/helpshift/util/AndroidFileUtil;->imageMimeTypes:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static saveFile(Ljava/net/URL;Ljava/io/File;)V
    .registers 5

    const/4 v0, 0x0

    .line 45
    :try_start_1
    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_2d
    .catchall {:try_start_1 .. :try_end_5} :catchall_29

    .line 46
    :try_start_5
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_25
    .catchall {:try_start_5 .. :try_end_a} :catchall_22

    const/16 p1, 0x1f4

    .line 48
    :try_start_c
    new-array p1, p1, [B

    .line 50
    :goto_e
    array-length v0, p1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-ltz v0, :cond_1a

    .line 51
    invoke-virtual {v1, p1, v2, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_19} :catch_20
    .catchall {:try_start_c .. :try_end_19} :catchall_1e

    goto :goto_e

    .line 58
    :cond_1a
    invoke-static {p0}, Lcom/helpshift/util/IOUtils;->closeQuitely(Ljava/io/Closeable;)V

    goto :goto_39

    :catchall_1e
    move-exception p1

    goto :goto_3f

    :catch_20
    move-exception p1

    goto :goto_27

    :catchall_22
    move-exception p1

    move-object v1, v0

    goto :goto_3f

    :catch_25
    move-exception p1

    move-object v1, v0

    :goto_27
    move-object v0, p0

    goto :goto_2f

    :catchall_29
    move-exception p1

    move-object p0, v0

    move-object v1, p0

    goto :goto_3f

    :catch_2d
    move-exception p1

    move-object v1, v0

    .line 55
    :goto_2f
    :try_start_2f
    sget-object p0, Lcom/helpshift/util/AndroidFileUtil;->TAG:Ljava/lang/String;

    const-string v2, "saveFile Exception :"

    invoke-static {p0, v2, p1}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_3d

    .line 58
    invoke-static {v0}, Lcom/helpshift/util/IOUtils;->closeQuitely(Ljava/io/Closeable;)V

    .line 59
    :goto_39
    invoke-static {v1}, Lcom/helpshift/util/IOUtils;->closeQuitely(Ljava/io/Closeable;)V

    return-void

    :catchall_3d
    move-exception p1

    move-object p0, v0

    .line 58
    :goto_3f
    invoke-static {p0}, Lcom/helpshift/util/IOUtils;->closeQuitely(Ljava/io/Closeable;)V

    .line 59
    invoke-static {v1}, Lcom/helpshift/util/IOUtils;->closeQuitely(Ljava/io/Closeable;)V

    .line 60
    throw p1

    return-void
.end method
