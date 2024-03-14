.class public Lcom/ironsource/sdk/utils/IronSourceQaProperties;
.super Ljava/lang/Object;
.source "IronSourceQaProperties.java"


# static fields
.field private static mInstance:Lcom/ironsource/sdk/utils/IronSourceQaProperties;

.field private static parameters:Ljava/util/Map;
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
.method static constructor <clinit>()V
    .registers 1

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ironsource/sdk/utils/IronSourceQaProperties;->parameters:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/ironsource/sdk/utils/IronSourceQaProperties;
    .registers 1

    .line 15
    sget-object v0, Lcom/ironsource/sdk/utils/IronSourceQaProperties;->mInstance:Lcom/ironsource/sdk/utils/IronSourceQaProperties;

    if-nez v0, :cond_b

    .line 16
    new-instance v0, Lcom/ironsource/sdk/utils/IronSourceQaProperties;

    invoke-direct {v0}, Lcom/ironsource/sdk/utils/IronSourceQaProperties;-><init>()V

    sput-object v0, Lcom/ironsource/sdk/utils/IronSourceQaProperties;->mInstance:Lcom/ironsource/sdk/utils/IronSourceQaProperties;

    .line 18
    :cond_b
    sget-object v0, Lcom/ironsource/sdk/utils/IronSourceQaProperties;->mInstance:Lcom/ironsource/sdk/utils/IronSourceQaProperties;

    return-object v0
.end method

.method public static isInitialized()Z
    .registers 1

    .line 24
    sget-object v0, Lcom/ironsource/sdk/utils/IronSourceQaProperties;->mInstance:Lcom/ironsource/sdk/utils/IronSourceQaProperties;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method


# virtual methods
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

    .line 47
    sget-object v0, Lcom/ironsource/sdk/utils/IronSourceQaProperties;->parameters:Ljava/util/Map;

    return-object v0
.end method

.method public getQaParameter(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 39
    sget-object v0, Lcom/ironsource/sdk/utils/IronSourceQaProperties;->parameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 40
    sget-object v0, Lcom/ironsource/sdk/utils/IronSourceQaProperties;->parameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_13

    :cond_11
    const-string p1, ""

    :goto_13
    return-object p1
.end method

.method public setQaParameter(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_a

    if-nez p2, :cond_5

    goto :goto_a

    .line 33
    :cond_5
    sget-object v0, Lcom/ironsource/sdk/utils/IronSourceQaProperties;->parameters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    :goto_a
    return-void
.end method
