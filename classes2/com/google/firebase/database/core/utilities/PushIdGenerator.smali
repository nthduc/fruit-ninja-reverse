.class public Lcom/google/firebase/database/core/utilities/PushIdGenerator;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.3.0"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final PUSH_CHARS:Ljava/lang/String; = "-0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz"

.field private static lastPushTime:J

.field private static final lastRandChars:[I

.field private static final randGen:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 24
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/google/firebase/database/core/utilities/PushIdGenerator;->randGen:Ljava/util/Random;

    const-wide/16 v0, 0x0

    .line 26
    sput-wide v0, Lcom/google/firebase/database/core/utilities/PushIdGenerator;->lastPushTime:J

    const/16 v0, 0xc

    .line 28
    new-array v0, v0, [I

    sput-object v0, Lcom/google/firebase/database/core/utilities/PushIdGenerator;->lastRandChars:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized generatePushChildName(J)Ljava/lang/String;
    .registers 13

    const-class v0, Lcom/google/firebase/database/core/utilities/PushIdGenerator;

    monitor-enter v0

    .line 31
    :try_start_3
    sget-wide v1, Lcom/google/firebase/database/core/utilities/PushIdGenerator;->lastPushTime:J

    const/4 v3, 0x0

    cmp-long v4, p0, v1

    if-nez v4, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    .line 32
    :goto_d
    sput-wide p0, Lcom/google/firebase/database/core/utilities/PushIdGenerator;->lastPushTime:J

    const/16 v2, 0x8

    .line 34
    new-array v2, v2, [C

    .line 35
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x14

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v5, 0x7

    :goto_1b
    if-ltz v5, :cond_2e

    const-string v6, "-0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz"

    const-wide/16 v7, 0x40

    .line 37
    rem-long v9, p0, v7

    long-to-int v10, v9

    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aput-char v6, v2, v5

    .line 38
    div-long/2addr p0, v7

    add-int/lit8 v5, v5, -0x1

    goto :goto_1b

    .line 42
    :cond_2e
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    const/16 p0, 0xc

    if-nez v1, :cond_47

    const/4 p1, 0x0

    :goto_36
    if-ge p1, p0, :cond_4a

    .line 46
    sget-object v1, Lcom/google/firebase/database/core/utilities/PushIdGenerator;->lastRandChars:[I

    sget-object v2, Lcom/google/firebase/database/core/utilities/PushIdGenerator;->randGen:Ljava/util/Random;

    const/16 v5, 0x40

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    aput v2, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_36

    .line 49
    :cond_47
    invoke-static {}, Lcom/google/firebase/database/core/utilities/PushIdGenerator;->incrementArray()V

    :cond_4a
    :goto_4a
    if-ge v3, p0, :cond_5c

    const-string p1, "-0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz"

    .line 52
    sget-object v1, Lcom/google/firebase/database/core/utilities/PushIdGenerator;->lastRandChars:[I

    aget v1, v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_4a

    .line 55
    :cond_5c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_60
    .catchall {:try_start_3 .. :try_end_60} :catchall_62

    monitor-exit v0

    return-object p0

    :catchall_62
    move-exception p0

    monitor-exit v0

    throw p0

    return-void
.end method

.method private static incrementArray()V
    .registers 4

    const/16 v0, 0xb

    :goto_2
    if-ltz v0, :cond_19

    .line 60
    sget-object v1, Lcom/google/firebase/database/core/utilities/PushIdGenerator;->lastRandChars:[I

    aget v2, v1, v0

    const/16 v3, 0x3f

    if-eq v2, v3, :cond_13

    .line 61
    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    return-void

    :cond_13
    const/4 v2, 0x0

    .line 64
    aput v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_19
    return-void
.end method
