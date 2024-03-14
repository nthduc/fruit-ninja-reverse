.class abstract Lcom/google/android/gms/internal/ads/zzejx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/gms/internal/ads/zzejm;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;

.field private static zziiz:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 50
    const-class v0, Lcom/google/android/gms/internal/ads/zzejj;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzejx;->logger:Ljava/util/logging/Logger;

    const-string v0, "com.google.protobuf.BlazeGeneratedExtensionRegistryLiteLoader"

    .line 51
    sput-object v0, Lcom/google/android/gms/internal/ads/zzejx;->zziiz:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static zzc(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzejm;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzejm;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 2
    const-class v0, Lcom/google/android/gms/internal/ads/zzejx;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 3
    const-class v1, Lcom/google/android/gms/internal/ads/zzejm;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_13

    .line 4
    sget-object v1, Lcom/google/android/gms/internal/ads/zzejx;->zziiz:Ljava/lang/String;

    goto :goto_3c

    .line 6
    :cond_13
    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    const-class v4, Lcom/google/android/gms/internal/ads/zzejx;

    .line 7
    invoke-virtual {v4}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_107

    const/4 v1, 0x2

    .line 9
    new-array v1, v1, [Ljava/lang/Object;

    .line 10
    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 11
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const-string v4, "%s.BlazeGenerated%sLoader"

    .line 12
    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 14
    :goto_3c
    :try_start_3c
    invoke-static {v1, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1
    :try_end_40
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3c .. :try_end_40} :catch_75

    .line 15
    :try_start_40
    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzejx;
    :try_end_4e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_40 .. :try_end_4e} :catch_6e
    .catch Ljava/lang/InstantiationException; {:try_start_40 .. :try_end_4e} :catch_67
    .catch Ljava/lang/IllegalAccessException; {:try_start_40 .. :try_end_4e} :catch_60
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_40 .. :try_end_4e} :catch_59
    .catch Ljava/lang/ClassNotFoundException; {:try_start_40 .. :try_end_4e} :catch_75

    .line 25
    :try_start_4e
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzejx;->zzbge()Lcom/google/android/gms/internal/ads/zzejm;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzejm;

    return-object v1

    :catch_59
    move-exception v1

    .line 24
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :catch_60
    move-exception v1

    .line 22
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :catch_67
    move-exception v1

    .line 20
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :catch_6e
    move-exception v1

    .line 18
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_75
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4e .. :try_end_75} :catch_75

    .line 27
    :catch_75
    const-class v1, Lcom/google/android/gms/internal/ads/zzejx;

    .line 28
    invoke-static {v1, v0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 30
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    :goto_84
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c6

    .line 32
    :try_start_8a
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzejx;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzejx;->zzbge()Lcom/google/android/gms/internal/ads/zzejm;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9b
    .catch Ljava/util/ServiceConfigurationError; {:try_start_8a .. :try_end_9b} :catch_9c

    goto :goto_84

    :catch_9c
    move-exception v4

    move-object v10, v4

    .line 35
    sget-object v5, Lcom/google/android/gms/internal/ads/zzejx;->logger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v4, "Unable to load "

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_b8

    invoke-virtual {v4, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v9, v4

    goto :goto_be

    :cond_b8
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v9, v7

    :goto_be
    const-string v7, "com.google.protobuf.GeneratedExtensionRegistryLoader"

    const-string v8, "load"

    invoke-virtual/range {v5 .. v10}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_84

    .line 37
    :cond_c6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_d3

    .line 38
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzejm;

    return-object p0

    .line 39
    :cond_d3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_db

    return-object v4

    :cond_db
    :try_start_db
    const-string v0, "combine"

    .line 41
    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Ljava/util/Collection;

    aput-object v6, v5, v3

    .line 42
    invoke-virtual {p0, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/Object;

    aput-object v1, v0, v3

    invoke-virtual {p0, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzejm;
    :try_end_f1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_db .. :try_end_f1} :catch_100
    .catch Ljava/lang/IllegalAccessException; {:try_start_db .. :try_end_f1} :catch_f9
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_db .. :try_end_f1} :catch_f2

    return-object p0

    :catch_f2
    move-exception p0

    .line 49
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_f9
    move-exception p0

    .line 47
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_100
    move-exception p0

    .line 45
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 8
    :cond_107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    return-void
.end method


# virtual methods
.method protected abstract zzbge()Lcom/google/android/gms/internal/ads/zzejm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
