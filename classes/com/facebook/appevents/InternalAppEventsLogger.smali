.class public Lcom/facebook/appevents/InternalAppEventsLogger;
.super Ljava/lang/Object;
.source "InternalAppEventsLogger.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private loggerImpl:Lcom/facebook/appevents/AppEventsLoggerImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 45
    new-instance v0, Lcom/facebook/appevents/AppEventsLoggerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Lcom/facebook/appevents/AppEventsLoggerImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    invoke-direct {p0, v0}, Lcom/facebook/appevents/InternalAppEventsLogger;-><init>(Lcom/facebook/appevents/AppEventsLoggerImpl;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 49
    new-instance v0, Lcom/facebook/appevents/AppEventsLoggerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/facebook/appevents/AppEventsLoggerImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    invoke-direct {p0, v0}, Lcom/facebook/appevents/InternalAppEventsLogger;-><init>(Lcom/facebook/appevents/AppEventsLoggerImpl;)V

    return-void
.end method

.method constructor <init>(Lcom/facebook/appevents/AppEventsLoggerImpl;)V
    .registers 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/facebook/appevents/InternalAppEventsLogger;->loggerImpl:Lcom/facebook/appevents/AppEventsLoggerImpl;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/AccessToken;)V
    .registers 5

    .line 54
    new-instance v0, Lcom/facebook/appevents/AppEventsLoggerImpl;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/appevents/AppEventsLoggerImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    invoke-direct {p0, v0}, Lcom/facebook/appevents/InternalAppEventsLogger;-><init>(Lcom/facebook/appevents/AppEventsLoggerImpl;)V

    return-void
.end method

.method static getAnalyticsExecutor()Ljava/util/concurrent/Executor;
    .registers 1

    .line 119
    invoke-static {}, Lcom/facebook/appevents/AppEventsLoggerImpl;->getAnalyticsExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method public static getFlushBehavior()Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;
    .registers 1

    .line 111
    invoke-static {}, Lcom/facebook/appevents/AppEventsLoggerImpl;->getFlushBehavior()Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    move-result-object v0

    return-object v0
.end method

.method static getPushNotificationsRegistrationId()Ljava/lang/String;
    .registers 1

    .line 123
    invoke-static {}, Lcom/facebook/appevents/AppEventsLoggerImpl;->getPushNotificationsRegistrationId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setInternalUserData(Ljava/util/Map;)V
    .registers 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->GROUP_ID:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 132
    invoke-static {p0}, Lcom/facebook/appevents/UserDataStore;->setInternalUd(Ljava/util/Map;)V

    return-void
.end method

.method public static setUserData(Landroid/os/Bundle;)V
    .registers 1

    .line 127
    invoke-static {p0}, Lcom/facebook/appevents/UserDataStore;->setUserDataAndHash(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public flush()V
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/facebook/appevents/InternalAppEventsLogger;->loggerImpl:Lcom/facebook/appevents/AppEventsLoggerImpl;

    invoke-virtual {v0}, Lcom/facebook/appevents/AppEventsLoggerImpl;->flush()V

    return-void
.end method

.method public logEvent(Ljava/lang/String;DLandroid/os/Bundle;)V
    .registers 6

    .line 69
    invoke-static {}, Lcom/facebook/FacebookSdk;->getAutoLogAppEventsEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 70
    iget-object v0, p0, Lcom/facebook/appevents/InternalAppEventsLogger;->loggerImpl:Lcom/facebook/appevents/AppEventsLoggerImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/appevents/AppEventsLoggerImpl;->logEvent(Ljava/lang/String;DLandroid/os/Bundle;)V

    :cond_b
    return-void
.end method

.method public logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    .line 63
    invoke-static {}, Lcom/facebook/FacebookSdk;->getAutoLogAppEventsEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 64
    iget-object v0, p0, Lcom/facebook/appevents/InternalAppEventsLogger;->loggerImpl:Lcom/facebook/appevents/AppEventsLoggerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/appevents/AppEventsLoggerImpl;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_b
    return-void
.end method

.method public logEventFromSE(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 82
    iget-object v0, p0, Lcom/facebook/appevents/InternalAppEventsLogger;->loggerImpl:Lcom/facebook/appevents/AppEventsLoggerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/appevents/AppEventsLoggerImpl;->logEventFromSE(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public logEventImplicitly(Ljava/lang/String;)V
    .registers 4

    .line 93
    invoke-static {}, Lcom/facebook/FacebookSdk;->getAutoLogAppEventsEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 94
    iget-object v0, p0, Lcom/facebook/appevents/InternalAppEventsLogger;->loggerImpl:Lcom/facebook/appevents/AppEventsLoggerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Lcom/facebook/appevents/AppEventsLoggerImpl;->logEventImplicitly(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    :cond_c
    return-void
.end method

.method public logEventImplicitly(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    .line 105
    invoke-static {}, Lcom/facebook/FacebookSdk;->getAutoLogAppEventsEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 106
    iget-object v0, p0, Lcom/facebook/appevents/InternalAppEventsLogger;->loggerImpl:Lcom/facebook/appevents/AppEventsLoggerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/facebook/appevents/AppEventsLoggerImpl;->logEventImplicitly(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    :cond_c
    return-void
.end method

.method public logEventImplicitly(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V
    .registers 5

    .line 99
    invoke-static {}, Lcom/facebook/FacebookSdk;->getAutoLogAppEventsEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 100
    iget-object v0, p0, Lcom/facebook/appevents/InternalAppEventsLogger;->loggerImpl:Lcom/facebook/appevents/AppEventsLoggerImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/appevents/AppEventsLoggerImpl;->logEventImplicitly(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    :cond_b
    return-void
.end method

.method public logEventImplicitly(Ljava/lang/String;Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V
    .registers 6

    .line 87
    invoke-static {}, Lcom/facebook/FacebookSdk;->getAutoLogAppEventsEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 88
    iget-object v0, p0, Lcom/facebook/appevents/InternalAppEventsLogger;->loggerImpl:Lcom/facebook/appevents/AppEventsLoggerImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/appevents/AppEventsLoggerImpl;->logEventImplicitly(Ljava/lang/String;Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V

    :cond_b
    return-void
.end method

.method public logPurchaseImplicitly(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V
    .registers 5

    .line 76
    invoke-static {}, Lcom/facebook/FacebookSdk;->getAutoLogAppEventsEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 77
    iget-object v0, p0, Lcom/facebook/appevents/InternalAppEventsLogger;->loggerImpl:Lcom/facebook/appevents/AppEventsLoggerImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/appevents/AppEventsLoggerImpl;->logPurchaseImplicitly(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V

    :cond_b
    return-void
.end method
