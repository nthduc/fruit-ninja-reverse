.class Lcom/applovin/impl/sdk/d/j$1;
.super Lcom/applovin/impl/sdk/d/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/d/j;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/applovin/impl/sdk/d/y<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final synthetic c:Lcom/applovin/impl/sdk/d/j;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/d/j;Lcom/applovin/impl/sdk/network/b;Lcom/applovin/impl/sdk/j;)V
    .registers 4

    iput-object p1, p0, Lcom/applovin/impl/sdk/d/j$1;->c:Lcom/applovin/impl/sdk/d/j;

    invoke-direct {p0, p2, p3}, Lcom/applovin/impl/sdk/d/y;-><init>(Lcom/applovin/impl/sdk/network/b;Lcom/applovin/impl/sdk/j;)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/d/j$1;->c:Lcom/applovin/impl/sdk/d/j;

    invoke-static {p1}, Lcom/applovin/impl/sdk/d/j;->a(Lcom/applovin/impl/sdk/d/j;)Lcom/applovin/impl/sdk/network/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/g;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sdk/d/j$1;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to dispatch postback. Error code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/j$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/j$1;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/j$1;->c:Lcom/applovin/impl/sdk/d/j;

    invoke-static {v0}, Lcom/applovin/impl/sdk/d/j;->b(Lcom/applovin/impl/sdk/d/j;)Lcom/applovin/sdk/AppLovinPostbackListener;

    move-result-object v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/j$1;->c:Lcom/applovin/impl/sdk/d/j;

    invoke-static {v0}, Lcom/applovin/impl/sdk/d/j;->b(Lcom/applovin/impl/sdk/d/j;)Lcom/applovin/sdk/AppLovinPostbackListener;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/j$1;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/applovin/sdk/AppLovinPostbackListener;->onPostbackFailure(Ljava/lang/String;I)V

    :cond_31
    iget-object v0, p0, Lcom/applovin/impl/sdk/d/j$1;->c:Lcom/applovin/impl/sdk/d/j;

    invoke-static {v0}, Lcom/applovin/impl/sdk/d/j;->a(Lcom/applovin/impl/sdk/d/j;)Lcom/applovin/impl/sdk/network/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/network/g;->q()Z

    move-result v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/j$1;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->ad()Lcom/applovin/impl/sdk/f;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/j$1;->c:Lcom/applovin/impl/sdk/d/j;

    invoke-static {v1}, Lcom/applovin/impl/sdk/d/j;->a(Lcom/applovin/impl/sdk/d/j;)Lcom/applovin/impl/sdk/network/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/network/g;->r()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/j$1;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/applovin/impl/sdk/f;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_53
    return-void
.end method

.method public a(Ljava/lang/Object;I)V
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/j$1;->b:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->eH:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_45

    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_84

    move-object v0, p1

    check-cast v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/j$1;->b:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/b;->aD:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/j;->b(Lcom/applovin/impl/sdk/b/b;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_84

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/j$1;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/utils/h;->d(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/j$1;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/utils/h;->c(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/j$1;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/utils/h;->e(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V

    goto :goto_84

    :cond_45
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_84

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/j$1;->b:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->aD:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->b(Lcom/applovin/impl/sdk/b/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_55
    :cond_55
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_84

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_55

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_55

    :try_start_70
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/j$1;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v2, v1}, Lcom/applovin/impl/sdk/utils/h;->d(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/j$1;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v2, v1}, Lcom/applovin/impl/sdk/utils/h;->c(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/j$1;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v2, v1}, Lcom/applovin/impl/sdk/utils/h;->e(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V
    :try_end_84
    .catch Lorg/json/JSONException; {:try_start_70 .. :try_end_84} :catch_55

    :cond_84
    :goto_84
    iget-object v0, p0, Lcom/applovin/impl/sdk/d/j$1;->c:Lcom/applovin/impl/sdk/d/j;

    invoke-static {v0}, Lcom/applovin/impl/sdk/d/j;->b(Lcom/applovin/impl/sdk/d/j;)Lcom/applovin/sdk/AppLovinPostbackListener;

    move-result-object v0

    if-eqz v0, :cond_97

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/j$1;->c:Lcom/applovin/impl/sdk/d/j;

    invoke-static {v0}, Lcom/applovin/impl/sdk/d/j;->b(Lcom/applovin/impl/sdk/d/j;)Lcom/applovin/sdk/AppLovinPostbackListener;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/j$1;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/applovin/sdk/AppLovinPostbackListener;->onPostbackSuccess(Ljava/lang/String;)V

    :cond_97
    iget-object v0, p0, Lcom/applovin/impl/sdk/d/j$1;->c:Lcom/applovin/impl/sdk/d/j;

    invoke-static {v0}, Lcom/applovin/impl/sdk/d/j;->a(Lcom/applovin/impl/sdk/d/j;)Lcom/applovin/impl/sdk/network/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/network/g;->q()Z

    move-result v0

    if-eqz v0, :cond_b8

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/j$1;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->ad()Lcom/applovin/impl/sdk/f;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/j$1;->c:Lcom/applovin/impl/sdk/d/j;

    invoke-static {v1}, Lcom/applovin/impl/sdk/d/j;->a(Lcom/applovin/impl/sdk/d/j;)Lcom/applovin/impl/sdk/network/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/network/g;->r()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/j$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p2, p1}, Lcom/applovin/impl/sdk/f;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_b8
    return-void
.end method
