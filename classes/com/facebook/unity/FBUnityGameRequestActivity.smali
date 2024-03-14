.class public Lcom/facebook/unity/FBUnityGameRequestActivity;
.super Lcom/facebook/unity/BaseActivity;
.source "FBUnityGameRequestActivity.java"


# static fields
.field public static final GAME_REQUEST_PARAMS:Ljava/lang/String; = "game_request_params"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Lcom/facebook/unity/BaseActivity;-><init>()V

    return-void
.end method

.method private showDialog()V
    .registers 6

    .line 47
    invoke-virtual {p0}, Lcom/facebook/unity/FBUnityGameRequestActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "game_request_params"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 48
    new-instance v1, Lcom/facebook/unity/UnityMessage;

    const-string v2, "OnAppRequestsComplete"

    invoke-direct {v1, v2}, Lcom/facebook/unity/UnityMessage;-><init>(Ljava/lang/String;)V

    const-string v2, "callback_id"

    .line 50
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 51
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/facebook/unity/UnityMessage;->put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;

    .line 54
    :cond_20
    new-instance v2, Lcom/facebook/share/model/GameRequestContent$Builder;

    invoke-direct {v2}, Lcom/facebook/share/model/GameRequestContent$Builder;-><init>()V

    const-string v3, "message"

    .line 55
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 56
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/share/model/GameRequestContent$Builder;->setMessage(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    :cond_34
    const-string v3, "action_type"

    .line 59
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_60

    .line 60
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 63
    :try_start_40
    invoke-static {v3}, Lcom/facebook/share/model/GameRequestContent$ActionType;->valueOf(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$ActionType;

    move-result-object v4

    .line 64
    invoke-virtual {v2, v4}, Lcom/facebook/share/model/GameRequestContent$Builder;->setActionType(Lcom/facebook/share/model/GameRequestContent$ActionType;)Lcom/facebook/share/model/GameRequestContent$Builder;
    :try_end_47
    .catch Ljava/lang/IllegalArgumentException; {:try_start_40 .. :try_end_47} :catch_48

    goto :goto_60

    .line 66
    :catch_48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown action type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/unity/UnityMessage;->sendError(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/facebook/unity/FBUnityGameRequestActivity;->finish()V

    return-void

    :cond_60
    :goto_60
    const-string v3, "object_id"

    .line 72
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6f

    .line 73
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/share/model/GameRequestContent$Builder;->setObjectId(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    :cond_6f
    const-string v3, "to"

    .line 77
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_88

    .line 78
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    .line 79
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/share/model/GameRequestContent$Builder;->setRecipients(Ljava/util/List;)Lcom/facebook/share/model/GameRequestContent$Builder;

    :cond_88
    const-string v3, "filters"

    .line 82
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ba

    .line 83
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 85
    :try_start_9a
    invoke-static {v3}, Lcom/facebook/share/model/GameRequestContent$Filters;->valueOf(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Filters;

    move-result-object v4

    .line 86
    invoke-virtual {v2, v4}, Lcom/facebook/share/model/GameRequestContent$Builder;->setFilters(Lcom/facebook/share/model/GameRequestContent$Filters;)Lcom/facebook/share/model/GameRequestContent$Builder;
    :try_end_a1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9a .. :try_end_a1} :catch_a2

    goto :goto_ba

    .line 88
    :catch_a2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported filter type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/unity/UnityMessage;->sendError(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/facebook/unity/FBUnityGameRequestActivity;->finish()V

    return-void

    :cond_ba
    :goto_ba
    const-string v3, "data"

    .line 94
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c9

    .line 95
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/share/model/GameRequestContent$Builder;->setData(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    :cond_c9
    const-string v3, "title"

    .line 98
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d8

    .line 99
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/share/model/GameRequestContent$Builder;->setTitle(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    .line 102
    :cond_d8
    invoke-virtual {v2}, Lcom/facebook/share/model/GameRequestContent$Builder;->build()Lcom/facebook/share/model/GameRequestContent;

    move-result-object v0

    .line 105
    new-instance v2, Lcom/facebook/share/widget/GameRequestDialog;

    invoke-direct {v2, p0}, Lcom/facebook/share/widget/GameRequestDialog;-><init>(Landroid/app/Activity;)V

    .line 106
    iget-object v3, p0, Lcom/facebook/unity/FBUnityGameRequestActivity;->mCallbackManager:Lcom/facebook/CallbackManager;

    new-instance v4, Lcom/facebook/unity/FBUnityGameRequestActivity$1;

    invoke-direct {v4, p0, v1}, Lcom/facebook/unity/FBUnityGameRequestActivity$1;-><init>(Lcom/facebook/unity/FBUnityGameRequestActivity;Lcom/facebook/unity/UnityMessage;)V

    invoke-virtual {v2, v3, v4}, Lcom/facebook/share/widget/GameRequestDialog;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 129
    :try_start_eb
    invoke-virtual {v2, v0}, Lcom/facebook/share/widget/GameRequestDialog;->show(Ljava/lang/Object;)V
    :try_end_ee
    .catch Ljava/lang/IllegalArgumentException; {:try_start_eb .. :try_end_ee} :catch_ef

    goto :goto_10b

    :catch_ef
    move-exception v0

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected exception encountered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/unity/UnityMessage;->sendError(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/facebook/unity/FBUnityGameRequestActivity;->finish()V

    :goto_10b
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 39
    invoke-super {p0, p1}, Lcom/facebook/unity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_8

    .line 42
    invoke-direct {p0}, Lcom/facebook/unity/FBUnityGameRequestActivity;->showDialog()V

    :cond_8
    return-void
.end method
