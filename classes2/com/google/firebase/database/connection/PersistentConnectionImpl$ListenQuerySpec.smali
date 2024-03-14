.class Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.3.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/connection/PersistentConnectionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListenQuerySpec"
.end annotation


# instance fields
.field private final path:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final queryParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;->path:Ljava/util/List;

    .line 46
    iput-object p2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;->queryParams:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$1000(Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;)Ljava/util/List;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;->path:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;)Ljava/util/Map;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;->queryParams:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 52
    :cond_4
    instance-of v0, p1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 56
    :cond_a
    check-cast p1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;

    .line 58
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;->path:Ljava/util/List;

    iget-object v2, p1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;->path:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    return v1

    .line 61
    :cond_17
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;->queryParams:Ljava/util/Map;

    iget-object p1, p1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;->queryParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 3

    .line 66
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;->path:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 67
    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;->queryParams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;->path:Ljava/util/List;

    invoke-static {v1}, Lcom/google/firebase/database/connection/ConnectionUtils;->pathToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (params: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;->queryParams:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
