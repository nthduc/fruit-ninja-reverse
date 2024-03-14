.class Lcom/adcolony/sdk/h$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/h;->E()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/h;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/h;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/adcolony/sdk/h$e;->a:Lcom/adcolony/sdk/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 1
    invoke-static {}, Lcom/adcolony/sdk/s;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/adcolony/sdk/h;->U:Ljava/lang/String;

    const-string v2, "url"

    invoke-static {v0, v2, v1}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v1, "content_type"

    const-string v2, "application/json"

    .line 3
    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 4
    iget-object v1, p0, Lcom/adcolony/sdk/h$e;->a:Lcom/adcolony/sdk/h;

    invoke-virtual {v1}, Lcom/adcolony/sdk/h;->h()Lcom/adcolony/sdk/j;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/j;->a(Z)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/adcolony/sdk/k0;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    invoke-static {v0, v2, v1}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 5
    iget-object v1, p0, Lcom/adcolony/sdk/h$e;->a:Lcom/adcolony/sdk/h;

    invoke-static {v1}, Lcom/adcolony/sdk/h;->o(Lcom/adcolony/sdk/h;)Lcom/adcolony/sdk/m;

    move-result-object v1

    new-instance v2, Lcom/adcolony/sdk/l;

    new-instance v3, Lcom/adcolony/sdk/x;

    const-string v4, "WebServices.post"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v0}, Lcom/adcolony/sdk/x;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/adcolony/sdk/h$e;->a:Lcom/adcolony/sdk/h;

    invoke-direct {v2, v3, v0}, Lcom/adcolony/sdk/l;-><init>(Lcom/adcolony/sdk/x;Lcom/adcolony/sdk/l$a;)V

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/m;->a(Lcom/adcolony/sdk/l;)V

    return-void
.end method
