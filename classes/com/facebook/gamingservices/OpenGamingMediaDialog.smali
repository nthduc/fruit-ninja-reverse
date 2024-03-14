.class public Lcom/facebook/gamingservices/OpenGamingMediaDialog;
.super Ljava/lang/Object;
.source "OpenGamingMediaDialog.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# instance fields
.field private context:Landroid/content/Context;

.field private nestedCallback:Lcom/facebook/GraphRequest$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/facebook/gamingservices/OpenGamingMediaDialog;-><init>(Landroid/content/Context;Lcom/facebook/GraphRequest$Callback;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/GraphRequest$Callback;)V
    .registers 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/facebook/gamingservices/OpenGamingMediaDialog;->context:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/facebook/gamingservices/OpenGamingMediaDialog;->nestedCallback:Lcom/facebook/GraphRequest$Callback;

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .registers 4

    .line 49
    iget-object v0, p0, Lcom/facebook/gamingservices/OpenGamingMediaDialog;->nestedCallback:Lcom/facebook/GraphRequest$Callback;

    if-eqz v0, :cond_7

    .line 50
    invoke-interface {v0, p1}, Lcom/facebook/GraphRequest$Callback;->onCompleted(Lcom/facebook/GraphResponse;)V

    :cond_7
    if-eqz p1, :cond_3e

    .line 53
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    if-eqz v0, :cond_10

    goto :goto_3e

    .line 57
    :cond_10
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "id"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3e

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://fb.gg/me/media_asset/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 60
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 61
    iget-object p1, p0, Lcom/facebook/gamingservices/OpenGamingMediaDialog;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_3e
    :goto_3e
    return-void
.end method
