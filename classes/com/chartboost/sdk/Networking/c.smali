.class public Lcom/chartboost/sdk/Networking/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final e:Ljava/io/File;

.field public f:J

.field public g:J

.field public h:J

.field public i:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/io/File;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/chartboost/sdk/Networking/c;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/chartboost/sdk/Networking/c;->b:Ljava/lang/String;

    .line 4
    iput p3, p0, Lcom/chartboost/sdk/Networking/c;->c:I

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/chartboost/sdk/Networking/c;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    iput-object p4, p0, Lcom/chartboost/sdk/Networking/c;->e:Ljava/io/File;

    const-wide/16 p1, 0x0

    .line 7
    iput-wide p1, p0, Lcom/chartboost/sdk/Networking/c;->f:J

    .line 8
    iput-wide p1, p0, Lcom/chartboost/sdk/Networking/c;->g:J

    .line 9
    iput-wide p1, p0, Lcom/chartboost/sdk/Networking/c;->h:J

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/chartboost/sdk/Networking/c;->i:I

    return-void
.end method


# virtual methods
.method public a()Lcom/chartboost/sdk/Networking/d;
    .registers 3

    .line 1
    new-instance v0, Lcom/chartboost/sdk/Networking/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/chartboost/sdk/Networking/d;-><init>(Ljava/util/Map;[BLjava/lang/String;)V

    return-object v0
.end method

.method public a(Lcom/chartboost/sdk/Networking/f;)Lcom/chartboost/sdk/Networking/e;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/sdk/Networking/f;",
            ")",
            "Lcom/chartboost/sdk/Networking/e<",
            "TT;>;"
        }
    .end annotation

    const/4 p1, 0x0

    .line 2
    invoke-static {p1}, Lcom/chartboost/sdk/Networking/e;->a(Ljava/lang/Object;)Lcom/chartboost/sdk/Networking/e;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/chartboost/sdk/Model/CBError;Lcom/chartboost/sdk/Networking/f;)V
    .registers 3

    return-void
.end method

.method public a(Ljava/lang/Object;Lcom/chartboost/sdk/Networking/f;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/chartboost/sdk/Networking/f;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public b()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/Networking/c;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    return v0
.end method
