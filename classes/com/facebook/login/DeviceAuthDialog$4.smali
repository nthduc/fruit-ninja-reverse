.class Lcom/facebook/login/DeviceAuthDialog$4;
.super Ljava/lang/Object;
.source "DeviceAuthDialog.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/DeviceAuthDialog;->getPollRequest()Lcom/facebook/GraphRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/login/DeviceAuthDialog;


# direct methods
.method constructor <init>(Lcom/facebook/login/DeviceAuthDialog;)V
    .registers 2

    .line 292
    iput-object p1, p0, Lcom/facebook/login/DeviceAuthDialog$4;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .registers 7

    .line 296
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog$4;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    # getter for: Lcom/facebook/login/DeviceAuthDialog;->completed:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/facebook/login/DeviceAuthDialog;->access$300(Lcom/facebook/login/DeviceAuthDialog;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    .line 300
    :cond_d
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    if-eqz v0, :cond_66

    .line 304
    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->getSubErrorCode()I

    move-result v0

    const v1, 0x149620

    if-eq v0, v1, :cond_39

    packed-switch v0, :pswitch_data_96

    .line 332
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog$4;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->getException()Lcom/facebook/FacebookException;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/login/DeviceAuthDialog;->onError(Lcom/facebook/FacebookException;)V

    goto :goto_65

    .line 327
    :pswitch_2d
    iget-object p1, p0, Lcom/facebook/login/DeviceAuthDialog$4;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    invoke-virtual {p1}, Lcom/facebook/login/DeviceAuthDialog;->onCancel()V

    goto :goto_65

    .line 309
    :pswitch_33
    iget-object p1, p0, Lcom/facebook/login/DeviceAuthDialog$4;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    # invokes: Lcom/facebook/login/DeviceAuthDialog;->schedulePoll()V
    invoke-static {p1}, Lcom/facebook/login/DeviceAuthDialog;->access$400(Lcom/facebook/login/DeviceAuthDialog;)V

    goto :goto_65

    .line 314
    :cond_39
    iget-object p1, p0, Lcom/facebook/login/DeviceAuthDialog$4;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    # getter for: Lcom/facebook/login/DeviceAuthDialog;->currentRequestState:Lcom/facebook/login/DeviceAuthDialog$RequestState;
    invoke-static {p1}, Lcom/facebook/login/DeviceAuthDialog;->access$500(Lcom/facebook/login/DeviceAuthDialog;)Lcom/facebook/login/DeviceAuthDialog$RequestState;

    move-result-object p1

    if-eqz p1, :cond_4e

    .line 315
    iget-object p1, p0, Lcom/facebook/login/DeviceAuthDialog$4;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    .line 316
    # getter for: Lcom/facebook/login/DeviceAuthDialog;->currentRequestState:Lcom/facebook/login/DeviceAuthDialog$RequestState;
    invoke-static {p1}, Lcom/facebook/login/DeviceAuthDialog;->access$500(Lcom/facebook/login/DeviceAuthDialog;)Lcom/facebook/login/DeviceAuthDialog$RequestState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->getUserCode()Ljava/lang/String;

    move-result-object p1

    .line 315
    invoke-static {p1}, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->cleanUpAdvertisementService(Ljava/lang/String;)V

    .line 318
    :cond_4e
    iget-object p1, p0, Lcom/facebook/login/DeviceAuthDialog$4;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    # getter for: Lcom/facebook/login/DeviceAuthDialog;->mRequest:Lcom/facebook/login/LoginClient$Request;
    invoke-static {p1}, Lcom/facebook/login/DeviceAuthDialog;->access$600(Lcom/facebook/login/DeviceAuthDialog;)Lcom/facebook/login/LoginClient$Request;

    move-result-object p1

    if-eqz p1, :cond_60

    .line 319
    iget-object p1, p0, Lcom/facebook/login/DeviceAuthDialog$4;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    # getter for: Lcom/facebook/login/DeviceAuthDialog;->mRequest:Lcom/facebook/login/LoginClient$Request;
    invoke-static {p1}, Lcom/facebook/login/DeviceAuthDialog;->access$600(Lcom/facebook/login/DeviceAuthDialog;)Lcom/facebook/login/LoginClient$Request;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/login/DeviceAuthDialog;->startLogin(Lcom/facebook/login/LoginClient$Request;)V

    goto :goto_65

    .line 321
    :cond_60
    iget-object p1, p0, Lcom/facebook/login/DeviceAuthDialog$4;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    invoke-virtual {p1}, Lcom/facebook/login/DeviceAuthDialog;->onCancel()V

    :goto_65
    return-void

    .line 340
    :cond_66
    :try_start_66
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    .line 341
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog$4;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    const-string v1, "access_token"

    .line 342
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "expires_in"

    .line 343
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "data_access_expiration_time"

    .line 344
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 341
    # invokes: Lcom/facebook/login/DeviceAuthDialog;->onSuccess(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V
    invoke-static {v0, v1, v2, p1}, Lcom/facebook/login/DeviceAuthDialog;->access$700(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V
    :try_end_89
    .catch Lorg/json/JSONException; {:try_start_66 .. :try_end_89} :catch_8a

    goto :goto_95

    :catch_8a
    move-exception p1

    .line 346
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog$4;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    new-instance v1, Lcom/facebook/FacebookException;

    invoke-direct {v1, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/facebook/login/DeviceAuthDialog;->onError(Lcom/facebook/FacebookException;)V

    :goto_95
    return-void

    :pswitch_data_96
    .packed-switch 0x149634
        :pswitch_33
        :pswitch_2d
        :pswitch_33
    .end packed-switch
.end method
