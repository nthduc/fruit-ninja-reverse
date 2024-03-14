.class public abstract Lcom/google/android/gms/internal/ads/zzejz;
.super Lcom/google/android/gms/internal/ads/zzeif;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzejz$zza;,
        Lcom/google/android/gms/internal/ads/zzejz$zzf;,
        Lcom/google/android/gms/internal/ads/zzejz$zzc;,
        Lcom/google/android/gms/internal/ads/zzejz$zzd;,
        Lcom/google/android/gms/internal/ads/zzejz$zzb;,
        Lcom/google/android/gms/internal/ads/zzejz$zze;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/ads/zzejz<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/ads/zzejz$zzb<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/ads/zzeif<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static zzije:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/ads/zzejz<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected zzijc:Lcom/google/android/gms/internal/ads/zzena;

.field private zzijd:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 166
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzejz;->zzije:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzeif;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzena;->zzbiv()Lcom/google/android/gms/internal/ads/zzena;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzejz;->zzijc:Lcom/google/android/gms/internal/ads/zzena;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzejz;->zzijd:I

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzejz;)Lcom/google/android/gms/internal/ads/zzejz;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzejz<",
            "TT;*>;>(TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzekj;
        }
    .end annotation

    if-eqz p0, :cond_1c

    .line 122
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzejz;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_1c

    .line 125
    :cond_9
    new-instance v0, Lcom/google/android/gms/internal/ads/zzemy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzemy;-><init>(Lcom/google/android/gms/internal/ads/zzelj;)V

    .line 127
    new-instance v1, Lcom/google/android/gms/internal/ads/zzekj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzemy;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzekj;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzekj;->zzl(Lcom/google/android/gms/internal/ads/zzelj;)Lcom/google/android/gms/internal/ads/zzekj;

    move-result-object p0

    throw p0

    :cond_1c
    :goto_1c
    return-object p0
.end method

.method protected static zza(Lcom/google/android/gms/internal/ads/zzejz;Lcom/google/android/gms/internal/ads/zzeip;)Lcom/google/android/gms/internal/ads/zzejz;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzejz<",
            "TT;*>;>(TT;",
            "Lcom/google/android/gms/internal/ads/zzeip;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzekj;
        }
    .end annotation

    .line 132
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzejm;->zzbft()Lcom/google/android/gms/internal/ads/zzejm;

    move-result-object v0

    .line 133
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzejz;->zzb(Lcom/google/android/gms/internal/ads/zzejz;Lcom/google/android/gms/internal/ads/zzeip;Lcom/google/android/gms/internal/ads/zzejm;)Lcom/google/android/gms/internal/ads/zzejz;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzejz;->zza(Lcom/google/android/gms/internal/ads/zzejz;)Lcom/google/android/gms/internal/ads/zzejz;

    move-result-object p0

    .line 134
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzejz;->zza(Lcom/google/android/gms/internal/ads/zzejz;)Lcom/google/android/gms/internal/ads/zzejz;

    move-result-object p0

    return-object p0
.end method

