.class public Lcom/adcolony/sdk/AdColonyAdOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Z

.field b:Z

.field c:Lcom/adcolony/sdk/AdColonyUserMetadata;

.field d:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-static {}, Lcom/adcolony/sdk/s;->b()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/AdColonyAdOptions;->d:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public enableConfirmationDialog(Z)Lcom/adcolony/sdk/AdColonyAdOptions;
    .registers 4

    .line 1
    iput-boolean p1, p0, Lcom/adcolony/sdk/AdColonyAdOptions;->a:Z

    .line 2
    iget-object p1, p0, Lcom/adcolony/sdk/AdColonyAdOptions;->d:Lorg/json/JSONObject;

    const-string v0, "confirmation_enabled"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    return-object p0
.end method

.method public enableResultsDialog(Z)Lcom/adcolony/sdk/AdColonyAdOptions;
    .registers 4

    .line 1
    iput-boolean p1, p0, Lcom/adcolony/sdk/AdColonyAdOptions;->b:Z

    .line 2
    iget-object p1, p0, Lcom/adcolony/sdk/AdColonyAdOptions;->d:Lorg/json/JSONObject;

    const-string v0, "results_enabled"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    return-object p0
.end method

.method public getOption(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAdOptions;->d:Lorg/json/JSONObject;

    invoke-static {v0, p1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getUserMetadata()Lcom/adcolony/sdk/AdColonyUserMetadata;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAdOptions;->c:Lcom/adcolony/sdk/AdColonyUserMetadata;

    return-object v0
.end method

.method public setOption(Ljava/lang/String;D)Lcom/adcolony/sdk/AdColonyAdOptions;
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    invoke-static {p1}, Lcom/adcolony/sdk/k0;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAdOptions;->d:Lorg/json/JSONObject;

    invoke-static {v0, p1, p2, p3}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;D)Z

    :cond_b
    return-object p0
.end method

.method public setOption(Ljava/lang/String;Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyAdOptions;
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_7

    .line 5
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAdOptions;->d:Lorg/json/JSONObject;

    invoke-static {v0, p1, p2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_7
    return-object p0
.end method

.method public setOption(Ljava/lang/String;Z)Lcom/adcolony/sdk/AdColonyAdOptions;
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lcom/adcolony/sdk/k0;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAdOptions;->d:Lorg/json/JSONObject;

    invoke-static {v0, p1, p2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    :cond_b
    return-object p0
.end method

.method public setUserMetadata(Lcom/adcolony/sdk/AdColonyUserMetadata;)Lcom/adcolony/sdk/AdColonyAdOptions;
    .registers 4
    .param p1    # Lcom/adcolony/sdk/AdColonyUserMetadata;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/adcolony/sdk/AdColonyAdOptions;->c:Lcom/adcolony/sdk/AdColonyUserMetadata;

    .line 2
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAdOptions;->d:Lorg/json/JSONObject;

    iget-object p1, p1, Lcom/adcolony/sdk/AdColonyUserMetadata;->b:Lorg/json/JSONObject;

    const-string v1, "user_metadata"

    invoke-static {v0, v1, p1}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Z

    return-object p0
.end method
