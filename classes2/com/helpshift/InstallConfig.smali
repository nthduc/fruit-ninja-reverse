.class public Lcom/helpshift/InstallConfig;
.super Ljava/lang/Object;
.source "InstallConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/InstallConfig$Builder;
    }
.end annotation


# instance fields
.field private final disableErrorReporting:Z

.field private final enableDefaultFallbackLanguage:Z

.field private final enableInAppNotification:Z

.field private final enableInboxPolling:Z

.field private final enableLogging:Z

.field private final extras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final fontPath:Ljava/lang/String;

.field private final largeNotificationIcon:I

.field private final notificationIcon:I

.field private final notificationSound:I

.field private final screenOrientation:I

.field private final supportNotificationChannelId:Ljava/lang/String;


# direct methods
.method constructor <init>(ZIIIZZLjava/lang/String;ZZILjava/lang/String;Ljava/util/Map;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZIIIZZ",
            "Ljava/lang/String;",
            "ZZI",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean p1, p0, Lcom/helpshift/InstallConfig;->enableInAppNotification:Z

    .line 42
    iput p2, p0, Lcom/helpshift/InstallConfig;->notificationIcon:I

    .line 43
    iput p3, p0, Lcom/helpshift/InstallConfig;->largeNotificationIcon:I

    .line 44
    iput p4, p0, Lcom/helpshift/InstallConfig;->notificationSound:I

    .line 45
    iput-boolean p5, p0, Lcom/helpshift/InstallConfig;->enableDefaultFallbackLanguage:Z

    .line 46
    iput-boolean p6, p0, Lcom/helpshift/InstallConfig;->enableInboxPolling:Z

    .line 47
    iput-object p7, p0, Lcom/helpshift/InstallConfig;->fontPath:Ljava/lang/String;

    .line 48
    iput p10, p0, Lcom/helpshift/InstallConfig;->screenOrientation:I

    .line 49
    iput-object p12, p0, Lcom/helpshift/InstallConfig;->extras:Ljava/util/Map;

    .line 50
    iput-boolean p8, p0, Lcom/helpshift/InstallConfig;->enableLogging:Z

    .line 51
    iput-boolean p9, p0, Lcom/helpshift/InstallConfig;->disableErrorReporting:Z

    .line 52
    iput-object p11, p0, Lcom/helpshift/InstallConfig;->supportNotificationChannelId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toMap()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 60
    iget-boolean v1, p0, Lcom/helpshift/InstallConfig;->enableInAppNotification:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "enableInAppNotification"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget v1, p0, Lcom/helpshift/InstallConfig;->notificationIcon:I

    if-eqz v1, :cond_1d

    .line 62
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "notificationIcon"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_1d
    iget v1, p0, Lcom/helpshift/InstallConfig;->largeNotificationIcon:I

    if-eqz v1, :cond_2a

    .line 65
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "largeNotificationIcon"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_2a
    iget v1, p0, Lcom/helpshift/InstallConfig;->notificationSound:I

    if-eqz v1, :cond_37

    .line 68
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "notificationSound"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_37
    iget-boolean v1, p0, Lcom/helpshift/InstallConfig;->enableDefaultFallbackLanguage:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "enableDefaultFallbackLanguage"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-boolean v1, p0, Lcom/helpshift/InstallConfig;->enableInboxPolling:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "enableInboxPolling"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-boolean v1, p0, Lcom/helpshift/InstallConfig;->enableLogging:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "enableLogging"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-boolean v1, p0, Lcom/helpshift/InstallConfig;->disableErrorReporting:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "disableErrorReporting"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v1, p0, Lcom/helpshift/InstallConfig;->fontPath:Ljava/lang/String;

    const-string v2, "font"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget v1, p0, Lcom/helpshift/InstallConfig;->screenOrientation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "screenOrientation"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v1, p0, Lcom/helpshift/InstallConfig;->extras:Ljava/util/Map;

    if-eqz v1, :cond_9f

    .line 77
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_81
    :goto_81
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 78
    iget-object v3, p0, Lcom/helpshift/InstallConfig;->extras:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_81

    .line 79
    iget-object v3, p0, Lcom/helpshift/InstallConfig;->extras:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_81

    :cond_9f
    const-string v1, "sdkType"

    .line 83
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ac

    const-string v2, "android"

    .line 84
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_ac
    iget-object v1, p0, Lcom/helpshift/InstallConfig;->supportNotificationChannelId:Ljava/lang/String;

    const-string v2, "supportNotificationChannelId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
