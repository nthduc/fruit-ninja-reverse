.class public Lcom/vungle/warren/utility/FileUtility;
.super Ljava/lang/Object;
.source "FileUtility.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FileUtility"

.field protected static final allowedClasses:Ljava/util/List;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x5

    .line 30
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/util/LinkedHashSet;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljava/util/HashSet;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-class v1, Ljava/util/HashMap;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-class v1, Ljava/util/ArrayList;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-class v1, Ljava/io/File;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/vungle/warren/utility/FileUtility;->allowedClasses:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .registers 1

    if-eqz p0, :cond_5

    .line 123
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_5

    :catch_5
    :cond_5
    return-void
.end method

.method public static delete(Ljava/io/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_40

    .line 102
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_40

    .line 104
    :cond_9
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 105
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_16

    return-void

    .line 110
    :cond_16
    array-length v1, v0

    const/4 v2, 0x0

    :goto_18
    if-ge v2, v1, :cond_22

    aget-object v3, v0, v2

    .line 111
    invoke-static {v3}, Lcom/vungle/warren/utility/FileUtility;->delete(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 115
    :cond_22
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_29

    return-void

    .line 116
    :cond_29
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to delete file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_40
    :goto_40
    return-void
.end method

.method private static getIndentString(I)Ljava/lang/String;
    .registers 4

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_6
    if-ge v1, p0, :cond_10

    const-string v2, "|  "

    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 91
    :cond_10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static printDirectoryTree(Ljava/io/File;)V
    .registers 1

    return-void
.end method

.method private static printDirectoryTree(Ljava/io/File;ILjava/lang/StringBuilder;)V
    .registers 7

    if-nez p0, :cond_3

    return-void

    .line 63
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 67
    invoke-static {p1}, Lcom/vungle/warren/utility/FileUtility;->getIndentString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "+--"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_28

    return-void

    .line 73
    :cond_28
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_2e
    if-ge v1, v0, :cond_46

    aget-object v2, p0, v1

    .line 74
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3e

    add-int/lit8 v3, p1, 0x1

    .line 75
    invoke-static {v2, v3, p2}, Lcom/vungle/warren/utility/FileUtility;->printDirectoryTree(Ljava/io/File;ILjava/lang/StringBuilder;)V

    goto :goto_43

    :cond_3e
    add-int/lit8 v3, p1, 0x1

    .line 77
    invoke-static {v2, v3, p2}, Lcom/vungle/warren/utility/FileUtility;->printFile(Ljava/io/File;ILjava/lang/StringBuilder;)V

    :goto_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :cond_46
    return-void

    .line 64
    :cond_47
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "folder is not a Directory"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    return-void
.end method

.method private static printFile(Ljava/io/File;ILjava/lang/StringBuilder;)V
    .registers 3

    .line 83
    invoke-static {p1}, Lcom/vungle/warren/utility/FileUtility;->getIndentString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "+--"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0xa

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method static readAllLines(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 156
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_16

    .line 159
    invoke-static {v0}, Lcom/vungle/warren/utility/FileUtility;->readSerializable(Ljava/io/File;)Ljava/lang/Object;

    move-result-object p0

    .line 161
    instance-of v0, p0, Ljava/util/ArrayList;

    if-eqz v0, :cond_16

    .line 162
    check-cast p0, Ljava/util/ArrayList;

    return-object p0

    .line 166
    :cond_16
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static readMap(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 132
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-static {v0}, Lcom/vungle/warren/utility/FileUtility;->readSerializable(Ljava/io/File;)Ljava/lang/Object;

    move-result-object p0

    .line 136
    instance-of v0, p0, Ljava/util/HashMap;

    if-eqz v0, :cond_10

    .line 137
    check-cast p0, Ljava/util/HashMap;

    return-object p0

    .line 140
    :cond_10
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0
.end method

.method public static readSerializable(Ljava/io/File;)Ljava/lang/Object;
    .registers 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/File;",
            ")TT;"
        }
    .end annotation

    .line 207
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 213
    :cond_8
    :try_start_8
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_d} :catch_4e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_d} :catch_43
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_35
    .catchall {:try_start_8 .. :try_end_d} :catchall_31

    .line 214
    :try_start_d
    new-instance v2, Lcom/vungle/warren/utility/SafeObjectInputStream;

    sget-object v3, Lcom/vungle/warren/utility/FileUtility;->allowedClasses:Ljava/util/List;

    invoke-direct {v2, v0, v3}, Lcom/vungle/warren/utility/SafeObjectInputStream;-><init>(Ljava/io/InputStream;Ljava/util/List;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_14} :catch_2e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d .. :try_end_14} :catch_2b
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_14} :catch_28
    .catchall {:try_start_d .. :try_end_14} :catchall_25

    .line 215
    :try_start_14
    invoke-virtual {v2}, Lcom/vungle/warren/utility/SafeObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p0
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_18} :catch_23
    .catch Ljava/lang/ClassNotFoundException; {:try_start_14 .. :try_end_18} :catch_21
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_18} :catch_1f
    .catchall {:try_start_14 .. :try_end_18} :catchall_5f

    .line 228
    invoke-static {v2}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 229
    invoke-static {v0}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    return-object p0

    :catch_1f
    move-exception v3

    goto :goto_38

    :catch_21
    move-exception p0

    goto :goto_46

    :catch_23
    move-exception p0

    goto :goto_51

    :catchall_25
    move-exception p0

    move-object v2, v1

    goto :goto_60

    :catch_28
    move-exception v3

    move-object v2, v1

    goto :goto_38

    :catch_2b
    move-exception p0

    move-object v2, v1

    goto :goto_46

    :catch_2e
    move-exception p0

    move-object v2, v1

    goto :goto_51

    :catchall_31
    move-exception p0

    move-object v0, v1

    move-object v2, v0

    goto :goto_60

    :catch_35
    move-exception v3

    move-object v0, v1

    move-object v2, v0

    .line 222
    :goto_38
    :try_start_38
    sget-object v4, Lcom/vungle/warren/utility/FileUtility;->TAG:Ljava/lang/String;

    const-string v5, "cannot read serializable"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3f
    .catchall {:try_start_38 .. :try_end_3f} :catchall_5f

    .line 224
    :try_start_3f
    invoke-static {p0}, Lcom/vungle/warren/utility/FileUtility;->delete(Ljava/io/File;)V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_58
    .catchall {:try_start_3f .. :try_end_42} :catchall_5f

    goto :goto_58

    :catch_43
    move-exception p0

    move-object v0, v1

    move-object v2, v0

    .line 219
    :goto_46
    :try_start_46
    sget-object v3, Lcom/vungle/warren/utility/FileUtility;->TAG:Ljava/lang/String;

    const-string v4, "ClassNotFoundException"

    invoke-static {v3, v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_58

    :catch_4e
    move-exception p0

    move-object v0, v1

    move-object v2, v0

    .line 217
    :goto_51
    sget-object v3, Lcom/vungle/warren/utility/FileUtility;->TAG:Ljava/lang/String;

    const-string v4, "IOIOException"

    invoke-static {v3, v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_58
    .catchall {:try_start_46 .. :try_end_58} :catchall_5f

    .line 228
    :catch_58
    :goto_58
    invoke-static {v2}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 229
    invoke-static {v0}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    :catchall_5f
    move-exception p0

    .line 228
    :goto_60
    invoke-static {v2}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 229
    invoke-static {v0}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static size(Ljava/io/File;)J
    .registers 7
    .param p0    # Ljava/io/File;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_2d

    .line 236
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_2d

    .line 241
    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 242
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_28

    .line 243
    array-length v2, p0

    if-lez v2, :cond_28

    .line 244
    array-length v2, p0

    const/4 v3, 0x0

    :goto_1c
    if-ge v3, v2, :cond_28

    aget-object v4, p0, v3

    .line 245
    invoke-static {v4}, Lcom/vungle/warren/utility/FileUtility;->size(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_28
    return-wide v0

    .line 252
    :cond_29
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    :cond_2d
    :goto_2d
    return-wide v0
.end method

.method public static writeAllLines(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 170
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_e

    .line 173
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 175
    :cond_e
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_15

    return-void

    .line 178
    :cond_15
    invoke-static {v0, p1}, Lcom/vungle/warren/utility/FileUtility;->writeSerializable(Ljava/io/File;Ljava/io/Serializable;)V

    return-void
.end method

.method public static writeMap(Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/HashMap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 144
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_c

    return-void

    .line 149
    :cond_c
    invoke-static {v0, p1}, Lcom/vungle/warren/utility/FileUtility;->writeSerializable(Ljava/io/File;Ljava/io/Serializable;)V

    return-void
.end method

.method public static writeSerializable(Ljava/io/File;Ljava/io/Serializable;)V
    .registers 5
    .param p0    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/Serializable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 183
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 184
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_9
    if-nez p1, :cond_c

    return-void

    :cond_c
    const/4 v0, 0x0

    .line 192
    :try_start_d
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_12} :catch_2c
    .catchall {:try_start_d .. :try_end_12} :catchall_29

    .line 193
    :try_start_12
    new-instance p0, Ljava/io/ObjectOutputStream;

    invoke-direct {p0, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_17} :catch_27
    .catchall {:try_start_12 .. :try_end_17} :catchall_3c

    .line 194
    :try_start_17
    invoke-virtual {p0, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 195
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->reset()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1d} :catch_24
    .catchall {:try_start_17 .. :try_end_1d} :catchall_21

    .line 199
    invoke-static {p0}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_38

    :catchall_21
    move-exception p1

    move-object v0, p0

    goto :goto_3d

    :catch_24
    move-exception p1

    move-object v0, p0

    goto :goto_2e

    :catch_27
    move-exception p1

    goto :goto_2e

    :catchall_29
    move-exception p1

    move-object v1, v0

    goto :goto_3d

    :catch_2c
    move-exception p1

    move-object v1, v0

    .line 197
    :goto_2e
    :try_start_2e
    sget-object p0, Lcom/vungle/warren/utility/FileUtility;->TAG:Ljava/lang/String;

    const-string v2, "IOIOException"

    invoke-static {p0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_35
    .catchall {:try_start_2e .. :try_end_35} :catchall_3c

    .line 199
    invoke-static {v0}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 200
    :goto_38
    invoke-static {v1}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_3c
    move-exception p1

    .line 199
    :goto_3d
    invoke-static {v0}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 200
    invoke-static {v1}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    throw p1
.end method
