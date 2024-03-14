.class public abstract Lcom/google/android/gms/internal/firebase_auth/zzif;
.super Lcom/google/android/gms/internal/firebase_auth/zzgn;
.source "com.google.firebase:firebase-auth@@19.3.1"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase_auth/zzif$zzc;,
        Lcom/google/android/gms/internal/firebase_auth/zzif$zzd;,
        Lcom/google/android/gms/internal/firebase_auth/zzif$zze;,
        Lcom/google/android/gms/internal/firebase_auth/zzif$zzb;,
        Lcom/google/android/gms/internal/firebase_auth/zzif$zza;,
        Lcom/google/android/gms/internal/firebase_auth/zzif$zzf;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/firebase_auth/zzif<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/firebase_auth/zzif$zza<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/firebase_auth/zzgn<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static zzd:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/firebase_auth/zzif<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected zzb:Lcom/google/android/gms/internal/firebase_auth/zzky;

.field private zzc:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 109
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzif;->zzd:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzgn;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzky;->zza()Lcom/google/android/gms/internal/firebase_auth/zzky;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif;->zzb:Lcom/google/android/gms/internal/firebase_auth/zzky;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif;->zzc:I

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/firebase_auth/zzif;Lcom/google/android/gms/internal/firebase_auth/zzhh;Lcom/google/android/gms/internal/firebase_auth/zzhs;)Lcom/google/android/gms/internal/firebase_auth/zzif;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/firebase_auth/zzif<",
            "TT;*>;>(TT;",
            "Lcom/google/android/gms/internal/firebase_auth/zzhh;",
            "Lcom/google/android/gms/internal/firebase_auth/zzhs;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/firebase_auth/zzin;
        }
    .end annotation

    .line 76
    sget v0, Lcom/google/android/gms/internal/firebase_auth/zzif$zzf;->zzd:I

    const/4 v1, 0x0

    .line 77
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/firebase_auth/zzif;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 78
    check-cast p0, Lcom/google/android/gms/internal/firebase_auth/zzif;

    .line 79
    :try_start_9
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzjz;->zza()Lcom/google/android/gms/internal/firebase_auth/zzjz;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase_auth/zzjz;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v0

    .line 80
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_auth/zzhk;->zza(Lcom/google/android/gms/internal/firebase_auth/zzhh;)Lcom/google/android/gms/internal/firebase_auth/zzhk;

    move-result-object p1

    invoke-interface {v0, p0, p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzkd;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzke;Lcom/google/android/gms/internal/firebase_auth/zzhs;)V

    .line 81
    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/firebase_auth/zzkd;->zzc(Ljava/lang/Object;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_1b} :catch_2d
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_1b} :catch_1c

    return-object p0

    :catch_1c
    move-exception p0

    .line 88
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/gms/internal/firebase_auth/zzin;

    if-eqz p1, :cond_2c

    .line 89
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase_auth/zzin;

    throw p0

    .line 90
    :cond_2c
    throw p0

    :catch_2d
    move-exception p1

    .line 84
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lcom/google/android/gms/internal/firebase_auth/zzin;

    if-eqz p2, :cond_3d

    .line 85
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase_auth/zzin;

    throw p0

    .line 86
    :cond_3d
    new-instance p2, Lcom/google/android/gms/internal/firebase_auth/zzin;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzin;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/firebase_auth/zzin;->zza(Lcom/google/android/gms/internal/firebase_auth/zzjn;)Lcom/google/android/gms/internal/firebase_auth/zzin;

    move-result-object p0

    throw p0
.end method

.method static zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase_auth/zzif;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/firebase_auth/zzif<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 30
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzif;->zzd:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzif;

    if-nez v0, :cond_28

    .line 32
    :try_start_a
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_16
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_16} :catch_1f

    .line 36
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzif;->zzd:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzif;

    goto :goto_28

    :catch_1f
    move-exception p0

    .line 35
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class initialization cannot fail."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_28
    :goto_28
    if-nez v0, :cond_47

    .line 38
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzif;

    .line 39
    sget v1, Lcom/google/android/gms/internal/firebase_auth/zzif$zzf;->zzf:I

    const/4 v2, 0x0

    .line 40
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/firebase_auth/zzif;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 41
    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzif;

    if-eqz v0, :cond_41

    .line 45
    sget-object v1, Lcom/google/android/gms/internal/firebase_auth/zzif;->zzd:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_47

    .line 44
    :cond_41
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_47
    :goto_47
    return-object v0
.end method

