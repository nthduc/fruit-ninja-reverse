.class public Lcom/vungle/warren/network/APIFactory;
.super Ljava/lang/Object;
.source "APIFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "APIFactory"


# instance fields
.field private baseUrl:Lokhttp3/HttpUrl;

.field private okHttpClient:Lokhttp3/Call$Factory;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lokhttp3/Call$Factory;Ljava/lang/String;)V
    .registers 5
    .param p1    # Lokhttp3/Call$Factory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {p2}, Lokhttp3/HttpUrl;->get(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/warren/network/APIFactory;->baseUrl:Lokhttp3/HttpUrl;

    .line 18
    iput-object p1, p0, Lcom/vungle/warren/network/APIFactory;->okHttpClient:Lokhttp3/Call$Factory;

    .line 20
    iget-object p1, p0, Lcom/vungle/warren/network/APIFactory;->baseUrl:Lokhttp3/HttpUrl;

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->pathSegments()Ljava/util/List;

    move-result-object p1

    .line 21
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24

    return-void

    .line 22
    :cond_24
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "baseUrl must end in /: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public createAPI()Lcom/vungle/warren/network/VungleApi;
    .registers 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 28
    new-instance v0, Lcom/vungle/warren/network/VungleApiImpl;

    iget-object v1, p0, Lcom/vungle/warren/network/APIFactory;->baseUrl:Lokhttp3/HttpUrl;

    iget-object v2, p0, Lcom/vungle/warren/network/APIFactory;->okHttpClient:Lokhttp3/Call$Factory;

    invoke-direct {v0, v1, v2}, Lcom/vungle/warren/network/VungleApiImpl;-><init>(Lokhttp3/HttpUrl;Lokhttp3/Call$Factory;)V

    return-object v0
.end method