.method protected static zza(Lcom/google/android/gms/internal/ads/zzejz;Lcom/google/android/gms/internal/ads/zzeip;Lcom/google/android/gms/internal/ads/zzejm;)Lcom/google/android/gms/internal/ads/zzejz;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzejz<",
            "TT;*>;>(TT;",
            "Lcom/google/android/gms/internal/ads/zzeip;",
            "Lcom/google/android/gms/internal/ads/zzejm;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzekj;
        }
    .end annotation

    .line 135
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzejz;->zzb(Lcom/google/android/gms/internal/ads/zzejz;Lcom/google/android/gms/internal/ads/zzeip;Lcom/google/android/gms/internal/ads/zzejm;)Lcom/google/android/gms/internal/ads/zzejz;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzejz;->zza(Lcom/google/android/gms/internal/ads/zzejz;)Lcom/google/android/gms/internal/ads/zzejz;

    move-result-object p0

    return-object p0
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzejz;Lcom/google/android/gms/internal/ads/zzeja;Lcom/google/android/gms/internal/ads/zzejm;)Lcom/google/android/gms/internal/ads/zzejz;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzejz<",
            "TT;*>;>(TT;",
            "Lcom/google/android/gms/internal/ads/zzeja;",
            "Lcom/google/android/gms/internal/ads/zzejm;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzekj;
        }
    .end annotation

    .line 90
    sget v0, Lcom/google/android/gms/internal/ads/zzejz$zze;->zzijn:I

    const/4 v1, 0x0

    .line 91
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzejz;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 92
    check-cast p0, Lcom/google/android/gms/internal/ads/zzejz;

    .line 93
    :try_start_9
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzely;->zzbic()Lcom/google/android/gms/internal/ads/zzely;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzely;->zzaw(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzemf;

    move-result-object v0

    .line 94
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzejh;->zza(Lcom/google/android/gms/internal/ads/zzeja;)Lcom/google/android/gms/internal/ads/zzejh;

    move-result-object p1

    invoke-interface {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzemf;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzelz;Lcom/google/android/gms/internal/ads/zzejm;)V

    .line 95
    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzemf;->zzaj(Ljava/lang/Object;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_1b} :catch_2d
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_1b} :catch_1c

    return-object p0

    :catch_1c
    move-exception p0

    .line 102
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/gms/internal/ads/zzekj;

    if-eqz p1, :cond_2c

    .line 103
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzekj;

    throw p0

    .line 104
    :cond_2c
    throw p0

    :catch_2d
    move-exception p1

    .line 98
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lcom/google/android/gms/internal/ads/zzekj;

    if-eqz p2, :cond_3d

    .line 99
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzekj;

    throw p0

    .line 100
    :cond_3d
    new-instance p2, Lcom/google/android/gms/internal/ads/zzekj;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzekj;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/zzekj;->zzl(Lcom/google/android/gms/internal/ads/zzelj;)Lcom/google/android/gms/internal/ads/zzekj;

    move-result-object p0

    throw p0
.end method

