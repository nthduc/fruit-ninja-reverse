.class abstract Lcom/facebook/login/LoginMethodHandler;
.super Ljava/lang/Object;
.source "LoginMethodHandler.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected loginClient:Lcom/facebook/login/LoginClient;

.field methodLoggingExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {p1}, Lcom/facebook/internal/Utility;->readStringMapFromParcel(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/login/LoginMethodHandler;->methodLoggingExtras:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Lcom/facebook/login/LoginClient;)V
    .registers 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/facebook/login/LoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    return-void
.end method

.method static createAccessTokenFromNativeLogin(Landroid/os/Bundle;Lcom/facebook/AccessTokenSource;Ljava/lang/String;)Lcom/facebook/AccessToken;
    .registers 20

    move-object/from16 v0, p0

    .line 118
    new-instance v1, Ljava/util/Date;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    const-string v4, "com.facebook.platform.extra.EXPIRES_SECONDS_SINCE_EPOCH"

    .line 119
    invoke-static {v0, v4, v1}, Lcom/facebook/internal/Utility;->getBundleLongAsDate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v13

    const-string v1, "com.facebook.platform.extra.PERMISSIONS"

    .line 121
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    const-string v1, "com.facebook.platform.extra.ACCESS_TOKEN"

    .line 122
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 123
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    const-string v2, "com.facebook.platform.extra.EXTRA_DATA_ACCESS_EXPIRATION_TIME"

    .line 124
    invoke-static {v0, v2, v1}, Lcom/facebook/internal/Utility;->getBundleLongAsDate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v15

    .line 127
    invoke-static {v6}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const/4 v0, 0x0

    return-object v0

    :cond_2e
    const-string v1, "com.facebook.platform.extra.USER_ID"

    .line 131
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "graph_domain"

    .line 132
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 133
    new-instance v0, Lcom/facebook/AccessToken;

    const/4 v10, 0x0

    const/4 v11, 0x0

    new-instance v14, Ljava/util/Date;

    invoke-direct {v14}, Ljava/util/Date;-><init>()V

    move-object v5, v0

    move-object/from16 v7, p2

    move-object/from16 v12, p1

    invoke-direct/range {v5 .. v16}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lcom/facebook/AccessTokenSource;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createAccessTokenFromWebBundle(Ljava/util/Collection;Landroid/os/Bundle;Lcom/facebook/AccessTokenSource;Ljava/lang/String;)Lcom/facebook/AccessToken;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Lcom/facebook/AccessTokenSource;",
            "Ljava/lang/String;",
            ")",
            "Lcom/facebook/AccessToken;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/FacebookException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 153
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    const-string v2, "expires_in"

    invoke-static {v0, v2, v1}, Lcom/facebook/internal/Utility;->getBundleLongAsDate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v11

    const-string v1, "access_token"

    .line 154
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 156
    new-instance v1, Ljava/util/Date;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    const-string v2, "data_access_expiration_time"

    .line 157
    invoke-static {v0, v2, v1}, Lcom/facebook/internal/Utility;->getBundleLongAsDate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v13

    const-string v1, "granted_scopes"

    .line 161
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 162
    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    const-string v3, ","

    if-nez v2, :cond_3d

    .line 163
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v7, v2

    goto :goto_3e

    :cond_3d
    move-object v7, p0

    :goto_3e
    const-string v1, "denied_scopes"

    .line 165
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 167
    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    const/4 v5, 0x0

    if-nez v2, :cond_5a

    .line 168
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v8, v2

    goto :goto_5b

    :cond_5a
    move-object v8, v5

    :goto_5b
    const-string v1, "expired_scopes"

    .line 170
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 172
    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_76

    .line 173
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v9, v2

    goto :goto_77

    :cond_76
    move-object v9, v5

    .line 176
    :goto_77
    invoke-static {v4}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7e

    return-object v5

    :cond_7e
    const-string v1, "graph_domain"

    .line 180
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v1, "signed_request"

    .line 181
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-static {v0}, Lcom/facebook/login/LoginMethodHandler;->getUserIDFromSignedRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 184
    new-instance v0, Lcom/facebook/AccessToken;

    new-instance v12, Ljava/util/Date;

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    move-object v3, v0

    move-object/from16 v5, p3

    move-object/from16 v10, p2

    invoke-direct/range {v3 .. v14}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lcom/facebook/AccessTokenSource;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)V

    return-object v0
