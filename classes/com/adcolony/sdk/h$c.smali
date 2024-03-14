.class Lcom/adcolony/sdk/h$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/h;->a(Lcom/adcolony/sdk/AdColonyAppOptions;Z)V
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
    iput-object p1, p0, Lcom/adcolony/sdk/h$c;->a:Lcom/adcolony/sdk/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/adcolony/sdk/x;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/h$c;->a:Lcom/adcolony/sdk/h;

    invoke-virtual {v0}, Lcom/adcolony/sdk/h;->m()Lcom/adcolony/sdk/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/w;->a()Lcom/adcolony/sdk/e0;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/adcolony/sdk/h$c;->a:Lcom/adcolony/sdk/h;

    invoke-virtual {v1}, Lcom/adcolony/sdk/h;->h()Lcom/adcolony/sdk/j;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adcolony/sdk/x;->b()Lorg/json/JSONObject;

    move-result-object p1

    const-string v2, "version"

    invoke-static {p1, v2}, Lcom/adcolony/sdk/s;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/adcolony/sdk/j;->b(Ljava/lang/String;)V

    if-eqz v0, :cond_2c

    .line 4
    iget-object p1, p0, Lcom/adcolony/sdk/h$c;->a:Lcom/adcolony/sdk/h;

    invoke-virtual {p1}, Lcom/adcolony/sdk/h;->h()Lcom/adcolony/sdk/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/adcolony/sdk/j;->j()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/e0;->e(Ljava/lang/String;)V

    :cond_2c
    return-void
.end method
