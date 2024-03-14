.class Lcom/adcolony/sdk/m0$c;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/m0;->a(ZLcom/adcolony/sdk/x;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lcom/adcolony/sdk/m0;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/m0;Lorg/json/JSONObject;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/adcolony/sdk/m0$c;->b:Lcom/adcolony/sdk/m0;

    iput-object p2, p0, Lcom/adcolony/sdk/m0$c;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .registers 9

    .line 1
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v1

    .line 3
    sget-object v2, Landroid/webkit/ConsoleMessage$MessageLevel;->ERROR:Landroid/webkit/ConsoleMessage$MessageLevel;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v2, :cond_10

    const/4 v2, 0x1

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    .line 7
    :goto_11
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Viewport argument key \"shrink-to-fit\" not recognized and ignored"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_29

    .line 8
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Viewport target-densitydpi is not supported."

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2a

    :cond_29
    const/4 v3, 0x1

    :cond_2a
    const-string v5, "ADC3_update is not defined"

    .line 9
    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3a

    const-string v5, "NativeLayer.dispatch_messages is not a function"

    .line 10
    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 12
    :cond_3a
    iget-object v1, p0, Lcom/adcolony/sdk/m0$c;->b:Lcom/adcolony/sdk/m0;

    iget-object v5, p0, Lcom/adcolony/sdk/m0$c;->a:Lorg/json/JSONObject;

    const-string v6, "Unable to communicate with AdColony. Please ensure that you have added an exception for our Javascript interface in your ProGuard configuration and that you do not have a faulty proxy enabled on your device."

    invoke-static {v1, v5, v6}, Lcom/adcolony/sdk/m0;->a(Lcom/adcolony/sdk/m0;Lorg/json/JSONObject;Ljava/lang/String;)V

    :cond_43
    if-nez v3, :cond_9c

    .line 17
    sget-object v1, Landroid/webkit/ConsoleMessage$MessageLevel;->WARNING:Landroid/webkit/ConsoleMessage$MessageLevel;

    if-eq v0, v1, :cond_4b

    if-eqz v2, :cond_9c

    :cond_4b
    const/4 v0, 0x0

    .line 20
    iget-object v1, p0, Lcom/adcolony/sdk/m0$c;->b:Lcom/adcolony/sdk/m0;

    invoke-static {v1}, Lcom/adcolony/sdk/m0;->a(Lcom/adcolony/sdk/m0;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6c

    .line 21
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/h;->b()Lcom/adcolony/sdk/d;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/adcolony/sdk/d;->a()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/m0$c;->b:Lcom/adcolony/sdk/m0;

    invoke-static {v1}, Lcom/adcolony/sdk/m0;->a(Lcom/adcolony/sdk/m0;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/AdColonyInterstitial;

    :cond_6c
    if-nez v0, :cond_71

    const-string v0, "unknown"

    goto :goto_75

    .line 24
    :cond_71
    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyInterstitial;->a()Ljava/lang/String;

    move-result-object v0

    .line 25
    :goto_75
    new-instance v1, Lcom/adcolony/sdk/u$a;

    invoke-direct {v1}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string v3, "onConsoleMessage: "

    .line 26
    invoke-virtual {v1, v3}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p1

    const-string v1, " with ad id: "

    .line 27
    invoke-virtual {p1, v1}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p1

    .line 28
    invoke-virtual {p1, v0}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p1

    if-eqz v2, :cond_97

    sget-object v0, Lcom/adcolony/sdk/u;->j:Lcom/adcolony/sdk/u;

    goto :goto_99

    :cond_97
    sget-object v0, Lcom/adcolony/sdk/u;->h:Lcom/adcolony/sdk/u;

    .line 29
    :goto_99
    invoke-virtual {p1, v0}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    :cond_9c
    return v4
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 5

    .line 1
    invoke-virtual {p4}, Landroid/webkit/JsResult;->confirm()V

    const/4 p1, 0x1

    return p1
.end method
