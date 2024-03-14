.class abstract Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
.super Ljava/lang/Object;
.source "NativeProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/NativeProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "NativeAppInfo"
.end annotation


# instance fields
.field private availableVersions:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/internal/NativeProtocol$1;)V
    .registers 2

    .line 257
    invoke-direct {p0}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/facebook/internal/NativeProtocol$NativeAppInfo;Z)V
    .registers 2

    .line 257
    invoke-direct {p0, p1}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->fetchAvailableVersions(Z)V

    return-void
.end method

.method private declared-synchronized fetchAvailableVersions(Z)V
    .registers 2

    monitor-enter p0

    if-nez p1, :cond_f

    .line 272
    :try_start_3
    iget-object p1, p0, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->availableVersions:Ljava/util/TreeSet;

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->availableVersions:Ljava/util/TreeSet;

    invoke-virtual {p1}, Ljava/util/TreeSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 273
    :cond_f
    # invokes: Lcom/facebook/internal/NativeProtocol;->fetchAllAvailableProtocolVersionsForAppInfo(Lcom/facebook/internal/NativeProtocol$NativeAppInfo;)Ljava/util/TreeSet;
    invoke-static {p0}, Lcom/facebook/internal/NativeProtocol;->access$000(Lcom/facebook/internal/NativeProtocol$NativeAppInfo;)Ljava/util/TreeSet;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->availableVersions:Ljava/util/TreeSet;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    .line 275
    :cond_15
    monitor-exit p0

    return-void

    :catchall_17
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public getAvailableVersions()Ljava/util/TreeSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->availableVersions:Ljava/util/TreeSet;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_a
    const/4 v0, 0x0

    .line 266
    invoke-direct {p0, v0}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->fetchAvailableVersions(Z)V

    .line 268
    :cond_e
    iget-object v0, p0, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->availableVersions:Ljava/util/TreeSet;

    return-object v0
.end method

.method protected abstract getLoginActivity()Ljava/lang/String;
.end method

.method protected abstract getPackage()Ljava/lang/String;
.end method