.method protected static zza(Lcom/google/android/gms/internal/firebase_auth/zzjn;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 49
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzkb;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzkb;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzjn;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method static varargs zza(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 50
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_4} :catch_20
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    .line 53
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 54
    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1d

    .line 56
    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_15

    .line 57
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 58
    :cond_15
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 55
    :cond_1d
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_20
    move-exception p0

    .line 52
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected static zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase_auth/zzif;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/firebase_auth/zzif<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 47
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzif;->zzd:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected static final zza(Lcom/google/android/gms/internal/firebase_auth/zzif;Z)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/firebase_auth/zzif<",
            "TT;*>;>(TT;Z)Z"
        }
    .end annotation

    .line 59
    sget v0, Lcom/google/android/gms/internal/firebase_auth/zzif$zzf;->zza:I

    const/4 v1, 0x0

    .line 61
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/firebase_auth/zzif;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 62
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

    .line 67
    :cond_15
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzjz;->zza()Lcom/google/android/gms/internal/firebase_auth/zzjz;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase_auth/zzjz;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/firebase_auth/zzkd;->zzd(Ljava/lang/Object;)Z

    move-result v0

    if-eqz p1, :cond_2d

    .line 69
    sget p1, Lcom/google/android/gms/internal/firebase_auth/zzif$zzf;->zzb:I

    if-eqz v0, :cond_29

    move-object v2, p0

    goto :goto_2a

    :cond_29
    move-object v2, v1

    .line 72
    :goto_2a
    invoke-virtual {p0, p1, v2, v1}, Lcom/google/android/gms/internal/firebase_auth/zzif;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2d
    return v0
.end method

.method protected static zzab()Lcom/google/android/gms/internal/firebase_auth/zzim;
    .registers 1

    .line 74
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzig;->zzd()Lcom/google/android/gms/internal/firebase_auth/zzig;

    move-result-object v0

    return-object v0
.end method

.method protected static zzac()Lcom/google/android/gms/internal/firebase_auth/zzio;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/gms/internal/firebase_auth/zzio<",
            "TE;>;"
        }
    .end annotation

    .line 75
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzkc;->zzd()Lcom/google/android/gms/internal/firebase_auth/zzkc;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final b_()Z
    .registers 2

    .line 19
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/firebase_auth/zzif;->zza(Lcom/google/android/gms/internal/firebase_auth/zzif;Z)Z

    move-result v0

    return v0
.end method

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
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzjz;->zza()Lcom/google/android/gms/internal/firebase_auth/zzjz;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase_auth/zzjz;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v0

    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzif;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzkd;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic h_()Lcom/google/android/gms/internal/firebase_auth/zzjn;
    .registers 3

    .line 105
    sget v0, Lcom/google/android/gms/internal/firebase_auth/zzif$zzf;->zzf:I

    const/4 v1, 0x0

    .line 106
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/firebase_auth/zzif;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 107
    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzif;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif;->zza:I

    if-eqz v0, :cond_7

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif;->zza:I

    return v0

    .line 7
    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzjz;->zza()Lcom/google/android/gms/internal/firebase_auth/zzjz;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase_auth/zzjz;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/firebase_auth/zzkd;->zza(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif;->zza:I

    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif;->zza:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 4
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjs;->zza(Lcom/google/android/gms/internal/firebase_auth/zzjn;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase_auth/zzhm;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzjz;->zza()Lcom/google/android/gms/internal/firebase_auth/zzjz;

    move-result-object v0

    .line 24
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase_auth/zzjz;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v0

    .line 25
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_auth/zzhp;->zza(Lcom/google/android/gms/internal/firebase_auth/zzhm;)Lcom/google/android/gms/internal/firebase_auth/zzhp;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzkd;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzls;)V

    return-void
.end method

.method public final zzaa()I
    .registers 3

    .line 27
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif;->zzc:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzjz;->zza()Lcom/google/android/gms/internal/firebase_auth/zzjz;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase_auth/zzjz;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/firebase_auth/zzkd;->zzb(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif;->zzc:I

    .line 29
    :cond_13
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif;->zzc:I

    return v0
.end method

.method public final synthetic zzad()Lcom/google/android/gms/internal/firebase_auth/zzjq;
    .registers 3

    .line 93
    sget v0, Lcom/google/android/gms/internal/firebase_auth/zzif$zzf;->zze:I

    const/4 v1, 0x0

    .line 94
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/firebase_auth/zzif;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 95
    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;

    .line 96
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zza(Lcom/google/android/gms/internal/firebase_auth/zzif;)Lcom/google/android/gms/internal/firebase_auth/zzif$zza;

    return-object v0
.end method

.method public final synthetic zzae()Lcom/google/android/gms/internal/firebase_auth/zzjq;
    .registers 3

    .line 100
    sget v0, Lcom/google/android/gms/internal/firebase_auth/zzif$zzf;->zze:I

    const/4 v1, 0x0

    .line 101
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/firebase_auth/zzif;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 102
    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;

    return-object v0
.end method

.method final zzb(I)V
    .registers 2

    .line 21
    iput p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzif;->zzc:I

    return-void
.end method

.method final zzy()I
    .registers 2

    .line 20
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif;->zzc:I

    return v0
.end method

.method protected final zzz()Lcom/google/android/gms/internal/firebase_auth/zzif$zza;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lcom/google/android/gms/internal/firebase_auth/zzif<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Lcom/google/android/gms/internal/firebase_auth/zzif$zza<",
            "TMessageType;TBuilderType;>;>()TBuilderType;"
        }
    .end annotation

    .line 16
    sget v0, Lcom/google/android/gms/internal/firebase_auth/zzif$zzf;->zze:I

    const/4 v1, 0x0

    .line 17
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/firebase_auth/zzif;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 18
    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;

    return-object v0
.end method
