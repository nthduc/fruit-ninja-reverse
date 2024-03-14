.class public final Lcom/helpshift/configuration/dto/RootInstallConfig$RootInstallConfigBuilder;
.super Ljava/lang/Object;
.source "RootInstallConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/configuration/dto/RootInstallConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RootInstallConfigBuilder"
.end annotation


# instance fields
.field private disableAnimations:Ljava/lang/Boolean;

.field private disableAppLaunchEvent:Ljava/lang/Boolean;

.field private disableErrorLogging:Ljava/lang/Boolean;

.field private disableHelpshiftBranding:Ljava/lang/Boolean;

.field private enableDefaultFallbackLanguage:Ljava/lang/Boolean;

.field private enableInAppNotification:Ljava/lang/Boolean;

.field private enableInboxPolling:Ljava/lang/Boolean;

.field private enableNotificationMute:Ljava/lang/Boolean;

.field private fontPath:Ljava/lang/String;

.field private largeNotificationIcon:Ljava/lang/Integer;

.field private notificationIcon:Ljava/lang/Integer;

.field private notificationSound:Ljava/lang/Integer;

.field private pluginVersion:Ljava/lang/String;

.field private runtimeVersion:Ljava/lang/String;

.field private sdkType:Ljava/lang/String;

.field private supportNotificationChannelId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyMap(Ljava/util/Map;)Lcom/helpshift/configuration/dto/RootInstallConfig$RootInstallConfigBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/helpshift/configuration/dto/RootInstallConfig$RootInstallConfigBuilder;"
        }
    .end annotation

    .line 78
    const-class v0, Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/helpshift/configuration/dto/RootInstallConfig$RootInstallConfigBuilder;->enableInAppNotification:Ljava/lang/Boolean;

    const-string v2, "enableInAppNotification"

    invoke-static {p1, v2, v0, v1}, Lcom/helpshift/util/MapUtil;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/helpshift/configuration/dto/RootInstallConfig$RootInstallConfigBuilder;->enableInAppNotification:Ljava/lang/Boolean;

    .line 80
    const-class v0, Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/helpshift/configuration/dto/RootInstallConfig$RootInstallConfigBuilder;->enableDefaultFallbackLanguage:Ljava/lang/Boolean;

    const-string v2, "enableDefaultFallbackLanguage"

    invoke-static {p1, v2, v0, v1}, Lcom/helpshift/util/MapUtil;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/helpshift/configuration/dto/RootInstallConfig$RootInstallConfigBuilder;->enableDefaultFallbackLanguage:Ljava/lang/Boolean;

    .line 82
    const-class v0, Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/helpshift/configuration/dto/RootInstallConfig$RootInstallConfigBuilder;->enableInboxPolling:Ljava/lang/Boolean;

    const-string v2, "enableInboxPolling"

    invoke-static {p1, v2, v0, v1}, Lcom/helpshift/util/MapUtil;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/helpshift/configuration/dto/RootInstallConfig$RootInstallConfigBuilder;->enableInboxPolling:Ljava/lang/Boolean;

    .line 85
    const-class v0, Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/helpshift/configuration/dto/RootInstallConfig$RootInstallConfigBuilder;->enableNotificationMute:Ljava/lang/Boolean;

    const-string v2, "enableNotificationMute"

    invoke-static {p1, v2, v0, v1}, Lcom/helpshift/util/MapUtil;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/helpshift/configuration/dto/RootInstallConfig$RootInstallConfigBuilder;->enableNotificationMute:Ljava/lang/Boolean;

    .line 88
    const-class v0, Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/helpshift/configuration/dto/RootInstallConfig$RootInstallConfigBuilder;->disableHelpshiftBranding:Ljava/lang/Boolean;

    const-string v2, "disableHelpshiftBranding"

    invoke-static {p1, v2, v0, v1}, Lcom/helpshift/util/MapUtil;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/helpshift/configuration/dto/RootInstallConfig$RootInstallConfigBuilder;->disableHelpshiftBranding:Ljava/lang/Boolean;

    .line 91
    const-class v0, Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/helpshift/configuration/dto/RootInstallConfig$RootInstallConfigBuilder;->disableErrorLogging:Ljava/lang/Boolean;

    const-string v2, "disableErrorLogging"

    invoke-static {p1, v2, v0, v1}, Lcom/helpshift/util/MapUtil;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/helpshift/configuration/dto/RootInstallConfig$RootInstallConfigBuilder;->disableErrorLogging:Ljava/lang/Boolean;

    .line 94
    const-class v0, Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/helpshift/configuration/dto/RootInstallConfig$RootInstallConfigBuilder;->disableAppLaunchEvent:Ljava/lang/Boolean;

    const-string v2, "disableAppLaunchEvent"

    invoke-static {p1, v2, v0, v1}, Lcom/helpshift/util/MapUtil;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/helpshift/configuration/dto/RootInstallConfig$RootInstallConfigBuilder;->disableAppLaunchEvent:Ljava/lang/Boolean;

    .line 97
    const-class v0, Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/helpshift/configuration/dto/RootInstallConfig$RootInstallConfigBuilder;->disableAnimations:Ljava/lang/Boolean;

    const-string v2, "disableAnimations"

    invoke-static {p1, v2, v0, v1}, Lcom/helpshift/util/MapUtil;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/helpshift/configuration/dto/RootInstallConfig$RootInstallConfigBuilder;->disableAnimations:Ljava/lang/Boolean;

    .line 100
    const-class v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/helpshift/configuration/dto/RootInstallConfig$RootInstallConfigBuilder;->notificationIcon:Ljava/lang/Integer;

    const-string v2, "notificationIcon"

    invoke-static {p1, v2, v0, v1}, Lcom/helpshift/util/MapUtil;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/helpshift/configuration/dto/RootInstallConfig$RootInstallConfigBuilder;->notificationIcon:Ljava/lang/Integer;

    .line 103
    const-class v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/helpshift/configuration/dto/RootInstallConfig$RootInstallConfigBuilder;->largeNotificationIcon:Ljava/lang/Integer;

    const-string v2, "largeNotificationIcon"

    invoke-static {p1, v2, v0, v1}, Lcom/helpshift/util/MapUtil;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/helpshift/configuration/dto/RootInstallConfig$RootInstallConfigBuilder;->largeNotificationIcon:Ljava/lang/Integer;

    .line 106
    const-class v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/helpshift/configuration/dto/RootInstallConfig$RootInstallConfigBuilder;->notificationSound:Ljava/lang/Integer;

    const-string v2, "notificationSound"

    invoke-static {p1, v2, v0, v1}, Lcom/helpshift/util/MapUtil;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/helpshift/configuration/dto/RootInstallConfig$RootInstallConfigBuilder;->notificationSound:Ljava/lang/Integer;

    .line 109
    const-class v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/helpshift/configuration/dto/RootInstallConfig$RootInstallConfigBuilder;->fontPath:Ljava/lang/String;

    const-string v2, "font"

    invoke-static {p1, v2, v0, v1}, Lcom/helpshift/util/MapUtil;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/helpshift/configuration/dto/RootInstallConfig$RootInstallConfigBuilder;->fontPath:Ljava/lang/String;

    .line 111
    const-class v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/helpshift/configuration/dto/RootInstallConfig$RootInstallConfigBuilder;->sdkType:Ljava/lang/String;

    const-string v2, "sdkType"

    invoke-static {p1, v2, v0, v1}, Lcom/helpshift/util/MapUtil;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/helpshift/configuration/dto/RootInstallConfig$RootInstallConfigBuilder;->sdkType:Ljava/lang/String;

    .line 113
    const-class v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/helpshift/configuration/dto/RootInstallConfig$RootInstallConfigBuilder;->pluginVersion:Ljava/lang/String;

    const-string v2, "pluginVersion"

    invoke-static {p1, v2, v0, v1}, Lcom/helpshift/util/MapUtil;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/helpshift/configuration/dto/RootInstallConfig$RootInstallConfigBuilder;->pluginVersion:Ljava/lang/String;

    .line 115
    const-class v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/helpshift/configuration/dto/RootInstallConfig$RootInstallConfigBuilder;->runtimeVersion:Ljava/lang/String;

    const-string v2, "runtimeVersion"

    invoke-static {p1, v2, v0, v1}, Lcom/helpshift/util/MapUtil;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/helpshift/configuration/dto/RootInstallConfig$RootInstallConfigBuilder;->runtimeVersion:Ljava/lang/String;

    .line 117
    const-class v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/helpshift/configuration/dto/RootInstallConfig$RootInstallConfigBuilder;->supportNotificationChannelId:Ljava/lang/String;

    const-string v2, "supportNotificationChannelId"

    .line 118
    invoke-static {p1, v2, v0, v1}, Lcom/helpshift/util/MapUtil;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/helpshift/configuration/dto/RootInstallConfig$RootInstallConfigBuilder;->supportNotificationChannelId:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/helpshift/configuration/dto/RootInstallConfig;
    .registers 21

    move-object/from16 v0, p0

    .line 124
    new-instance v18, Lcom/helpshift/configuration/dto/RootInstallConfig;

    move-object/from16 v1, v18

    iget-object v2, v0, Lcom/helpshift/configuration/dto/RootInstallConfig$RootInstallConfigBuilder;->enableInAppNotification:Ljava/lang/Boolean;

    iget-object v3, v0, Lcom/helpshift/configuration/dto/RootInstallConfig$RootInstallConfigBuilder;->enableDefaultFallbackLanguage:Ljava/lang/Boolean;

    iget-object v4, v0, Lcom/helpshift/configuration/dto/RootInstallConfig$RootInstallConfigBuilder;->enableInboxPolling:Ljava/lang/Boolean;

    iget-object v5, v0, Lcom/helpshift/configuration/dto/RootInstallConfig$RootInstallConfigBuilder;->enableNotificationMute:Ljava/lang/Boolean;

    iget-object v6, v0, Lcom/helpshift/configuration/dto/RootInstallConfig$RootInstallConfigBuilder;->disableHelpshiftBranding:Ljava/lang/Boolean;

    iget-object v7, v0, Lcom/helpshift/configuration/dto/RootInstallConfig$RootInstallConfigBuilder;->disableAnimations:Ljava/lang/Boolean;

    iget-object v8, v0, Lcom/helpshift/configuration/dto/RootInstallConfig$RootInstallConfigBuilder;->disableErrorLogging:Ljava/lang/Boolean;

    iget-object v9, v0, Lcom/helpshift/configuration/dto/RootInstallConfig$RootInstallConfigBuilder;->disableAppLaunchEvent:Ljava/lang/Boolean;

    iget-object v10, v0, Lcom/helpshift/configuration/dto/RootInstallConfig$RootInstallConfigBuilder;->notificationIcon:Ljava/lang/Integer;

    iget-object v11, v0, Lcom/helpshift/configuration/dto/RootInstallConfig$RootInstallConfigBuilder;->largeNotificationIcon:Ljava/lang/Integer;

    iget-object v12, v0, Lcom/helpshift/configuration/dto/RootInstallConfig$RootInstallConfigBuilder;->notificationSound:Ljava/lang/Integer;

    iget-object v13, v0, Lcom/helpshift/configuration/dto/RootInstallConfig$RootInstallConfigBuilder;->fontPath:Ljava/lang/String;

    iget-object v14, v0, Lcom/helpshift/configuration/dto/RootInstallConfig$RootInstallConfigBuilder;->sdkType:Ljava/lang/String;

    iget-object v15, v0, Lcom/helpshift/configuration/dto/RootInstallConfig$RootInstallConfigBuilder;->pluginVersion:Ljava/lang/String;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/helpshift/configuration/dto/RootInstallConfig$RootInstallConfigBuilder;->runtimeVersion:Ljava/lang/String;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/helpshift/configuration/dto/RootInstallConfig$RootInstallConfigBuilder;->supportNotificationChannelId:Ljava/lang/String;

    move-object/from16 v17, v1

    move-object/from16 v1, v19

    invoke-direct/range {v1 .. v17}, Lcom/helpshift/configuration/dto/RootInstallConfig;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v18
.end method
