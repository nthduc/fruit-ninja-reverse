.class final synthetic Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient$$Lambda$3;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-config@@19.1.4"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final arg$1:Lcom/google/firebase/remoteconfig/internal/ConfigStorageClient;


# direct methods
.method private constructor <init>(Lcom/google/firebase/remoteconfig/internal/ConfigStorageClient;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient$$Lambda$3;->arg$1:Lcom/google/firebase/remoteconfig/internal/ConfigStorageClient;

    return-void
.end method

.method public static lambdaFactory$(Lcom/google/firebase/remoteconfig/internal/ConfigStorageClient;)Ljava/util/concurrent/Callable;
    .registers 2

    new-instance v0, Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient$$Lambda$3;

    invoke-direct {v0, p0}, Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient$$Lambda$3;-><init>(Lcom/google/firebase/remoteconfig/internal/ConfigStorageClient;)V

    return-object v0
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient$$Lambda$3;->arg$1:Lcom/google/firebase/remoteconfig/internal/ConfigStorageClient;

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/internal/ConfigStorageClient;->read()Lcom/google/firebase/remoteconfig/internal/ConfigContainer;

    move-result-object v0

    return-object v0
.end method
