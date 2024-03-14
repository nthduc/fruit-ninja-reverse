.class Lcom/chartboost/sdk/impl/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/p0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/g;->a(Lcom/chartboost/sdk/impl/h;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/h;

.field final synthetic b:J

.field final synthetic c:Z

.field final synthetic d:Z

.field final synthetic e:Z

.field final synthetic f:Lcom/chartboost/sdk/impl/g;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/g;Lcom/chartboost/sdk/impl/h;JZZZ)V
    .registers 8

    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/impl/g$a;->f:Lcom/chartboost/sdk/impl/g;

    iput-object p2, p0, Lcom/chartboost/sdk/impl/g$a;->a:Lcom/chartboost/sdk/impl/h;

    iput-wide p3, p0, Lcom/chartboost/sdk/impl/g$a;->b:J

    iput-boolean p5, p0, Lcom/chartboost/sdk/impl/g$a;->c:Z

    iput-boolean p6, p0, Lcom/chartboost/sdk/impl/g$a;->d:Z

    iput-boolean p7, p0, Lcom/chartboost/sdk/impl/g$a;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/impl/p0;Lcom/chartboost/sdk/Model/CBError;)V
    .registers 4

    .line 18
    iget-object p1, p0, Lcom/chartboost/sdk/impl/g$a;->f:Lcom/chartboost/sdk/impl/g;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/g$a;->a:Lcom/chartboost/sdk/impl/h;

    invoke-virtual {p1, v0, p2}, Lcom/chartboost/sdk/impl/g;->a(Lcom/chartboost/sdk/impl/h;Lcom/chartboost/sdk/Model/CBError;)V

    return-void
.end method

.method public a(Lcom/chartboost/sdk/impl/p0;Lorg/json/JSONObject;)V
    .registers 9

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/g$a;->a:Lcom/chartboost/sdk/impl/h;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/g$a;->f:Lcom/chartboost/sdk/impl/g;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/g;->i:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Libraries/i;->b()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/chartboost/sdk/impl/g$a;->b:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    long-to-int v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/chartboost/sdk/impl/h;->p:Ljava/lang/Integer;

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/g$a;->a:Lcom/chartboost/sdk/impl/h;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v2, p1, Lcom/chartboost/sdk/Networking/c;->g:J

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    long-to-int v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/chartboost/sdk/impl/h;->q:Ljava/lang/Integer;

    .line 3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/g$a;->a:Lcom/chartboost/sdk/impl/h;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v2, p1, Lcom/chartboost/sdk/Networking/c;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    long-to-int p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lcom/chartboost/sdk/impl/h;->r:Ljava/lang/Integer;

    .line 5
    iget-boolean p1, p0, Lcom/chartboost/sdk/impl/g$a;->c:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_48

    .line 6
    new-instance p1, Lcom/chartboost/sdk/Model/a;

    invoke-direct {p1, v1, p2, v0}, Lcom/chartboost/sdk/Model/a;-><init>(ILorg/json/JSONObject;Z)V

    goto :goto_67

    .line 7
    :cond_48
    iget-boolean p1, p0, Lcom/chartboost/sdk/impl/g$a;->d:Z

    if-eqz p1, :cond_58

    .line 8
    new-instance p1, Lcom/chartboost/sdk/impl/y;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/g$a;->f:Lcom/chartboost/sdk/impl/g;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/g;->p:Lcom/chartboost/sdk/impl/a;

    iget v0, v0, Lcom/chartboost/sdk/impl/a;->a:I

    invoke-direct {p1, v0, p2}, Lcom/chartboost/sdk/impl/y;-><init>(ILorg/json/JSONObject;)V

    goto :goto_67

    .line 9
    :cond_58
    iget-boolean p1, p0, Lcom/chartboost/sdk/impl/g$a;->e:Z

    if-eqz p1, :cond_62

    .line 10
    new-instance p1, Lcom/chartboost/sdk/Model/a;

    invoke-direct {p1, v0, p2, v1}, Lcom/chartboost/sdk/Model/a;-><init>(ILorg/json/JSONObject;Z)V

    goto :goto_67

    .line 12
    :cond_62
    new-instance p1, Lcom/chartboost/sdk/Model/a;

    invoke-direct {p1, v1, p2, v1}, Lcom/chartboost/sdk/Model/a;-><init>(ILorg/json/JSONObject;Z)V

    .line 14
    :goto_67
    iget-object p2, p0, Lcom/chartboost/sdk/impl/g$a;->f:Lcom/chartboost/sdk/impl/g;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/g$a;->a:Lcom/chartboost/sdk/impl/h;

    invoke-virtual {p2, v0, p1}, Lcom/chartboost/sdk/impl/g;->a(Lcom/chartboost/sdk/impl/h;Lcom/chartboost/sdk/Model/a;)V
    :try_end_6e
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_6e} :catch_6f

    goto :goto_87

    :catch_6f
    move-exception p1

    .line 16
    const-class p2, Lcom/chartboost/sdk/impl/g;

    const-string v0, "sendAdGetRequest.onSuccess"

    invoke-static {p2, v0, p1}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 17
    iget-object p1, p0, Lcom/chartboost/sdk/impl/g$a;->f:Lcom/chartboost/sdk/impl/g;

    iget-object p2, p0, Lcom/chartboost/sdk/impl/g$a;->a:Lcom/chartboost/sdk/impl/h;

    new-instance v0, Lcom/chartboost/sdk/Model/CBError;

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$b;->d:Lcom/chartboost/sdk/Model/CBError$b;

    const-string v2, "Response conversion failure"

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Model/CBError;-><init>(Lcom/chartboost/sdk/Model/CBError$b;Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Lcom/chartboost/sdk/impl/g;->a(Lcom/chartboost/sdk/impl/h;Lcom/chartboost/sdk/Model/CBError;)V

    :goto_87
    return-void
.end method
