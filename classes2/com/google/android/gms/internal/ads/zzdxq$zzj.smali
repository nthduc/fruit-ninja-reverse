.class final Lcom/google/android/gms/internal/ads/zzdxq$zzj;
.super Lcom/google/android/gms/internal/ads/zzdxq$zzb;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzdxq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zzj"
.end annotation


# static fields
.field static final zzhsa:Lsun/misc/Unsafe;

.field static final zzhsb:J

.field static final zzhsc:J

.field static final zzhsd:J

.field static final zzhse:J

.field static final zzhsf:J


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 10
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_10

    .line 13
    :catch_5
    :try_start_5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdxq$zzj$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdxq$zzj$1;-><init>()V

    .line 14
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_10
    .catch Ljava/security/PrivilegedActionException; {:try_start_5 .. :try_end_10} :catch_5f

    .line 18
    :goto_10
    :try_start_10
    const-class v1, Lcom/google/android/gms/internal/ads/zzdxq;

    const-string v2, "waiters"

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lcom/google/android/gms/internal/ads/zzdxq$zzj;->zzhsc:J

    const-string v2, "listeners"

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lcom/google/android/gms/internal/ads/zzdxq$zzj;->zzhsb:J

    const-string v2, "value"

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Lcom/google/android/gms/internal/ads/zzdxq$zzj;->zzhsd:J

    .line 22
    const-class v1, Lcom/google/android/gms/internal/ads/zzdxq$zzk;

    const-string v2, "thread"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Lcom/google/android/gms/internal/ads/zzdxq$zzj;->zzhse:J

    .line 23
    const-class v1, Lcom/google/android/gms/internal/ads/zzdxq$zzk;

    const-string v2, "next"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Lcom/google/android/gms/internal/ads/zzdxq$zzj;->zzhsf:J

    .line 24
    sput-object v0, Lcom/google/android/gms/internal/ads/zzdxq$zzj;->zzhsa:Lsun/misc/Unsafe;
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_54} :catch_55

    return-void

    :catch_55
    move-exception v0

    .line 27
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdwh;->zzi(Ljava/lang/Throwable;)V

    .line 28
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_5f
    move-exception v0

    .line 17
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const-string v2, "Could not initialize intrinsics"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdxq$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzdxq$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdxq$1;)V
    .registers 2

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdxq$zzj;-><init>()V

    return-void
.end method


# virtual methods
.method final zza(Lcom/google/android/gms/internal/ads/zzdxq$zzk;Lcom/google/android/gms/internal/ads/zzdxq$zzk;)V
    .registers 6

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdxq$zzj;->zzhsa:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/google/android/gms/internal/ads/zzdxq$zzj;->zzhsf:J

    invoke-virtual {v0, p1, v1, v2, p2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method final zza(Lcom/google/android/gms/internal/ads/zzdxq$zzk;Ljava/lang/Thread;)V
    .registers 6

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdxq$zzj;->zzhsa:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/google/android/gms/internal/ads/zzdxq$zzj;->zzhse:J

    invoke-virtual {v0, p1, v1, v2, p2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method final zza(Lcom/google/android/gms/internal/ads/zzdxq;Lcom/google/android/gms/internal/ads/zzdxq$zze;Lcom/google/android/gms/internal/ads/zzdxq$zze;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdxq<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/zzdxq$zze;",
            "Lcom/google/android/gms/internal/ads/zzdxq$zze;",
            ")Z"
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdxq$zzj;->zzhsa:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/android/gms/internal/ads/zzdxq$zzj;->zzhsb:J

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final zza(Lcom/google/android/gms/internal/ads/zzdxq;Lcom/google/android/gms/internal/ads/zzdxq$zzk;Lcom/google/android/gms/internal/ads/zzdxq$zzk;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdxq<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/zzdxq$zzk;",
            "Lcom/google/android/gms/internal/ads/zzdxq$zzk;",
            ")Z"
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdxq$zzj;->zzhsa:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/android/gms/internal/ads/zzdxq$zzj;->zzhsc:J

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final zza(Lcom/google/android/gms/internal/ads/zzdxq;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdxq<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdxq$zzj;->zzhsa:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/android/gms/internal/ads/zzdxq$zzj;->zzhsd:J

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
