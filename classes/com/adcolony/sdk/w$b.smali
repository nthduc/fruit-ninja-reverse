.class Lcom/adcolony/sdk/w$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/w;->a(IILjava/lang/String;Z)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Z

.field final synthetic e:Lcom/adcolony/sdk/w;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/w;ILjava/lang/String;IZ)V
    .registers 6

    .line 1
    iput-object p1, p0, Lcom/adcolony/sdk/w$b;->e:Lcom/adcolony/sdk/w;

    iput p2, p0, Lcom/adcolony/sdk/w$b;->a:I

    iput-object p3, p0, Lcom/adcolony/sdk/w$b;->b:Ljava/lang/String;

    iput p4, p0, Lcom/adcolony/sdk/w$b;->c:I

    iput-boolean p5, p0, Lcom/adcolony/sdk/w$b;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/w$b;->e:Lcom/adcolony/sdk/w;

    iget v1, p0, Lcom/adcolony/sdk/w$b;->a:I

    iget-object v2, p0, Lcom/adcolony/sdk/w$b;->b:Ljava/lang/String;

    iget v3, p0, Lcom/adcolony/sdk/w$b;->c:I

    invoke-static {v0, v1, v2, v3}, Lcom/adcolony/sdk/w;->a(Lcom/adcolony/sdk/w;ILjava/lang/String;I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    :cond_d
    :goto_d
    iget-object v2, p0, Lcom/adcolony/sdk/w$b;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit16 v2, v2, 0xfa0

    if-gt v1, v2, :cond_e2

    mul-int/lit16 v2, v1, 0xfa0

    add-int/lit8 v1, v1, 0x1

    mul-int/lit16 v3, v1, 0xfa0

    .line 6
    iget-object v4, p0, Lcom/adcolony/sdk/w$b;->b:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 8
    iget v4, p0, Lcom/adcolony/sdk/w$b;->c:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_50

    iget-object v4, p0, Lcom/adcolony/sdk/w$b;->e:Lcom/adcolony/sdk/w;

    invoke-static {v4}, Lcom/adcolony/sdk/w;->a(Lcom/adcolony/sdk/w;)Lorg/json/JSONObject;

    move-result-object v6

    iget v7, p0, Lcom/adcolony/sdk/w$b;->a:I

    .line 9
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 10
    invoke-static {v6, v7}, Lcom/adcolony/sdk/s;->g(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    iget-boolean v7, p0, Lcom/adcolony/sdk/w$b;->d:Z

    invoke-virtual {v4, v6, v5, v7}, Lcom/adcolony/sdk/w;->a(Lorg/json/JSONObject;IZ)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 12
    iget-object v4, p0, Lcom/adcolony/sdk/w$b;->b:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AdColony [TRACE]"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 13
    :cond_50
    iget v4, p0, Lcom/adcolony/sdk/w$b;->c:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_79

    iget-object v4, p0, Lcom/adcolony/sdk/w$b;->e:Lcom/adcolony/sdk/w;

    .line 14
    invoke-static {v4}, Lcom/adcolony/sdk/w;->a(Lcom/adcolony/sdk/w;)Lorg/json/JSONObject;

    move-result-object v6

    iget v7, p0, Lcom/adcolony/sdk/w$b;->a:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 15
    invoke-static {v6, v7}, Lcom/adcolony/sdk/s;->g(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    iget-boolean v7, p0, Lcom/adcolony/sdk/w$b;->d:Z

    invoke-virtual {v4, v6, v5, v7}, Lcom/adcolony/sdk/w;->a(Lorg/json/JSONObject;IZ)Z

    move-result v4

    if-eqz v4, :cond_79

    .line 17
    iget-object v4, p0, Lcom/adcolony/sdk/w$b;->b:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AdColony [INFO]"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 18
    :cond_79
    iget v4, p0, Lcom/adcolony/sdk/w$b;->c:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_a3

    iget-object v4, p0, Lcom/adcolony/sdk/w$b;->e:Lcom/adcolony/sdk/w;

    .line 19
    invoke-static {v4}, Lcom/adcolony/sdk/w;->a(Lcom/adcolony/sdk/w;)Lorg/json/JSONObject;

    move-result-object v6

    iget v7, p0, Lcom/adcolony/sdk/w$b;->a:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 20
    invoke-static {v6, v7}, Lcom/adcolony/sdk/s;->g(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    iget-boolean v7, p0, Lcom/adcolony/sdk/w$b;->d:Z

    invoke-virtual {v4, v6, v5, v7}, Lcom/adcolony/sdk/w;->a(Lorg/json/JSONObject;IZ)Z

    move-result v4

    if-eqz v4, :cond_a3

    .line 22
    iget-object v4, p0, Lcom/adcolony/sdk/w$b;->b:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AdColony [WARNING]"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 23
    :cond_a3
    iget v4, p0, Lcom/adcolony/sdk/w$b;->c:I

    if-nez v4, :cond_cc

    iget-object v4, p0, Lcom/adcolony/sdk/w$b;->e:Lcom/adcolony/sdk/w;

    .line 24
    invoke-static {v4}, Lcom/adcolony/sdk/w;->a(Lcom/adcolony/sdk/w;)Lorg/json/JSONObject;

    move-result-object v5

    iget v6, p0, Lcom/adcolony/sdk/w$b;->a:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 25
    invoke-static {v5, v6}, Lcom/adcolony/sdk/s;->g(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    iget-boolean v6, p0, Lcom/adcolony/sdk/w$b;->d:Z

    invoke-virtual {v4, v5, v0, v6}, Lcom/adcolony/sdk/w;->a(Lorg/json/JSONObject;IZ)Z

    move-result v4

    if-eqz v4, :cond_cc

    .line 27
    iget-object v4, p0, Lcom/adcolony/sdk/w$b;->b:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AdColony [ERROR]"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 28
    :cond_cc
    iget v4, p0, Lcom/adcolony/sdk/w$b;->c:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_d

    sget v4, Lcom/adcolony/sdk/w;->m:I

    if-lt v4, v5, :cond_d

    .line 29
    iget-object v4, p0, Lcom/adcolony/sdk/w$b;->b:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AdColony [FATAL]"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :cond_e2
    return-void
.end method
