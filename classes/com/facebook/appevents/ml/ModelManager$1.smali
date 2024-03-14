.class final Lcom/facebook/appevents/ml/ModelManager$1;
.super Ljava/lang/Object;
.source "ModelManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/ml/ModelManager;->enable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    const-string v0, "model_request_timestamp"

    const-string v1, "models"

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    return-void

    .line 120
    :cond_b
    :try_start_b
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.facebook.internal.MODEL_STORE"

    const/4 v4, 0x0

    .line 121
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v3, 0x0

    .line 122
    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2a

    .line 124
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_24

    goto :goto_2a

    :cond_24
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_2f

    :cond_2a
    :goto_2a
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :goto_2f
    const-wide/16 v5, 0x0

    .line 125
    invoke-interface {v2, v0, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 127
    sget-object v3, Lcom/facebook/internal/FeatureManager$Feature;->ModelRequest:Lcom/facebook/internal/FeatureManager$Feature;

    invoke-static {v3}, Lcom/facebook/internal/FeatureManager;->isEnabled(Lcom/facebook/internal/FeatureManager$Feature;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 128
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-eqz v3, :cond_49

    .line 129
    invoke-static {v5, v6}, Lcom/facebook/appevents/ml/ModelManager;->access$000(J)Z

    move-result v3

    if-nez v3, :cond_67

    .line 130
    :cond_49
    invoke-static {}, Lcom/facebook/appevents/ml/ModelManager;->access$100()Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_50

    return-void

    .line 135
    :cond_50
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 136
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 138
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 141
    :cond_67
    invoke-static {v4}, Lcom/facebook/appevents/ml/ModelManager;->access$200(Lorg/json/JSONObject;)V

    .line 142
    invoke-static {}, Lcom/facebook/appevents/ml/ModelManager;->access$300()V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_6d} :catch_72
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_6d} :catch_6e

    goto :goto_72

    :catch_6e
    move-exception v0

    .line 146
    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :catch_72
    :goto_72
    return-void
.end method
