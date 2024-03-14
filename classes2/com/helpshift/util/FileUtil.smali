.class public Lcom/helpshift/util/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# static fields
.field public static final BUFFER_SIZE:I = 0x2000


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteFile(Ljava/lang/String;)Z
    .registers 1

    .line 51
    invoke-static {p0}, Lcom/helpshift/util/FileUtil;->validateAndCreateFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 52
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static doesFilePathExistAndCanRead(Ljava/lang/String;)Z
    .registers 1

    .line 38
    invoke-static {p0}, Lcom/helpshift/util/FileUtil;->validateAndCreateFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 39
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static validateAndCreateFile(Ljava/lang/String;)Ljava/io/File;
    .registers 2

    .line 20
    invoke-static {p0}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 21
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_12

    return-object v0

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method