.method protected static zza(Lcom/google/android/gms/internal/ads/zzejz;[B)Lcom/google/android/gms/internal/ads/zzejz;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzejz<",
            "TT;*>;>(TT;[B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzekj;
        }
    .end annotation

    .line 143
    array-length v0, p1

    .line 144
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzejm;->zzbft()Lcom/google/android/gms/internal/ads/zzejm;

    move-result-object v1

    const/4 v2, 0x0

    .line 145
    invoke-static {p0, p1, v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzejz;->zza(Lcom/google/android/gms/internal/ads/zzejz;[BIILcom/google/android/gms/internal/ads/zzejm;)Lcom/google/android/gms/internal/ads/zzejz;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzejz;->zza(Lcom/google/android/gms/internal/ads/zzejz;)Lcom/google/android/gms/internal/ads/zzejz;

    move-result-object p0

    return-object p0
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzejz;[BIILcom/google/android/gms/internal/ads/zzejm;)Lcom/google/android/gms/internal/ads/zzejz;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzejz<",
            "TT;*>;>(TT;[BII",
            "Lcom/google/android/gms/internal/ads/zzejm;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzekj;
        }
    .end annotation

    .line 106
    sget p2, Lcom/google/android/gms/internal/ads/zzejz$zze;->zzijn:I

    const/4 v0, 0x0

    .line 107
    invoke-virtual {p0, p2, v0, v0}, Lcom/google/android/gms/internal/ads/zzejz;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 108
    check-cast p0, Lcom/google/android/gms/internal/ads/zzejz;

    .line 109
    :try_start_9
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzely;->zzbic()Lcom/google/android/gms/internal/ads/zzely;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/zzely;->zzaw(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzemf;

    move-result-object p2

    const/4 v3, 0x0

    .line 110
    new-instance v5, Lcom/google/android/gms/internal/ads/zzeik;

    invoke-direct {v5, p4}, Lcom/google/android/gms/internal/ads/zzeik;-><init>(Lcom/google/android/gms/internal/ads/zzejm;)V

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzemf;->zza(Ljava/lang/Object;[BIILcom/google/android/gms/internal/ads/zzeik;)V

    .line 111
    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/ads/zzemf;->zzaj(Ljava/lang/Object;)V

    .line 112
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzejz;->zziee:I

    if-nez p1, :cond_26

    return-object p0

    .line 113
    :cond_26
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_2c} :catch_35
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_2c} :catch_2c

    .line 120
    :catch_2c
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzekj;->zzbgx()Lcom/google/android/gms/internal/ads/zzekj;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzekj;->zzl(Lcom/google/android/gms/internal/ads/zzelj;)Lcom/google/android/gms/internal/ads/zzekj;

    move-result-object p0

    throw p0

    :catch_35
    move-exception p1

    .line 116
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lcom/google/android/gms/internal/ads/zzekj;

    if-eqz p2, :cond_45

    .line 117
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzekj;

    throw p0

    .line 118
    :cond_45
    new-instance p2, Lcom/google/android/gms/internal/ads/zzekj;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzekj;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/zzekj;->zzl(Lcom/google/android/gms/internal/ads/zzelj;)Lcom/google/android/gms/internal/ads/zzekj;

    move-result-object p0

    throw p0
.end method

.method protected static zza(Lcom/google/android/gms/internal/ads/zzejz;[BLcom/google/android/gms/internal/ads/zzejm;)Lcom/google/android/gms/internal/ads/zzejz;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzejz<",
            "TT;*>;>(TT;[B",
            "Lcom/google/android/gms/internal/ads/zzejm;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzekj;
        }
    .end annotation

    .line 146
    array-length v0, p1

    const/4 v1, 0x0

    .line 147
    invoke-static {p0, p1, v1, v0, p2}, Lcom/google/android/gms/internal/ads/zzejz;->zza(Lcom/google/android/gms/internal/ads/zzejz;[BIILcom/google/android/gms/internal/ads/zzejm;)Lcom/google/android/gms/internal/ads/zzejz;

    move-result-object p0

    .line 148
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzejz;->zza(Lcom/google/android/gms/internal/ads/zzejz;)Lcom/google/android/gms/internal/ads/zzejz;

    move-result-object p0

    return-object p0
.end method

.method protected static zza(Lcom/google/android/gms/internal/ads/zzekf;)Lcom/google/android/gms/internal/ads/zzekf;
    .registers 2

    .line 80
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzekf;->size()I

    move-result v0

    if-nez v0, :cond_9

    const/16 v0, 0xa

    goto :goto_b

    :cond_9
    shl-int/lit8 v0, v0, 0x1

    .line 83
    :goto_b
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/ads/zzekf;->zzhb(I)Lcom/google/android/gms/internal/ads/zzekf;

    move-result-object p0

    return-object p0
.end method

.method protected static zza(Lcom/google/android/gms/internal/ads/zzekk;)Lcom/google/android/gms/internal/ads/zzekk;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzekk<",
            "TE;>;)",
            "Lcom/google/android/gms/internal/ads/zzekk<",
            "TE;>;"
        }
    .end annotation

    .line 86
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzekk;->size()I

    move-result v0

    if-nez v0, :cond_9

    const/16 v0, 0xa

    goto :goto_b

    :cond_9
    shl-int/lit8 v0, v0, 0x1

    .line 89
    :goto_b
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/ads/zzekk;->zzft(I)Lcom/google/android/gms/internal/ads/zzekk;

    move-result-object p0

    return-object p0
.end method

.method protected static zza(Lcom/google/android/gms/internal/ads/zzelj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 54
    new-instance v0, Lcom/google/android/gms/internal/ads/zzema;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzema;-><init>(Lcom/google/android/gms/internal/ads/zzelj;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method static varargs zza(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 55
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_4} :catch_20
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    .line 58
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 59
    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1d

    .line 61
    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_15

    .line 62
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 63
    :cond_15
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 60
    :cond_1d
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_20
    move-exception p0

    .line 57
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected static zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzejz;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzejz<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 52
    sget-object v0, Lcom/google/android/gms/internal/ads/zzejz;->zzije:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected static final zza(Lcom/google/android/gms/internal/ads/zzejz;Z)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzejz<",
            "TT;*>;>(TT;Z)Z"
        }
    .end annotation

    .line 64
    sget v0, Lcom/google/android/gms/internal/ads/zzejz$zze;->zzijk:I

    const/4 v1, 0x0

    .line 66
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzejz;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 67
    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_11

    return v2

    :cond_11
    if-nez v0, :cond_15

    const/4 p0, 0x0

    return p0

    .line 72
    :cond_15
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzely;->zzbic()Lcom/google/android/gms/internal/ads/zzely;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzely;->zzaw(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzemf;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzemf;->zzav(Ljava/lang/Object;)Z

    move-result v0

    if-eqz p1, :cond_2d

    .line 74
    sget p1, Lcom/google/android/gms/internal/ads/zzejz$zze;->zzijl:I

    if-eqz v0, :cond_29

    move-object v2, p0

    goto :goto_2a

    :cond_29
    move-object v2, v1

    .line 77
    :goto_2a
    invoke-virtual {p0, p1, v2, v1}, Lcom/google/android/gms/internal/ads/zzejz;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2d
    return v0
.end method

.method private static zzb(Lcom/google/android/gms/internal/ads/zzejz;Lcom/google/android/gms/internal/ads/zzeip;Lcom/google/android/gms/internal/ads/zzejm;)Lcom/google/android/gms/internal/ads/zzejz;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzejz<",
            "TT;*>;>(TT;",
            "Lcom/google/android/gms/internal/ads/zzeip;",
            "Lcom/google/android/gms/internal/ads/zzejm;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzekj;
        }
    .end annotation

    .line 136
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeip;->zzbeh()Lcom/google/android/gms/internal/ads/zzeja;

    move-result-object p1

    .line 137
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzejz;->zza(Lcom/google/android/gms/internal/ads/zzejz;Lcom/google/android/gms/internal/ads/zzeja;Lcom/google/android/gms/internal/ads/zzejm;)Lcom/google/android/gms/internal/ads/zzejz;

    move-result-object p0
    :try_end_8
    .catch Lcom/google/android/gms/internal/ads/zzekj; {:try_start_0 .. :try_end_8} :catch_13

    const/4 p2, 0x0

    .line 138
    :try_start_9
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzeja;->zzfy(I)V
    :try_end_c
    .catch Lcom/google/android/gms/internal/ads/zzekj; {:try_start_9 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p1

    .line 140
    :try_start_e
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzekj;->zzl(Lcom/google/android/gms/internal/ads/zzelj;)Lcom/google/android/gms/internal/ads/zzekj;

    move-result-object p0

    throw p0
    :try_end_13
    .catch Lcom/google/android/gms/internal/ads/zzekj; {:try_start_e .. :try_end_13} :catch_13

    :catch_13
    move-exception p0

    .line 142
    throw p0
.end method

.method protected static zzbgi()Lcom/google/android/gms/internal/ads/zzekf;
    .registers 1

    .line 79
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzekc;->zzbgw()Lcom/google/android/gms/internal/ads/zzekc;

    move-result-object v0

    return-object v0
.end method

.method protected static zzbgj()Lcom/google/android/gms/internal/ads/zzekh;
    .registers 1

    .line 84
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzekx;->zzbhn()Lcom/google/android/gms/internal/ads/zzekx;

    move-result-object v0

    return-object v0
.end method

.method protected static zzbgk()Lcom/google/android/gms/internal/ads/zzekk;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/gms/internal/ads/zzekk<",
            "TE;>;"
        }
    .end annotation

    .line 85
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzelx;->zzbib()Lcom/google/android/gms/internal/ads/zzelx;

    move-result-object v0

    return-object v0
.end method

.method static zzd(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzejz;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzejz<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 35
    sget-object v0, Lcom/google/android/gms/internal/ads/zzejz;->zzije:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzejz;

    if-nez v0, :cond_28

    .line 37
    :try_start_a
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_16
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_16} :catch_1f

    .line 41
    sget-object v0, Lcom/google/android/gms/internal/ads/zzejz;->zzije:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzejz;

    goto :goto_28

    :catch_1f
    move-exception p0

    .line 40
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class initialization cannot fail."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_28
    :goto_28
    if-nez v0, :cond_47

    .line 43
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzend;->zzj(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzejz;

    .line 44
    sget v1, Lcom/google/android/gms/internal/ads/zzejz$zze;->zzijp:I

    const/4 v2, 0x0

    .line 45
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzejz;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 46
    check-cast v0, Lcom/google/android/gms/internal/ads/zzejz;

    if-eqz v0, :cond_41

    .line 50
    sget-object v1, Lcom/google/android/gms/internal/ads/zzejz;->zzije:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_47

    .line 49
    :cond_41
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_47
    :goto_47
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 v0, 0x0

    if-nez p1, :cond_8

    return v0

    .line 13
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_13

    return v0

    .line 15
    :cond_13
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzely;->zzbic()Lcom/google/android/gms/internal/ads/zzely;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzely;->zzaw(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzemf;

    move-result-object v0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzejz;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzemf;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzejz;->zziee:I

    if-eqz v0, :cond_7

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzejz;->zziee:I

    return v0

    .line 7
    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzely;->zzbic()Lcom/google/android/gms/internal/ads/zzely;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzely;->zzaw(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzemf;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzemf;->hashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzejz;->zziee:I

    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzejz;->zziee:I

    return v0
.end method

.method public final isInitialized()Z
    .registers 2

    .line 19
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzejz;->zza(Lcom/google/android/gms/internal/ads/zzejz;Z)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 4
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzelo;->zza(Lcom/google/android/gms/internal/ads/zzelj;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzejj;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzely;->zzbic()Lcom/google/android/gms/internal/ads/zzely;

    move-result-object v0

    .line 29
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzely;->zzaw(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzemf;

    move-result-object v0

    .line 30
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzejl;->zza(Lcom/google/android/gms/internal/ads/zzejj;)Lcom/google/android/gms/internal/ads/zzejl;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzemf;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzenu;)V

    return-void
.end method

.method final zzbdx()I
    .registers 2

    .line 25
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzejz;->zzijd:I

    return v0
.end method

.method protected final zzbgf()Lcom/google/android/gms/internal/ads/zzejz$zzb;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lcom/google/android/gms/internal/ads/zzejz<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Lcom/google/android/gms/internal/ads/zzejz$zzb<",
            "TMessageType;TBuilderType;>;>()TBuilderType;"
        }
    .end annotation

    .line 16
    sget v0, Lcom/google/android/gms/internal/ads/zzejz$zze;->zzijo:I

    const/4 v1, 0x0

    .line 17
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzejz;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 18
    check-cast v0, Lcom/google/android/gms/internal/ads/zzejz$zzb;

    return-object v0
.end method

.method public final zzbgg()Lcom/google/android/gms/internal/ads/zzejz$zzb;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 20
    sget v0, Lcom/google/android/gms/internal/ads/zzejz$zze;->zzijo:I

    const/4 v1, 0x0

    .line 21
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzejz;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 22
    check-cast v0, Lcom/google/android/gms/internal/ads/zzejz$zzb;

    .line 23
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzb(Lcom/google/android/gms/internal/ads/zzejz;)Lcom/google/android/gms/internal/ads/zzejz$zzb;

    return-object v0
.end method

.method public final zzbgh()I
    .registers 3

    .line 32
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzejz;->zzijd:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    .line 33
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzely;->zzbic()Lcom/google/android/gms/internal/ads/zzely;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzely;->zzaw(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzemf;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzemf;->zzat(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzejz;->zzijd:I

    .line 34
    :cond_13
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzejz;->zzijd:I

    return v0
.end method

.method public final synthetic zzbgl()Lcom/google/android/gms/internal/ads/zzelm;
    .registers 3

    .line 150
    sget v0, Lcom/google/android/gms/internal/ads/zzejz$zze;->zzijo:I

    const/4 v1, 0x0

    .line 151
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzejz;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 152
    check-cast v0, Lcom/google/android/gms/internal/ads/zzejz$zzb;

    .line 153
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzb(Lcom/google/android/gms/internal/ads/zzejz;)Lcom/google/android/gms/internal/ads/zzejz$zzb;

    return-object v0
.end method

.method public final synthetic zzbgm()Lcom/google/android/gms/internal/ads/zzelm;
    .registers 3

    .line 157
    sget v0, Lcom/google/android/gms/internal/ads/zzejz$zze;->zzijo:I

    const/4 v1, 0x0

    .line 158
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzejz;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 159
    check-cast v0, Lcom/google/android/gms/internal/ads/zzejz$zzb;

    return-object v0
.end method

.method public final synthetic zzbgn()Lcom/google/android/gms/internal/ads/zzelj;
    .registers 3

    .line 162
    sget v0, Lcom/google/android/gms/internal/ads/zzejz$zze;->zzijp:I

    const/4 v1, 0x0

    .line 163
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzejz;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 164
    check-cast v0, Lcom/google/android/gms/internal/ads/zzejz;

    return-object v0
.end method

.method final zzfq(I)V
    .registers 2

    .line 26
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzejz;->zzijd:I

    return-void
.end method
