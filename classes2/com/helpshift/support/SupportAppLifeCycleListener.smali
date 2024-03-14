.class public Lcom/helpshift/support/SupportAppLifeCycleListener;
.super Ljava/lang/Object;
.source "SupportAppLifeCycleListener.java"

# interfaces
.implements Lcom/helpshift/applifecycle/HSAppLifeCycleListener;


# instance fields
.field data:Lcom/helpshift/support/HSApiData;

.field storage:Lcom/helpshift/support/HSStorage;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/helpshift/support/SupportAppLifeCycleListener;->data:Lcom/helpshift/support/HSApiData;

    .line 30
    iput-object v0, p0, Lcom/helpshift/support/SupportAppLifeCycleListener;->storage:Lcom/helpshift/support/HSStorage;

    return-void
.end method

.method private tryFetchingServerConfig(Landroid/content/Context;)V
    .registers 8

    .line 89
    invoke-static {p1}, Lcom/helpshift/util/ApplicationUtil;->isApplicationDebuggable(Landroid/content/Context;)Z

    move-result p1

    .line 90
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getCoreApi()Lcom/helpshift/CoreApi;

    move-result-object v0

    .line 91
    invoke-interface {v0}, Lcom/helpshift/CoreApi;->getDomain()Lcom/helpshift/common/domain/Domain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpshift/common/domain/Domain;->getSDKConfigurationDM()Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    move-result-object v1

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    if-nez p1, :cond_2e

    .line 94
    invoke-virtual {v1}, Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;->getLastSuccessfulConfigFetchTime()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 93
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 95
    invoke-virtual {v1}, Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;->getPeriodicFetchInterval()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-ltz p1, :cond_36

    .line 97
    :cond_2e
    invoke-interface {v0}, Lcom/helpshift/CoreApi;->getConfigFetchDM()Lcom/helpshift/configuration/domainmodel/ConfigFetchDM;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/helpshift/configuration/domainmodel/ConfigFetchDM;->fetchServerConfig(Z)V

    .line 99
    :cond_36
    invoke-interface {v0}, Lcom/helpshift/CoreApi;->refreshPoller()V

    return-void
.end method


# virtual methods
.method public onAppBackground(Landroid/content/Context;)V
    .registers 2

    const/4 p1, 0x0

    .line 83
    invoke-static {p1}, Lcom/helpshift/app/AppLifeCycleStateHolder;->setAppInForeground(Z)V

    .line 84
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getCoreApi()Lcom/helpshift/CoreApi;

    move-result-object p1

    invoke-interface {p1}, Lcom/helpshift/CoreApi;->getConversationInboxPoller()Lcom/helpshift/conversation/ConversationInboxPoller;

    move-result-object p1

    invoke-virtual {p1}, Lcom/helpshift/conversation/ConversationInboxPoller;->stop()V

    .line 85
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getCoreApi()Lcom/helpshift/CoreApi;

    move-result-object p1

    invoke-interface {p1}, Lcom/helpshift/CoreApi;->sendRequestIdsForSuccessfulApiCalls()V

    return-void
.end method

