.class final synthetic Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient$$Lambda$4;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-config@@19.1.4"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field private static final instance:Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient$$Lambda$4;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient$$Lambda$4;

    invoke-direct {v0}, Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient$$Lambda$4;-><init>()V

    sput-object v0, Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient$$Lambda$4;->instance:Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient$$Lambda$4;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava/util/concurrent/Executor;
    .registers 1

    sget-object v0, Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient$$Lambda$4;->instance:Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient$$Lambda$4;

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 2

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
