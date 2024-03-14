.class public Lcom/helpshift/websockets/WebSocketExtension;
.super Ljava/lang/Object;
.source "WebSocketExtension.java"


# static fields
.field public static final PERMESSAGE_DEFLATE:Ljava/lang/String; = "permessage-deflate"


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/helpshift/websockets/WebSocketExtension;)V
    .registers 3

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_17

    .line 80
    invoke-virtual {p1}, Lcom/helpshift/websockets/WebSocketExtension;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/websockets/WebSocketExtension;->mName:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/helpshift/websockets/WebSocketExtension;->getParameters()Ljava/util/Map;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/helpshift/websockets/WebSocketExtension;->mParameters:Ljava/util/Map;

    return-void

    .line 77
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'source\' is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {p1}, Lcom/helpshift/websockets/Token;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 62
    iput-object p1, p0, Lcom/helpshift/websockets/WebSocketExtension;->mName:Ljava/lang/String;

    .line 63
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/helpshift/websockets/WebSocketExtension;->mParameters:Ljava/util/Map;

    return-void

    .line 59
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'name\' is not a valid token."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static createInstance(Ljava/lang/String;)Lcom/helpshift/websockets/WebSocketExtension;
    .registers 2

    const-string v0, "permessage-deflate"

    .line 167
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 168
    new-instance v0, Lcom/helpshift/websockets/PerMessageDeflateExtension;

    invoke-direct {v0, p0}, Lcom/helpshift/websockets/PerMessageDeflateExtension;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 171
    :cond_e
    new-instance v0, Lcom/helpshift/websockets/WebSocketExtension;

    invoke-direct {v0, p0}, Lcom/helpshift/websockets/WebSocketExtension;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static extractValue([Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 159
    array-length v0, p0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    const/4 v0, 0x1

    .line 163
    aget-object p0, p0, v0

    invoke-static {p0}, Lcom/helpshift/websockets/Token;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;)Lcom/helpshift/websockets/WebSocketExtension;
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 102
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v1, "\\s*;\\s*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 104
    array-length v1, p0

    if-nez v1, :cond_12

    return-object v0

    :cond_12
    const/4 v1, 0x0

    .line 110
    aget-object v2, p0, v1

    .line 112
    invoke-static {v2}, Lcom/helpshift/websockets/Token;->isValid(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1c

    return-object v0

    .line 118
    :cond_1c
    invoke-static {v2}, Lcom/helpshift/websockets/WebSocketExtension;->createInstance(Ljava/lang/String;)Lcom/helpshift/websockets/WebSocketExtension;

    move-result-object v0

    const/4 v2, 0x1

    .line 121
    :goto_21
    array-length v3, p0

    if-ge v2, v3, :cond_55

    .line 123
    aget-object v3, p0, v2

    const/4 v4, 0x2

    const-string v5, "\\s*=\\s*"

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 126
    array-length v4, v3

    if-eqz v4, :cond_52

    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_39

    goto :goto_52

    .line 132
    :cond_39
    aget-object v4, v3, v1

    .line 134
    invoke-static {v4}, Lcom/helpshift/websockets/Token;->isValid(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_42

    goto :goto_52

    .line 141
    :cond_42
    invoke-static {v3}, Lcom/helpshift/websockets/WebSocketExtension;->extractValue([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4f

    .line 144
    invoke-static {v3}, Lcom/helpshift/websockets/Token;->isValid(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4f

    goto :goto_52

    .line 152
    :cond_4f
    invoke-virtual {v0, v4, v3}, Lcom/helpshift/websockets/WebSocketExtension;->setParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/helpshift/websockets/WebSocketExtension;

    :cond_52
    :goto_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_55
    return-object v0
.end method


# virtual methods
.method public containsParameter(Ljava/lang/String;)Z
    .registers 3

    .line 199
    iget-object v0, p0, Lcom/helpshift/websockets/WebSocketExtension;->mParameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 180
    iget-object v0, p0, Lcom/helpshift/websockets/WebSocketExtension;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 209
    iget-object v0, p0, Lcom/helpshift/websockets/WebSocketExtension;->mParameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getParameters()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/helpshift/websockets/WebSocketExtension;->mParameters:Ljava/util/Map;

    return-object v0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/helpshift/websockets/WebSocketExtension;
    .registers 4

    .line 229
    invoke-static {p1}, Lcom/helpshift/websockets/Token;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    if-eqz p2, :cond_17

    .line 237
    invoke-static {p2}, Lcom/helpshift/websockets/Token;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_17

    .line 239
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'value\' is not a valid token."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 243
    :cond_17
    :goto_17
    iget-object v0, p0, Lcom/helpshift/websockets/WebSocketExtension;->mParameters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 231
    :cond_1d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'key\' is not a valid token."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpshift/websockets/WebSocketExtension;->mName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 255
    iget-object v1, p0, Lcom/helpshift/websockets/WebSocketExtension;->mParameters:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    const-string v3, "; "

    .line 257
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_11

    .line 261
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_11

    const-string v3, "="

    .line 263
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    .line 267
    :cond_42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method validate()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpshift/websockets/WebSocketException;
        }
    .end annotation

    return-void
.end method