.method public onAppForeground(Landroid/content/Context;)V
    .registers 9

    const/4 v0, 0x1

    .line 38
    invoke-static {v0}, Lcom/helpshift/app/AppLifeCycleStateHolder;->setAppInForeground(Z)V

    .line 39
    iget-object v1, p0, Lcom/helpshift/support/SupportAppLifeCycleListener;->data:Lcom/helpshift/support/HSApiData;

    if-nez v1, :cond_15

    .line 40
    new-instance v1, Lcom/helpshift/support/HSApiData;

    invoke-direct {v1, p1}, Lcom/helpshift/support/HSApiData;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/helpshift/support/SupportAppLifeCycleListener;->data:Lcom/helpshift/support/HSApiData;

    .line 41
    iget-object v1, p0, Lcom/helpshift/support/SupportAppLifeCycleListener;->data:Lcom/helpshift/support/HSApiData;

    iget-object v1, v1, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    iput-object v1, p0, Lcom/helpshift/support/SupportAppLifeCycleListener;->storage:Lcom/helpshift/support/HSStorage;

    .line 44
    :cond_15
    iget-object v1, p0, Lcom/helpshift/support/SupportAppLifeCycleListener;->data:Lcom/helpshift/support/HSApiData;

    invoke-virtual {v1}, Lcom/helpshift/support/HSApiData;->updateReviewCounter()V

    .line 45
    iget-object v1, p0, Lcom/helpshift/support/SupportAppLifeCycleListener;->data:Lcom/helpshift/support/HSApiData;

    invoke-virtual {v1}, Lcom/helpshift/support/HSApiData;->shouldShowReviewPopup()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 46
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/helpshift/support/HSReview;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    .line 47
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 48
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 50
    :cond_31
    invoke-direct {p0, p1}, Lcom/helpshift/support/SupportAppLifeCycleListener;->tryFetchingServerConfig(Landroid/content/Context;)V

    .line 51
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getCoreApi()Lcom/helpshift/CoreApi;

    move-result-object v1

    invoke-interface {v1}, Lcom/helpshift/CoreApi;->sendFailedApiCalls()V

    .line 52
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getCoreApi()Lcom/helpshift/CoreApi;

    move-result-object v1

    invoke-interface {v1}, Lcom/helpshift/CoreApi;->sendAppStartEvent()V

    .line 55
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getCoreApi()Lcom/helpshift/CoreApi;

    move-result-object v1

    invoke-interface {v1}, Lcom/helpshift/CoreApi;->resetPreIssueConversations()V

    .line 57
    invoke-static {p1}, Lcom/helpshift/util/HelpshiftConnectionUtil;->isOnline(Landroid/content/Context;)Z

    move-result p1

    .line 59
    monitor-enter p0

    if-eqz p1, :cond_87

    .line 61
    :try_start_50
    invoke-static {}, Lcom/helpshift/static_classes/ErrorReporting;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_87

    .line 62
    iget-object p1, p0, Lcom/helpshift/support/SupportAppLifeCycleListener;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {p1}, Lcom/helpshift/support/HSStorage;->getLastErrorReportedTime()J

    move-result-wide v1

    .line 63
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getPlatform()Lcom/helpshift/common/platform/Platform;

    move-result-object p1

    invoke-static {p1}, Lcom/helpshift/common/util/HSDateFormatSpec;->getCurrentAdjustedTimeInMillis(Lcom/helpshift/common/platform/Platform;)J

    move-result-wide v3

    sub-long v1, v3, v1

    const-wide/32 v5, 0x5265c00

    cmp-long p1, v1, v5

    if-lez p1, :cond_6e

    goto :goto_6f

    :cond_6e
    const/4 v0, 0x0

    :goto_6f
    if-eqz v0, :cond_87

    .line 67
    invoke-static {}, Lcom/helpshift/util/HSLogger;->getAll()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_87

    .line 68
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_87

    .line 69
    iget-object v0, p0, Lcom/helpshift/support/SupportAppLifeCycleListener;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v0, v3, v4}, Lcom/helpshift/support/HSStorage;->setLastErrorReportedTime(J)V

    .line 70
    iget-object v0, p0, Lcom/helpshift/support/SupportAppLifeCycleListener;->data:Lcom/helpshift/support/HSApiData;

    invoke-virtual {v0, p1}, Lcom/helpshift/support/HSApiData;->sendErrorReports(Ljava/util/List;)V

    .line 74
    :cond_87
    monitor-exit p0

    return-void

    :catchall_89
    move-exception p1

    monitor-exit p0
    :try_end_8b
    .catchall {:try_start_50 .. :try_end_8b} :catchall_89

    throw p1
.end method