.end method

.method static getUserIDFromSignedRequest(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/FacebookException;
        }
    .end annotation

    if-eqz p0, :cond_35

    .line 199
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_35

    :try_start_8
    const-string v0, "\\."

    .line 204
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 205
    array-length v0, p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2d

    const/4 v0, 0x1

    .line 206
    aget-object p0, p0, v0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 207
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 208
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "user_id"

    .line 209
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_2c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_2c} :catch_2d
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_2c} :catch_2d

    return-object p0

    .line 214
    :catch_2d
    :cond_2d
    new-instance p0, Lcom/facebook/FacebookException;

    const-string v0, "Failed to retrieve user_id from signed_request"

    invoke-direct {p0, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 200
    :cond_35
    new-instance p0, Lcom/facebook/FacebookException;

    const-string v0, "Authorization response does not contain the signed_request"

    invoke-direct {p0, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected addLoggingExtra(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 96
    iget-object v0, p0, Lcom/facebook/login/LoginMethodHandler;->methodLoggingExtras:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/login/LoginMethodHandler;->methodLoggingExtras:Ljava/util/Map;

    .line 99
    :cond_b
    iget-object v0, p0, Lcom/facebook/login/LoginMethodHandler;->methodLoggingExtras:Ljava/util/Map;

    if-nez p2, :cond_11

    const/4 p2, 0x0

    goto :goto_15

    :cond_11
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_15
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method cancel()V
    .registers 1

    return-void
.end method

.method protected getClientState(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 84
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "0_auth_logger_id"

    .line 86
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "3_method"

    .line 87
    invoke-virtual {p0}, Lcom/facebook/login/LoginMethodHandler;->getNameForLogging()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    invoke-virtual {p0, v0}, Lcom/facebook/login/LoginMethodHandler;->putChallengeParam(Lorg/json/JSONObject;)V
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_16} :catch_17

    goto :goto_32

    :catch_17
    move-exception p1

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error creating client state json: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "LoginMethodHandler"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :goto_32
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method abstract getNameForLogging()Ljava/lang/String;
.end method

.method protected logWebLoginCompleted(Ljava/lang/String;)V
    .registers 7

    .line 103
    iget-object v0, p0, Lcom/facebook/login/LoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v0}, Lcom/facebook/login/LoginClient;->getPendingRequest()Lcom/facebook/login/LoginClient$Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/login/LoginClient$Request;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    .line 104
    new-instance v1, Lcom/facebook/appevents/InternalAppEventsLogger;

    iget-object v2, p0, Lcom/facebook/login/LoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    .line 105
    invoke-virtual {v2}, Lcom/facebook/login/LoginClient;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/facebook/appevents/InternalAppEventsLogger;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 107
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "fb_web_login_e2e"

    .line 108
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string p1, "fb_web_login_switchback_time"

    .line 109
    invoke-virtual {v2, p1, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "app_id"

    .line 111
    invoke-virtual {v2, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "fb_dialogs_web_login_dialog_complete"

    const/4 v0, 0x0

    .line 113
    invoke-virtual {v1, p1, v0, v2}, Lcom/facebook/appevents/InternalAppEventsLogger;->logEventImplicitly(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    return-void
.end method

.method needsInternetPermission()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method onActivityResult(IILandroid/content/Intent;)Z
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method putChallengeParam(Lorg/json/JSONObject;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    return-void
.end method

.method setLoginClient(Lcom/facebook/login/LoginClient;)V
    .registers 3

    .line 61
    iget-object v0, p0, Lcom/facebook/login/LoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    if-nez v0, :cond_7

    .line 64
    iput-object p1, p0, Lcom/facebook/login/LoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    return-void

    .line 62
    :cond_7
    new-instance p1, Lcom/facebook/FacebookException;

    const-string v0, "Can\'t set LoginClient if it is already set."

    invoke-direct {p1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method abstract tryAuthorize(Lcom/facebook/login/LoginClient$Request;)Z
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 219
    iget-object p2, p0, Lcom/facebook/login/LoginMethodHandler;->methodLoggingExtras:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/facebook/internal/Utility;->writeStringMapToParcel(Landroid/os/Parcel;Ljava/util/Map;)V

    return-void
.end method
