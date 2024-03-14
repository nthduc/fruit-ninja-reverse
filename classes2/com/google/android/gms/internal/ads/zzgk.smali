.class public Lcom/google/android/gms/internal/ads/zzgk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# static fields
.field private static final TAG:Ljava/lang/String; = "zzgk"


# instance fields
.field private final className:Ljava/lang/String;

.field private final zzabk:Ljava/lang/String;

.field private final zzabl:I

.field private volatile zzabm:Ljava/lang/reflect/Method;

.field private final zzabn:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private zzabo:Ljava/util/concurrent/CountDownLatch;

.field private final zzwg:Lcom/google/android/gms/internal/ads/zzex;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public varargs constructor <init>(Lcom/google/android/gms/internal/ads/zzex;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzex;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzabl:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzabm:Ljava/lang/reflect/Method;

    .line 4
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzabo:Ljava/util/concurrent/CountDownLatch;

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzwg:Lcom/google/android/gms/internal/ads/zzex;

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgk;->className:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzabk:Ljava/lang/String;

    .line 8
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzabn:[Ljava/lang/Class;

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzwg:Lcom/google/android/gms/internal/ads/zzex;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzex;->zzcg()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzgj;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzgj;-><init>(Lcom/google/android/gms/internal/ads/zzgk;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzgk;)V
    .registers 1

    .line 53
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgk;->zzda()V

    return-void
.end method

.method private final zzb([BLjava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzeh;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzwg:Lcom/google/android/gms/internal/ads/zzex;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzex;->zzci()Lcom/google/android/gms/internal/ads/zzei;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzei;->zza([BLjava/lang/String;)[B

    move-result-object p1

    .line 43
    new-instance p2, Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-direct {p2, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object p2
.end method

.method private final zzda()V
    .registers 4

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzwg:Lcom/google/android/gms/internal/ads/zzex;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzex;->zzch()Ldalvik/system/DexClassLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzwg:Lcom/google/android/gms/internal/ads/zzex;

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzex;->zzcj()[B

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgk;->className:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgk;->zzb([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_16
    .catch Lcom/google/android/gms/internal/ads/zzeh; {:try_start_0 .. :try_end_16} :catch_61
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_16} :catch_5b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_16} :catch_55
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_16} :catch_4f
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_16} :catch_49
    .catchall {:try_start_0 .. :try_end_16} :catchall_42

    if-nez v0, :cond_1e

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzabo:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .line 17
    :cond_1e
    :try_start_1e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzwg:Lcom/google/android/gms/internal/ads/zzex;

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzex;->zzcj()[B

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzabk:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgk;->zzb([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzabn:[Ljava/lang/Class;

    .line 19
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzabm:Ljava/lang/reflect/Method;

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzabm:Ljava/lang/reflect/Method;
    :try_end_34
    .catch Lcom/google/android/gms/internal/ads/zzeh; {:try_start_1e .. :try_end_34} :catch_61
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1e .. :try_end_34} :catch_5b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1e .. :try_end_34} :catch_55
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1e .. :try_end_34} :catch_4f
    .catch Ljava/lang/NullPointerException; {:try_start_1e .. :try_end_34} :catch_49
    .catchall {:try_start_1e .. :try_end_34} :catchall_42

    if-nez v0, :cond_3c

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzabo:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .line 23
    :cond_3c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzabo:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_42
    move-exception v0

    .line 40
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzabo:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 41
    throw v0

    .line 38
    :catch_49
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzabo:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .line 35
    :catch_4f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzabo:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .line 32
    :catch_55
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzabo:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .line 29
    :catch_5b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzabo:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .line 26
    :catch_61
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzabo:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method


# virtual methods
.method public final zzdb()Ljava/lang/reflect/Method;
    .registers 6

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzabm:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_7

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzabm:Ljava/lang/reflect/Method;

    return-object v0

    :cond_7
    const/4 v0, 0x0

    .line 47
    :try_start_8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzabo:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_15

    return-object v0

    .line 50
    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzabm:Ljava/lang/reflect/Method;
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_17} :catch_17

    :catch_17
    return-object v0
.end method
