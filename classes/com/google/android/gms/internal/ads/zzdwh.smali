.class public final Lcom/google/android/gms/internal/ads/zzdwh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# static fields
.field private static final zzhqg:Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field private static final zzhqh:Ljava/lang/reflect/Method;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field private static final zzhqi:Ljava/lang/reflect/Method;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 29
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdwh;->zzaxf()Ljava/lang/Object;

    move-result-object v0

    .line 30
    sput-object v0, Lcom/google/android/gms/internal/ads/zzdwh;->zzhqg:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    move-object v0, v1

    goto :goto_1e

    :cond_b
    const/4 v0, 0x2

    .line 31
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Throwable;

    aput-object v3, v0, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v0, v2

    const-string v2, "getStackTraceElement"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzdwh;->zza(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 32
    :goto_1e
    sput-object v0, Lcom/google/android/gms/internal/ads/zzdwh;->zzhqh:Ljava/lang/reflect/Method;

    .line 33
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdwh;->zzhqg:Ljava/lang/Object;

    if-nez v0, :cond_25

    goto :goto_29

    :cond_25
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdwh;->zzaxg()Ljava/lang/reflect/Method;

    move-result-object v1

    :goto_29
    sput-object v1, Lcom/google/android/gms/internal/ads/zzdwh;->zzhqi:Ljava/lang/reflect/Method;

    return-void
.end method

.method public static zza(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 3

    .line 9
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 10
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/ads/zzehy;->zza(Ljava/lang/Throwable;Ljava/io/PrintWriter;)V

    .line 11
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static varargs zza(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ThreadDeath;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "sun.misc.JavaLangAccess"

    const/4 v2, 0x0

    .line 25
    invoke-static {v1, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_c} :catch_e
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    return-object v0

    :catch_e
    move-exception p0

    .line 26
    throw p0
.end method

.method private static zzaxf()Ljava/lang/Object;
    .registers 5
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "sun.misc.SharedSecrets"

    const/4 v2, 0x0

    .line 12
    invoke-static {v1, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    const-string v3, "getJavaLangAccess"

    .line 13
    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 14
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_16
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_16} :catch_17
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_16} :catch_16

    :catch_16
    return-object v0

    :catch_17
    move-exception v0

    .line 15
    throw v0
.end method

.method private static zzaxg()Ljava/lang/reflect/Method;
    .registers 6
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "getStackTraceDepth"

    const/4 v2, 0x1

    .line 18
    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Throwable;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/zzdwh;->zza(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-nez v1, :cond_12

    return-object v0

    .line 21
    :cond_12
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdwh;->zzaxf()Ljava/lang/Object;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    aput-object v4, v2, v5

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_22} :catch_23
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_22} :catch_23
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_22} :catch_23

    return-object v1

    :catch_23
    return-object v0
.end method

.method public static zzi(Ljava/lang/Throwable;)V
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdwd;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-nez v0, :cond_f

    .line 4
    instance-of v0, p0, Ljava/lang/Error;

    if-nez v0, :cond_c

    return-void

    .line 5
    :cond_c
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 3
    :cond_f
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0
.end method

.method public static zzj(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdwh;->zzi(Ljava/lang/Throwable;)V

    .line 8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
