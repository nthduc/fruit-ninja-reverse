.class Lcom/helpshift/HelpshiftUnityAPI$HelpshiftDelegate;
.super Ljava/lang/Object;
.source "HelpshiftUnityAPI.java"

# interfaces
.implements Lcom/helpshift/support/Support$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/HelpshiftUnityAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HelpshiftDelegate"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/helpshift/HelpshiftUnityAPI$1;)V
    .registers 2

    .line 395
    invoke-direct {p0}, Lcom/helpshift/HelpshiftUnityAPI$HelpshiftDelegate;-><init>()V

    return-void
.end method

.method private convertHelpshiftUserModelToMap(Lcom/helpshift/HelpshiftUser;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpshift/HelpshiftUser;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 480
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 481
    invoke-virtual {p1}, Lcom/helpshift/HelpshiftUser;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    const-string v2, "identifier"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    invoke-virtual {p1}, Lcom/helpshift/HelpshiftUser;->getEmail()Ljava/lang/String;

    move-result-object v1

    const-string v2, "email"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    invoke-virtual {p1}, Lcom/helpshift/HelpshiftUser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    invoke-virtual {p1}, Lcom/helpshift/HelpshiftUser;->getAuthToken()Ljava/lang/String;

    move-result-object p1

    const-string v1, "authToken"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public authenticationFailed(Lcom/helpshift/HelpshiftUser;Lcom/helpshift/delegate/AuthenticationFailureReason;)V
    .registers 5

    .line 471
    # invokes: Lcom/helpshift/HelpshiftUnityAPI;->getUnityMessageHandler()Ljava/lang/String;
    invoke-static {}, Lcom/helpshift/HelpshiftUnityAPI;->access$000()Ljava/lang/String;

    move-result-object v0

    .line 473
    invoke-direct {p0, p1}, Lcom/helpshift/HelpshiftUnityAPI$HelpshiftDelegate;->convertHelpshiftUserModelToMap(Lcom/helpshift/HelpshiftUser;)Ljava/util/Map;

    move-result-object p1

    .line 474
    invoke-virtual {p2}, Lcom/helpshift/delegate/AuthenticationFailureReason;->getValue()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "authFailureReason"

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "authenticationFailed"

    invoke-static {v0, p2, p1}, Lcom/helpshift/util/UnityUtils;->sendUnityMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public conversationEnded()V
    .registers 4

    .line 490
    # invokes: Lcom/helpshift/HelpshiftUnityAPI;->getUnityMessageHandler()Ljava/lang/String;
    invoke-static {}, Lcom/helpshift/HelpshiftUnityAPI;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "conversationEnded"

    const-string v2, ""

    .line 491
    invoke-static {v0, v1, v2}, Lcom/helpshift/util/UnityUtils;->sendUnityMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public didReceiveNotification(I)V
    .registers 4

    .line 465
    # invokes: Lcom/helpshift/HelpshiftUnityAPI;->getUnityMessageHandler()Ljava/lang/String;
    invoke-static {}, Lcom/helpshift/HelpshiftUnityAPI;->access$000()Ljava/lang/String;

    move-result-object v0

    .line 466
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "didReceiveNotificationCount"

    invoke-static {v0, v1, p1}, Lcom/helpshift/util/UnityUtils;->sendUnityMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public displayAttachmentFile(Landroid/net/Uri;)V
    .registers 4

    .line 452
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 453
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/helpshift/util/AndroidFileUtil;->getFileExtension(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 454
    # getter for: Lcom/helpshift/HelpshiftUnityAPI;->fileFormats:Ljava/util/ArrayList;
    invoke-static {}, Lcom/helpshift/HelpshiftUnityAPI;->access$200()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_28

    # getter for: Lcom/helpshift/HelpshiftUnityAPI;->fileFormats:Ljava/util/ArrayList;
    invoke-static {}, Lcom/helpshift/HelpshiftUnityAPI;->access$200()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 455
    # invokes: Lcom/helpshift/HelpshiftUnityAPI;->getUnityMessageHandler()Ljava/lang/String;
    invoke-static {}, Lcom/helpshift/HelpshiftUnityAPI;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v1, "displayAttachmentFile"

    .line 456
    invoke-static {p1, v1, v0}, Lcom/helpshift/util/UnityUtils;->sendUnityMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e

    .line 459
    :cond_28
    sget-object p1, Lcom/helpshift/common/exception/PlatformException;->NO_APPS_FOR_OPENING_ATTACHMENT:Lcom/helpshift/common/exception/PlatformException;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/helpshift/support/util/SnackbarUtil;->showSnackbar(Lcom/helpshift/common/exception/ExceptionType;Landroid/view/View;)V

    :goto_2e
    return-void
.end method

.method public displayAttachmentFile(Ljava/io/File;)V
    .registers 4

    .line 438
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 439
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    .line 440
    invoke-static {p1}, Lcom/helpshift/util/AndroidFileUtil;->getFileExtensionFromFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 441
    # getter for: Lcom/helpshift/HelpshiftUnityAPI;->fileFormats:Ljava/util/ArrayList;
    invoke-static {}, Lcom/helpshift/HelpshiftUnityAPI;->access$200()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_28

    # getter for: Lcom/helpshift/HelpshiftUnityAPI;->fileFormats:Ljava/util/ArrayList;
    invoke-static {}, Lcom/helpshift/HelpshiftUnityAPI;->access$200()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 442
    # invokes: Lcom/helpshift/HelpshiftUnityAPI;->getUnityMessageHandler()Ljava/lang/String;
    invoke-static {}, Lcom/helpshift/HelpshiftUnityAPI;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v1, "displayAttachmentFile"

    .line 443
    invoke-static {p1, v1, v0}, Lcom/helpshift/util/UnityUtils;->sendUnityMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e

    .line 446
    :cond_28
    sget-object p1, Lcom/helpshift/common/exception/PlatformException;->NO_APPS_FOR_OPENING_ATTACHMENT:Lcom/helpshift/common/exception/PlatformException;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/helpshift/support/util/SnackbarUtil;->showSnackbar(Lcom/helpshift/common/exception/ExceptionType;Landroid/view/View;)V

    :goto_2e
    return-void
.end method

.method public newConversationStarted(Ljava/lang/String;)V
    .registers 4

    .line 410
    # invokes: Lcom/helpshift/HelpshiftUnityAPI;->getUnityMessageHandler()Ljava/lang/String;
    invoke-static {}, Lcom/helpshift/HelpshiftUnityAPI;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "newConversationStarted"

    .line 411
    invoke-static {v0, v1, p1}, Lcom/helpshift/util/UnityUtils;->sendUnityMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sessionBegan()V
    .registers 4

    .line 398
    # invokes: Lcom/helpshift/HelpshiftUnityAPI;->getUnityMessageHandler()Ljava/lang/String;
    invoke-static {}, Lcom/helpshift/HelpshiftUnityAPI;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "helpshiftSessionBegan"

    const-string v2, ""

    .line 399
    invoke-static {v0, v1, v2}, Lcom/helpshift/util/UnityUtils;->sendUnityMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sessionEnded()V
    .registers 4

    .line 404
    # invokes: Lcom/helpshift/HelpshiftUnityAPI;->getUnityMessageHandler()Ljava/lang/String;
    invoke-static {}, Lcom/helpshift/HelpshiftUnityAPI;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "helpshiftSessionEnded"

    const-string v2, ""

    .line 405
    invoke-static {v0, v1, v2}, Lcom/helpshift/util/UnityUtils;->sendUnityMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public userClickOnAction(Lcom/helpshift/conversation/activeconversation/model/ActionType;Ljava/lang/String;)V
    .registers 5

    .line 496
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 497
    invoke-virtual {p1}, Lcom/helpshift/conversation/activeconversation/model/ActionType;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string v1, "actionType"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "actionData"

    .line 498
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    # invokes: Lcom/helpshift/HelpshiftUnityAPI;->getUnityMessageHandler()Ljava/lang/String;
    invoke-static {}, Lcom/helpshift/HelpshiftUnityAPI;->access$000()Ljava/lang/String;

    move-result-object p1

    .line 501
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 502
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "userClickOnAction"

    .line 501
    invoke-static {p1, v0, p2}, Lcom/helpshift/util/UnityUtils;->sendUnityMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public userCompletedCustomerSatisfactionSurvey(ILjava/lang/String;)V
    .registers 6

    .line 422
    # invokes: Lcom/helpshift/HelpshiftUnityAPI;->getUnityMessageHandler()Ljava/lang/String;
    invoke-static {}, Lcom/helpshift/HelpshiftUnityAPI;->access$000()Ljava/lang/String;

    move-result-object v0

    .line 423
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 425
    :try_start_a
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "rating"

    .line 426
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "feedback"

    .line 427
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "userCompletedCustomerSatisfactionSurvey"

    .line 428
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/helpshift/util/UnityUtils;->sendUnityMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_22} :catch_23

    goto :goto_2b

    :catch_23
    move-exception p1

    const-string p2, "Helpshift_UnityAPI"

    const-string v0, "Error in userCompletedCustomerSatisfactionSurvey"

    .line 431
    invoke-static {p2, v0, p1}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2b
    :goto_2b
    return-void
.end method

.method public userRepliedToConversation(Ljava/lang/String;)V
    .registers 4

    .line 416
    # invokes: Lcom/helpshift/HelpshiftUnityAPI;->getUnityMessageHandler()Ljava/lang/String;
    invoke-static {}, Lcom/helpshift/HelpshiftUnityAPI;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "userRepliedToConversation"

    .line 417
    invoke-static {v0, v1, p1}, Lcom/helpshift/util/UnityUtils;->sendUnityMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
