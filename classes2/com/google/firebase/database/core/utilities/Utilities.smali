.class public Lcom/google/firebase/database/core/utilities/Utilities;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.3.0"


# static fields
.field private static final HEX_CHARACTERS:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "0123456789abcdef"

    .line 33
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/core/utilities/Utilities;->HEX_CHARACTERS:[C

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static castOrNull(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TC;>;)TC;"
        }
    .end annotation

    .line 208
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_b

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static compareInts(II)I
    .registers 2

    if-ge p0, p1, :cond_4

    const/4 p0, -0x1

    return p0

    :cond_4
    if-ne p0, p1, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    const/4 p0, 0x1

    return p0
.end method

.method public static compareLongs(JJ)I
    .registers 5

    cmp-long v0, p0, p2

    if-gez v0, :cond_6

    const/4 p0, -0x1

    return p0

    :cond_6
    cmp-long v0, p0, p2

    if-nez v0, :cond_c

    const/4 p0, 0x0

    return p0

    :cond_c
    const/4 p0, 0x1

    return p0
.end method

.method public static doubleToHashString(D)Ljava/lang/String;
    .registers 8

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 136
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p0

    const/4 v1, 0x7

    :goto_c
    if-ltz v1, :cond_2d

    mul-int/lit8 v2, v1, 0x8

    ushr-long v2, p0, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v3, v2

    shr-int/lit8 v2, v3, 0x4

    and-int/lit8 v2, v2, 0xf

    and-int/lit8 v3, v3, 0xf

    .line 142
    sget-object v4, Lcom/google/firebase/database/core/utilities/Utilities;->HEX_CHARACTERS:[C

    aget-char v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 143
    sget-object v2, Lcom/google/firebase/database/core/utilities/Utilities;->HEX_CHARACTERS:[C

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 145
    :cond_2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    if-eqz p0, :cond_e

    if-nez p1, :cond_9

    goto :goto_e

    .line 268
    :cond_9
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_e
    :goto_e
    const/4 p0, 0x0

    return p0
.end method

.method private static extractPathString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "//"

    .line 91
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_30

    add-int/lit8 v0, v0, 0x2

    .line 96
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "/"

    .line 97
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_2d

    const-string v2, "?"

    .line 99
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v1, :cond_26

    add-int/lit8 v0, v0, 0x1

    .line 101
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_26
    add-int/lit8 v0, v0, 0x1

    .line 103
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2d
    const-string p0, ""

    return-object p0

    .line 93
    :cond_30
    new-instance p0, Lcom/google/firebase/database/DatabaseException;

    const-string v0, "Firebase Database URL is missing URL scheme"

    invoke-direct {p0, v0}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getOrNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TC;>;)TC;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 219
    :cond_4
    const-class v1, Ljava/util/Map;

    invoke-static {p0, v1}, Lcom/google/firebase/database/core/utilities/Utilities;->castOrNull(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    .line 220
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 222
    invoke-static {p0, p2}, Lcom/google/firebase/database/core/utilities/Utilities;->castOrNull(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_17
    return-object v0
.end method

.method public static hardAssert(Z)V
    .registers 2

    const-string v0, ""

    .line 229
    invoke-static {p0, v0}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    return-void
.end method

.method public static hardAssert(ZLjava/lang/String;)V
    .registers 4

    if-eqz p0, :cond_3

    return-void

    .line 234
    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hardAssert failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public static parseUrl(Ljava/lang/String;)Lcom/google/firebase/database/core/utilities/ParsedUrl;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/database/DatabaseException;
        }
    .end annotation

    .line 37
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_96

    .line 44
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8e

    .line 49
    new-instance v3, Lcom/google/firebase/database/core/RepoInfo;

    invoke-direct {v3}, Lcom/google/firebase/database/core/RepoInfo;-><init>()V

    .line 50
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/firebase/database/core/RepoInfo;->host:Ljava/lang/String;

    .line 52
    invoke-virtual {v0}, Landroid/net/Uri;->getPort()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, -0x1

    if-eq v4, v7, :cond_51

    const-string v8, "https"

    .line 54
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_36

    const-string v8, "wss"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    goto :goto_36

    :cond_35
    const/4 v6, 0x0

    :cond_36
    :goto_36
    iput-boolean v6, v3, Lcom/google/firebase/database/core/RepoInfo;->secure:Z

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Lcom/google/firebase/database/core/RepoInfo;->host:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/google/firebase/database/core/RepoInfo;->host:Ljava/lang/String;

    goto :goto_53

    .line 57
    :cond_51
    iput-boolean v6, v3, Lcom/google/firebase/database/core/RepoInfo;->secure:Z

    :goto_53
    const-string v1, "ns"

    .line 60
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5e

    .line 62
    iput-object v0, v3, Lcom/google/firebase/database/core/RepoInfo;->namespace:Ljava/lang/String;

    goto :goto_6c

    :cond_5e
    const-string v0, "\\."

    .line 64
    invoke-virtual {v2, v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 65
    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/google/firebase/database/core/RepoInfo;->namespace:Ljava/lang/String;

    .line 68
    :goto_6c
    iget-object v0, v3, Lcom/google/firebase/database/core/RepoInfo;->host:Ljava/lang/String;

    iput-object v0, v3, Lcom/google/firebase/database/core/RepoInfo;->internalHost:Ljava/lang/String;

    .line 70
    invoke-static {p0}, Lcom/google/firebase/database/core/utilities/Utilities;->extractPathString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "+"

    const-string v2, " "

    .line 73
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {v0}, Lcom/google/firebase/database/core/utilities/Validation;->validateRootPathString(Ljava/lang/String;)V

    .line 76
    new-instance v1, Lcom/google/firebase/database/core/utilities/ParsedUrl;

    invoke-direct {v1}, Lcom/google/firebase/database/core/utilities/ParsedUrl;-><init>()V

    .line 77
    new-instance v2, Lcom/google/firebase/database/core/Path;

    invoke-direct {v2, v0}, Lcom/google/firebase/database/core/Path;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lcom/google/firebase/database/core/utilities/ParsedUrl;->path:Lcom/google/firebase/database/core/Path;

    .line 78
    iput-object v3, v1, Lcom/google/firebase/database/core/utilities/ParsedUrl;->repoInfo:Lcom/google/firebase/database/core/RepoInfo;

    return-object v1

    .line 46
    :cond_8e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Database URL does not specify a valid host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Database URL does not specify a URL scheme"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9e} :catch_9e

    :catch_9e
    move-exception v0

    .line 82
    new-instance v1, Lcom/google/firebase/database/DatabaseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Firebase Database url specified: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static sha1HexDigest(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    :try_start_0
    const-string v0, "SHA-1"

    .line 112
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "UTF-8"

    .line 113
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 114
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    const/4 v0, 0x2

    .line 115
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_18
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_18} :catch_21
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_18} :catch_19

    return-object p0

    .line 119
    :catch_19
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "UTF-8 encoding is required for Firebase Database to run!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_21
    move-exception p0

    .line 117
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Missing SHA-1 MessageDigest provider."

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static stringHashV2Representation(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/16 v0, 0x5c

    .line 125
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    const-string v0, "\\"

    const-string v2, "\\\\"

    .line 126
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :cond_12
    move-object v0, p0

    :goto_13
    const/16 v2, 0x22

    .line 128
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-eq p0, v1, :cond_23

    const-string p0, "\""

    const-string v1, "\\\""

    .line 129
    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 131
    :cond_23
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static tryParseInt(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 9

    .line 151
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xb

    if-gt v0, v2, :cond_64

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_10

    goto :goto_64

    :cond_10
    const/4 v0, 0x0

    .line 156
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    const/4 v4, 0x1

    if-ne v2, v3, :cond_23

    .line 157
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v4, :cond_21

    return-object v1

    :cond_21
    const/4 v0, 0x1

    goto :goto_24

    :cond_23
    const/4 v4, 0x0

    :goto_24
    const-wide/16 v2, 0x0

    .line 165
    :goto_26
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_45

    .line 166
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    if-lt v5, v6, :cond_44

    const/16 v6, 0x39

    if-le v5, v6, :cond_39

    goto :goto_44

    :cond_39
    const-wide/16 v6, 0xa

    mul-long v2, v2, v6

    add-int/lit8 v5, v5, -0x30

    int-to-long v5, v5

    add-long/2addr v2, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :cond_44
    :goto_44
    return-object v1

    :cond_45
    if-eqz v4, :cond_56

    neg-long v2, v2

    const-wide/32 v4, -0x80000000

    cmp-long p0, v2, v4

    if-gez p0, :cond_50

    return-object v1

    :cond_50
    long-to-int p0, v2

    .line 177
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_56
    const-wide/32 v4, 0x7fffffff

    cmp-long p0, v2, v4

    if-lez p0, :cond_5e

    return-object v1

    :cond_5e
    long-to-int p0, v2

    .line 183
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_64
    :goto_64
    return-object v1
.end method

.method public static wrapOnComplete(Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/firebase/database/core/utilities/Pair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/DatabaseReference$CompletionListener;",
            ")",
            "Lcom/google/firebase/database/core/utilities/Pair<",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/google/firebase/database/DatabaseReference$CompletionListener;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_16

    .line 241
    new-instance p0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 242
    new-instance v0, Lcom/google/firebase/database/core/utilities/Utilities$1;

    invoke-direct {v0, p0}, Lcom/google/firebase/database/core/utilities/Utilities$1;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 253
    new-instance v1, Lcom/google/firebase/database/core/utilities/Pair;

    invoke-virtual {p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lcom/google/firebase/database/core/utilities/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 256
    :cond_16
    new-instance v0, Lcom/google/firebase/database/core/utilities/Pair;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/google/firebase/database/core/utilities/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
