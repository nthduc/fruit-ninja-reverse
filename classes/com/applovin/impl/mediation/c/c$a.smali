.class public Lcom/applovin/impl/mediation/c/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/mediation/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Lorg/json/JSONArray;

.field private final b:Lorg/json/JSONArray;


# direct methods
.method private constructor <init>(Lorg/json/JSONArray;Lorg/json/JSONArray;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/mediation/c/c$a;->a:Lorg/json/JSONArray;

    iput-object p2, p0, Lcom/applovin/impl/mediation/c/c$a;->b:Lorg/json/JSONArray;

    return-void
.end method

.method synthetic constructor <init>(Lorg/json/JSONArray;Lorg/json/JSONArray;Lcom/applovin/impl/mediation/c/c$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/mediation/c/c$a;-><init>(Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONArray;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/c/c$a;->a:Lorg/json/JSONArray;

    return-object v0
.end method

.method public b()Lorg/json/JSONArray;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/c/c$a;->b:Lorg/json/JSONArray;

    return-object v0
.end method
