.class Lcom/adcolony/sdk/w$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/w;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/w;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/w;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/adcolony/sdk/w$j;->a:Lcom/adcolony/sdk/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/adcolony/sdk/x;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/w$j;->a:Lcom/adcolony/sdk/w;

    invoke-virtual {p1}, Lcom/adcolony/sdk/x;->b()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "module"

    invoke-static {v1, v2}, Lcom/adcolony/sdk/s;->f(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    .line 2
    invoke-virtual {p1}, Lcom/adcolony/sdk/x;->b()Lorg/json/JSONObject;

    move-result-object p1

    const-string v2, "message"

    invoke-static {p1, v2}, Lcom/adcolony/sdk/s;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2, p1, v2}, Lcom/adcolony/sdk/w;->b(IILjava/lang/String;Z)V

    return-void
.end method
