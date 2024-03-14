.class Lcom/chartboost/sdk/impl/m;
.super Lcom/chartboost/sdk/Networking/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chartboost/sdk/Networking/c<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final j:Lcom/chartboost/sdk/impl/n;

.field private final k:Lcom/chartboost/sdk/Networking/h;

.field final l:Lcom/chartboost/sdk/impl/l;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/n;Lcom/chartboost/sdk/Networking/h;Lcom/chartboost/sdk/impl/l;Ljava/io/File;)V
    .registers 8

    .line 1
    iget-object v0, p3, Lcom/chartboost/sdk/impl/l;->d:Ljava/lang/String;

    const-string v1, "GET"

    const/4 v2, 0x2

    invoke-direct {p0, v1, v0, v2, p4}, Lcom/chartboost/sdk/Networking/c;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/io/File;)V

    const/4 p4, 0x1

    .line 2
    iput p4, p0, Lcom/chartboost/sdk/Networking/c;->i:I

    .line 3
    iput-object p1, p0, Lcom/chartboost/sdk/impl/m;->j:Lcom/chartboost/sdk/impl/n;

    .line 4
    iput-object p2, p0, Lcom/chartboost/sdk/impl/m;->k:Lcom/chartboost/sdk/Networking/h;

    .line 5
    iput-object p3, p0, Lcom/chartboost/sdk/impl/m;->l:Lcom/chartboost/sdk/impl/l;

    return-void
.end method


# virtual methods
.method public a()Lcom/chartboost/sdk/Networking/d;
    .registers 4

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    sget-object v1, Lcom/chartboost/sdk/j;->j:Ljava/lang/String;

    const-string v2, "X-Chartboost-App"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-Chartboost-Client"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v1, p0, Lcom/chartboost/sdk/impl/m;->k:Lcom/chartboost/sdk/Networking/h;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Networking/h;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-Chartboost-Reachability"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v1, Lcom/chartboost/sdk/Networking/d;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v2}, Lcom/chartboost/sdk/Networking/d;-><init>(Ljava/util/Map;[BLjava/lang/String;)V

    return-object v1
.end method

.method public a(Lcom/chartboost/sdk/Model/CBError;Lcom/chartboost/sdk/Networking/f;)V
    .registers 4

    .line 10
    iget-object v0, p0, Lcom/chartboost/sdk/impl/m;->j:Lcom/chartboost/sdk/impl/n;

    invoke-virtual {v0, p0, p1, p2}, Lcom/chartboost/sdk/impl/n;->a(Lcom/chartboost/sdk/impl/m;Lcom/chartboost/sdk/Model/CBError;Lcom/chartboost/sdk/Networking/f;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/chartboost/sdk/Networking/f;)V
    .registers 3

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/chartboost/sdk/impl/m;->a(Ljava/lang/Void;Lcom/chartboost/sdk/Networking/f;)V

    return-void
.end method

.method public a(Ljava/lang/Void;Lcom/chartboost/sdk/Networking/f;)V
    .registers 3

    .line 9
    iget-object p1, p0, Lcom/chartboost/sdk/impl/m;->j:Lcom/chartboost/sdk/impl/n;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2, p2}, Lcom/chartboost/sdk/impl/n;->a(Lcom/chartboost/sdk/impl/m;Lcom/chartboost/sdk/Model/CBError;Lcom/chartboost/sdk/Networking/f;)V

    return-void
.end method
