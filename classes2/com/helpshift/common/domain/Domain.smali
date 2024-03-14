.class public Lcom/helpshift/common/domain/Domain;
.super Ljava/lang/Object;
.source "Domain.java"


# instance fields
.field private analyticsEventDM:Lcom/helpshift/analytics/domainmodel/AnalyticsEventDM;

.field private attachmentFileManagerDM:Lcom/helpshift/common/domain/AttachmentFileManagerDM;

.field private attachmentUploadThreader:Lcom/helpshift/common/domain/Threader;

.field private authenticationFailureDM:Lcom/helpshift/account/AuthenticationFailureDM;

.field private autoRetryFailedEventDM:Lcom/helpshift/common/AutoRetryFailedEventDM;

.field private configFetchDM:Lcom/helpshift/configuration/domainmodel/ConfigFetchDM;

.field private conversationInboxManagerDM:Lcom/helpshift/conversation/domainmodel/ConversationInboxManagerDM;

.field private cryptoDM:Lcom/helpshift/crypto/CryptoDM;

.field private customIssueFieldDM:Lcom/helpshift/cif/CustomIssueFieldDM;

.field private delayedThreader:Lcom/helpshift/common/domain/DelayedThreader;

.field private errorReportsDM:Lcom/helpshift/logger/ErrorReportsDM;

.field private faqsDM:Lcom/helpshift/faq/FaqsDM;

.field private localeProviderDM:Lcom/helpshift/localeprovider/domainmodel/LocaleProviderDM;

.field private metaDataDM:Lcom/helpshift/meta/MetaDataDM;

.field private parallelThreader:Lcom/helpshift/common/domain/Threader;

.field private final platform:Lcom/helpshift/common/platform/Platform;

.field private sdkConfigurationDM:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

.field private serialThreader:Lcom/helpshift/common/domain/Threader;

.field private smartIntentDM:Lcom/helpshift/conversation/smartintent/SmartIntentDM;

.field private uiThreadDelegateDecorator:Lcom/helpshift/delegate/UIThreadDelegateDecorator;

.field private userManagerDM:Lcom/helpshift/account/domainmodel/UserManagerDM;

.field private webSocketAuthDM:Lcom/helpshift/auth/domainmodel/WebSocketAuthDM;


# direct methods
.method public constructor <init>(Lcom/helpshift/common/platform/Platform;)V
    .registers 6

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/helpshift/common/domain/Domain;->platform:Lcom/helpshift/common/platform/Platform;

    .line 64
    new-instance v0, Lcom/helpshift/delegate/UIThreadDelegateDecorator;

    invoke-direct {v0, p0}, Lcom/helpshift/delegate/UIThreadDelegateDecorator;-><init>(Lcom/helpshift/common/domain/Domain;)V

    iput-object v0, p0, Lcom/helpshift/common/domain/Domain;->uiThreadDelegateDecorator:Lcom/helpshift/delegate/UIThreadDelegateDecorator;

    .line 66
    new-instance v0, Lcom/helpshift/common/poller/HttpBackoff$Builder;

    invoke-direct {v0}, Lcom/helpshift/common/poller/HttpBackoff$Builder;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    .line 67
    invoke-static {v2, v3, v1}, Lcom/helpshift/common/poller/Delay;->of(JLjava/util/concurrent/TimeUnit;)Lcom/helpshift/common/poller/Delay;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpshift/common/poller/HttpBackoff$Builder;->setBaseInterval(Lcom/helpshift/common/poller/Delay;)Lcom/helpshift/common/poller/HttpBackoff$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    .line 68
    invoke-static {v2, v3, v1}, Lcom/helpshift/common/poller/Delay;->of(JLjava/util/concurrent/TimeUnit;)Lcom/helpshift/common/poller/Delay;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpshift/common/poller/HttpBackoff$Builder;->setMaxInterval(Lcom/helpshift/common/poller/Delay;)Lcom/helpshift/common/poller/HttpBackoff$Builder;

    move-result-object v0

    const/16 v1, 0xa

    .line 69
    invoke-virtual {v0, v1}, Lcom/helpshift/common/poller/HttpBackoff$Builder;->setMaxAttempts(I)Lcom/helpshift/common/poller/HttpBackoff$Builder;

    move-result-object v0

    const v1, 0x3dcccccd    # 0.1f

    .line 70
    invoke-virtual {v0, v1}, Lcom/helpshift/common/poller/HttpBackoff$Builder;->setRandomness(F)Lcom/helpshift/common/poller/HttpBackoff$Builder;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    .line 71
    invoke-virtual {v0, v1}, Lcom/helpshift/common/poller/HttpBackoff$Builder;->setMultiplier(F)Lcom/helpshift/common/poller/HttpBackoff$Builder;

    move-result-object v0

    sget-object v1, Lcom/helpshift/common/poller/HttpBackoff$RetryPolicy;->FAILURE:Lcom/helpshift/common/poller/HttpBackoff$RetryPolicy;

    .line 72
    invoke-virtual {v0, v1}, Lcom/helpshift/common/poller/HttpBackoff$Builder;->setRetryPolicy(Lcom/helpshift/common/poller/HttpBackoff$RetryPolicy;)Lcom/helpshift/common/poller/HttpBackoff$Builder;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/helpshift/common/poller/HttpBackoff$Builder;->build()Lcom/helpshift/common/poller/HttpBackoff;

    move-result-object v0

    .line 75
    new-instance v1, Lcom/helpshift/common/AutoRetryFailedEventDM;

    invoke-direct {v1, p0, p1, v0}, Lcom/helpshift/common/AutoRetryFailedEventDM;-><init>(Lcom/helpshift/common/domain/Domain;Lcom/helpshift/common/platform/Platform;Lcom/helpshift/common/poller/HttpBackoff;)V

    iput-object v1, p0, Lcom/helpshift/common/domain/Domain;->autoRetryFailedEventDM:Lcom/helpshift/common/AutoRetryFailedEventDM;

    .line 76
    new-instance v0, Lcom/helpshift/account/domainmodel/UserManagerDM;

    invoke-direct {v0, p1, p0}, Lcom/helpshift/account/domainmodel/UserManagerDM;-><init>(Lcom/helpshift/common/platform/Platform;Lcom/helpshift/common/domain/Domain;)V

    iput-object v0, p0, Lcom/helpshift/common/domain/Domain;->userManagerDM:Lcom/helpshift/account/domainmodel/UserManagerDM;

    .line 77
    iget-object v0, p0, Lcom/helpshift/common/domain/Domain;->userManagerDM:Lcom/helpshift/account/domainmodel/UserManagerDM;

    invoke-virtual {v0}, Lcom/helpshift/account/domainmodel/UserManagerDM;->init()V

    .line 79
    new-instance v0, Lcom/helpshift/common/domain/HSThreadFactory;

    const-string v1, "core-s"

    invoke-direct {v0, v1}, Lcom/helpshift/common/domain/HSThreadFactory;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 81
    new-instance v1, Lcom/helpshift/common/domain/BackgroundThreader;

    invoke-direct {v1, v0}, Lcom/helpshift/common/domain/BackgroundThreader;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v1, p0, Lcom/helpshift/common/domain/Domain;->serialThreader:Lcom/helpshift/common/domain/Threader;

    .line 83
    new-instance v0, Lcom/helpshift/common/domain/HSThreadFactory;

    const-string v1, "core-at"

    invoke-direct {v0, v1}, Lcom/helpshift/common/domain/HSThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 84
    new-instance v1, Lcom/helpshift/common/domain/BackgroundThreader;

    invoke-direct {v1, v0}, Lcom/helpshift/common/domain/BackgroundThreader;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v1, p0, Lcom/helpshift/common/domain/Domain;->attachmentUploadThreader:Lcom/helpshift/common/domain/Threader;

    .line 86
    new-instance v0, Lcom/helpshift/common/domain/HSThreadFactory;

    const-string v1, "core-p"

    invoke-direct {v0, v1}, Lcom/helpshift/common/domain/HSThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 87
    new-instance v1, Lcom/helpshift/common/domain/BackgroundThreader;

    invoke-direct {v1, v0}, Lcom/helpshift/common/domain/BackgroundThreader;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v1, p0, Lcom/helpshift/common/domain/Domain;->parallelThreader:Lcom/helpshift/common/domain/Threader;

    .line 89
    new-instance v0, Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    invoke-direct {v0, p0, p1}, Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;-><init>(Lcom/helpshift/common/domain/Domain;Lcom/helpshift/common/platform/Platform;)V

    iput-object v0, p0, Lcom/helpshift/common/domain/Domain;->sdkConfigurationDM:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    .line 90
    new-instance v0, Lcom/helpshift/configuration/domainmodel/ConfigFetchDM;

    invoke-direct {v0, p1, p0}, Lcom/helpshift/configuration/domainmodel/ConfigFetchDM;-><init>(Lcom/helpshift/common/platform/Platform;Lcom/helpshift/common/domain/Domain;)V

    iput-object v0, p0, Lcom/helpshift/common/domain/Domain;->configFetchDM:Lcom/helpshift/configuration/domainmodel/ConfigFetchDM;

    .line 92
    new-instance v0, Lcom/helpshift/meta/MetaDataDM;

    iget-object v1, p0, Lcom/helpshift/common/domain/Domain;->sdkConfigurationDM:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    invoke-direct {v0, p0, p1, v1}, Lcom/helpshift/meta/MetaDataDM;-><init>(Lcom/helpshift/common/domain/Domain;Lcom/helpshift/common/platform/Platform;Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;)V

    iput-object v0, p0, Lcom/helpshift/common/domain/Domain;->metaDataDM:Lcom/helpshift/meta/MetaDataDM;

    .line 93
    new-instance v0, Lcom/helpshift/analytics/domainmodel/AnalyticsEventDM;

    invoke-direct {v0, p0, p1}, Lcom/helpshift/analytics/domainmodel/AnalyticsEventDM;-><init>(Lcom/helpshift/common/domain/Domain;Lcom/helpshift/common/platform/Platform;)V

    iput-object v0, p0, Lcom/helpshift/common/domain/Domain;->analyticsEventDM:Lcom/helpshift/analytics/domainmodel/AnalyticsEventDM;

    .line 94
    new-instance v0, Lcom/helpshift/conversation/domainmodel/ConversationInboxManagerDM;

    iget-object v1, p0, Lcom/helpshift/common/domain/Domain;->userManagerDM:Lcom/helpshift/account/domainmodel/UserManagerDM;

    invoke-direct {v0, p1, p0, v1}, Lcom/helpshift/conversation/domainmodel/ConversationInboxManagerDM;-><init>(Lcom/helpshift/common/platform/Platform;Lcom/helpshift/common/domain/Domain;Lcom/helpshift/account/domainmodel/UserManagerDM;)V

    iput-object v0, p0, Lcom/helpshift/common/domain/Domain;->conversationInboxManagerDM:Lcom/helpshift/conversation/domainmodel/ConversationInboxManagerDM;

    .line 95
    new-instance v0, Lcom/helpshift/localeprovider/domainmodel/LocaleProviderDM;

    iget-object v1, p0, Lcom/helpshift/common/domain/Domain;->sdkConfigurationDM:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    invoke-direct {v0, v1, p1}, Lcom/helpshift/localeprovider/domainmodel/LocaleProviderDM;-><init>(Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;Lcom/helpshift/common/platform/Platform;)V

    iput-object v0, p0, Lcom/helpshift/common/domain/Domain;->localeProviderDM:Lcom/helpshift/localeprovider/domainmodel/LocaleProviderDM;

    .line 96
    new-instance p1, Lcom/helpshift/account/AuthenticationFailureDM;

    invoke-direct {p1, p0}, Lcom/helpshift/account/AuthenticationFailureDM;-><init>(Lcom/helpshift/common/domain/Domain;)V

    iput-object p1, p0, Lcom/helpshift/common/domain/Domain;->authenticationFailureDM:Lcom/helpshift/account/AuthenticationFailureDM;

    return-void
.end method

.method private declared-synchronized getDelayedThreader()Lcom/helpshift/common/domain/DelayedThreader;
    .registers 4

    monitor-enter p0

    .line 112
    :try_start_1
    iget-object v0, p0, Lcom/helpshift/common/domain/Domain;->delayedThreader:Lcom/helpshift/common/domain/DelayedThreader;

    if-nez v0, :cond_18

    const/4 v0, 0x1

    .line 113
    new-instance v1, Lcom/helpshift/common/domain/HSThreadFactory;

    const-string v2, "core-d"

    invoke-direct {v1, v2}, Lcom/helpshift/common/domain/HSThreadFactory;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 115
    new-instance v1, Lcom/helpshift/common/domain/BackgroundDelayedThreader;

    invoke-direct {v1, v0}, Lcom/helpshift/common/domain/BackgroundDelayedThreader;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    iput-object v1, p0, Lcom/helpshift/common/domain/Domain;->delayedThreader:Lcom/helpshift/common/domain/DelayedThreader;

    .line 117
    :cond_18
    iget-object v0, p0, Lcom/helpshift/common/domain/Domain;->delayedThreader:Lcom/helpshift/common/domain/DelayedThreader;
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    monitor-exit p0

    return-object v0

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getAnalyticsEventDM()Lcom/helpshift/analytics/domainmodel/AnalyticsEventDM;
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/helpshift/common/domain/Domain;->analyticsEventDM:Lcom/helpshift/analytics/domainmodel/AnalyticsEventDM;

    return-object v0
.end method

.method public declared-synchronized getAttachmentFileManagerDM()Lcom/helpshift/common/domain/AttachmentFileManagerDM;
    .registers 3

    monitor-enter p0

    .line 192
    :try_start_1
    iget-object v0, p0, Lcom/helpshift/common/domain/Domain;->attachmentFileManagerDM:Lcom/helpshift/common/domain/AttachmentFileManagerDM;

    if-nez v0, :cond_e

    .line 193
    new-instance v0, Lcom/helpshift/common/domain/AttachmentFileManagerDM;

    iget-object v1, p0, Lcom/helpshift/common/domain/Domain;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-direct {v0, p0, v1}, Lcom/helpshift/common/domain/AttachmentFileManagerDM;-><init>(Lcom/helpshift/common/domain/Domain;Lcom/helpshift/common/platform/Platform;)V

    iput-object v0, p0, Lcom/helpshift/common/domain/Domain;->attachmentFileManagerDM:Lcom/helpshift/common/domain/AttachmentFileManagerDM;

    .line 195
    :cond_e
    iget-object v0, p0, Lcom/helpshift/common/domain/Domain;->attachmentFileManagerDM:Lcom/helpshift/common/domain/AttachmentFileManagerDM;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAttachmentUploadThreader()Lcom/helpshift/common/domain/Threader;
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/helpshift/common/domain/Domain;->attachmentUploadThreader:Lcom/helpshift/common/domain/Threader;

    return-object v0
.end method

.method public getAuthenticationFailureDM()Lcom/helpshift/account/AuthenticationFailureDM;
    .registers 2

    .line 233
    iget-object v0, p0, Lcom/helpshift/common/domain/Domain;->authenticationFailureDM:Lcom/helpshift/account/AuthenticationFailureDM;

    return-object v0
.end method

.method public getAutoRetryFailedEventDM()Lcom/helpshift/common/AutoRetryFailedEventDM;
    .registers 2

    .line 229
    iget-object v0, p0, Lcom/helpshift/common/domain/Domain;->autoRetryFailedEventDM:Lcom/helpshift/common/AutoRetryFailedEventDM;

    return-object v0
.end method

.method public getConfigFetchDM()Lcom/helpshift/configuration/domainmodel/ConfigFetchDM;
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/helpshift/common/domain/Domain;->configFetchDM:Lcom/helpshift/configuration/domainmodel/ConfigFetchDM;

    return-object v0
.end method

.method public getConversationInboxManagerDM()Lcom/helpshift/conversation/domainmodel/ConversationInboxManagerDM;
    .registers 2

    .line 125
    iget-object v0, p0, Lcom/helpshift/common/domain/Domain;->conversationInboxManagerDM:Lcom/helpshift/conversation/domainmodel/ConversationInboxManagerDM;

    return-object v0
.end method

.method public declared-synchronized getCryptoDM()Lcom/helpshift/crypto/CryptoDM;
    .registers 2

    monitor-enter p0

    .line 164
    :try_start_1
    iget-object v0, p0, Lcom/helpshift/common/domain/Domain;->cryptoDM:Lcom/helpshift/crypto/CryptoDM;

    if-nez v0, :cond_c

    .line 165
    new-instance v0, Lcom/helpshift/crypto/CryptoDM;

    invoke-direct {v0}, Lcom/helpshift/crypto/CryptoDM;-><init>()V

    iput-object v0, p0, Lcom/helpshift/common/domain/Domain;->cryptoDM:Lcom/helpshift/crypto/CryptoDM;

    .line 167
    :cond_c
    iget-object v0, p0, Lcom/helpshift/common/domain/Domain;->cryptoDM:Lcom/helpshift/crypto/CryptoDM;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCustomIssueFieldDM()Lcom/helpshift/cif/CustomIssueFieldDM;
    .registers 3

    monitor-enter p0

    .line 156
    :try_start_1
    iget-object v0, p0, Lcom/helpshift/common/domain/Domain;->customIssueFieldDM:Lcom/helpshift/cif/CustomIssueFieldDM;

    if-nez v0, :cond_e

    .line 157
    new-instance v0, Lcom/helpshift/cif/CustomIssueFieldDM;

    iget-object v1, p0, Lcom/helpshift/common/domain/Domain;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-direct {v0, p0, v1}, Lcom/helpshift/cif/CustomIssueFieldDM;-><init>(Lcom/helpshift/common/domain/Domain;Lcom/helpshift/common/platform/Platform;)V

    iput-object v0, p0, Lcom/helpshift/common/domain/Domain;->customIssueFieldDM:Lcom/helpshift/cif/CustomIssueFieldDM;

    .line 159
    :cond_e
    iget-object v0, p0, Lcom/helpshift/common/domain/Domain;->customIssueFieldDM:Lcom/helpshift/cif/CustomIssueFieldDM;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDelegate()Lcom/helpshift/delegate/UIThreadDelegateDecorator;
    .registers 2

    .line 141
    iget-object v0, p0, Lcom/helpshift/common/domain/Domain;->uiThreadDelegateDecorator:Lcom/helpshift/delegate/UIThreadDelegateDecorator;

    return-object v0
.end method

.method public declared-synchronized getErrorReportsDM()Lcom/helpshift/logger/ErrorReportsDM;
    .registers 3

    monitor-enter p0

    .line 238
    :try_start_1
    iget-object v0, p0, Lcom/helpshift/common/domain/Domain;->errorReportsDM:Lcom/helpshift/logger/ErrorReportsDM;

    if-nez v0, :cond_e

    .line 239
    new-instance v0, Lcom/helpshift/logger/ErrorReportsDM;

    iget-object v1, p0, Lcom/helpshift/common/domain/Domain;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-direct {v0, v1, p0}, Lcom/helpshift/logger/ErrorReportsDM;-><init>(Lcom/helpshift/common/platform/Platform;Lcom/helpshift/common/domain/Domain;)V

    iput-object v0, p0, Lcom/helpshift/common/domain/Domain;->errorReportsDM:Lcom/helpshift/logger/ErrorReportsDM;

    .line 241
    :cond_e
    iget-object v0, p0, Lcom/helpshift/common/domain/Domain;->errorReportsDM:Lcom/helpshift/logger/ErrorReportsDM;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFaqsDM()Lcom/helpshift/faq/FaqsDM;
    .registers 3

    monitor-enter p0

    .line 172
    :try_start_1
    iget-object v0, p0, Lcom/helpshift/common/domain/Domain;->faqsDM:Lcom/helpshift/faq/FaqsDM;

    if-nez v0, :cond_e

    .line 173
    new-instance v0, Lcom/helpshift/faq/FaqsDM;

    iget-object v1, p0, Lcom/helpshift/common/domain/Domain;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-direct {v0, p0, v1}, Lcom/helpshift/faq/FaqsDM;-><init>(Lcom/helpshift/common/domain/Domain;Lcom/helpshift/common/platform/Platform;)V

    iput-object v0, p0, Lcom/helpshift/common/domain/Domain;->faqsDM:Lcom/helpshift/faq/FaqsDM;

    .line 175
    :cond_e
    iget-object v0, p0, Lcom/helpshift/common/domain/Domain;->faqsDM:Lcom/helpshift/faq/FaqsDM;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLocaleProviderDM()Lcom/helpshift/localeprovider/domainmodel/LocaleProviderDM;
    .registers 2

    .line 187
    iget-object v0, p0, Lcom/helpshift/common/domain/Domain;->localeProviderDM:Lcom/helpshift/localeprovider/domainmodel/LocaleProviderDM;

    return-object v0
.end method

.method public getMetaDataDM()Lcom/helpshift/meta/MetaDataDM;
    .registers 2

    .line 151
    iget-object v0, p0, Lcom/helpshift/common/domain/Domain;->metaDataDM:Lcom/helpshift/meta/MetaDataDM;

    return-object v0
.end method

.method public getParallelThreader()Lcom/helpshift/common/domain/Threader;
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/helpshift/common/domain/Domain;->parallelThreader:Lcom/helpshift/common/domain/Threader;

    return-object v0
.end method

.method public getSDKConfigurationDM()Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;
    .registers 2

    .line 129
    iget-object v0, p0, Lcom/helpshift/common/domain/Domain;->sdkConfigurationDM:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    return-object v0
.end method

.method public getSerialThreader()Lcom/helpshift/common/domain/Threader;
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/helpshift/common/domain/Domain;->serialThreader:Lcom/helpshift/common/domain/Threader;

    return-object v0
.end method

.method public declared-synchronized getSmartIntentDM()Lcom/helpshift/conversation/smartintent/SmartIntentDM;
    .registers 3

    monitor-enter p0

    .line 245
    :try_start_1
    iget-object v0, p0, Lcom/helpshift/common/domain/Domain;->smartIntentDM:Lcom/helpshift/conversation/smartintent/SmartIntentDM;

    if-nez v0, :cond_e

    .line 246
    new-instance v0, Lcom/helpshift/conversation/smartintent/SmartIntentDM;

    iget-object v1, p0, Lcom/helpshift/common/domain/Domain;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-direct {v0, v1, p0}, Lcom/helpshift/conversation/smartintent/SmartIntentDM;-><init>(Lcom/helpshift/common/platform/Platform;Lcom/helpshift/common/domain/Domain;)V

    iput-object v0, p0, Lcom/helpshift/common/domain/Domain;->smartIntentDM:Lcom/helpshift/conversation/smartintent/SmartIntentDM;

    .line 248
    :cond_e
    iget-object v0, p0, Lcom/helpshift/common/domain/Domain;->smartIntentDM:Lcom/helpshift/conversation/smartintent/SmartIntentDM;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUserManagerDM()Lcom/helpshift/account/domainmodel/UserManagerDM;
    .registers 2

    .line 121
    iget-object v0, p0, Lcom/helpshift/common/domain/Domain;->userManagerDM:Lcom/helpshift/account/domainmodel/UserManagerDM;

    return-object v0
.end method

.method public declared-synchronized getWebSocketAuthDM()Lcom/helpshift/auth/domainmodel/WebSocketAuthDM;
    .registers 3

    monitor-enter p0

    .line 180
    :try_start_1
    iget-object v0, p0, Lcom/helpshift/common/domain/Domain;->webSocketAuthDM:Lcom/helpshift/auth/domainmodel/WebSocketAuthDM;

    if-nez v0, :cond_e

    .line 181
    new-instance v0, Lcom/helpshift/auth/domainmodel/WebSocketAuthDM;

    iget-object v1, p0, Lcom/helpshift/common/domain/Domain;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-direct {v0, p0, v1}, Lcom/helpshift/auth/domainmodel/WebSocketAuthDM;-><init>(Lcom/helpshift/common/domain/Domain;Lcom/helpshift/common/platform/Platform;)V

    iput-object v0, p0, Lcom/helpshift/common/domain/Domain;->webSocketAuthDM:Lcom/helpshift/auth/domainmodel/WebSocketAuthDM;

    .line 183
    :cond_e
    iget-object v0, p0, Lcom/helpshift/common/domain/Domain;->webSocketAuthDM:Lcom/helpshift/auth/domainmodel/WebSocketAuthDM;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public runDelayed(Lcom/helpshift/common/domain/F;J)V
    .registers 5

    .line 216
    invoke-direct {p0}, Lcom/helpshift/common/domain/Domain;->getDelayedThreader()Lcom/helpshift/common/domain/DelayedThreader;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/helpshift/common/domain/DelayedThreader;->thread(Lcom/helpshift/common/domain/F;J)Lcom/helpshift/common/domain/F;

    move-result-object p1

    invoke-virtual {p1}, Lcom/helpshift/common/domain/F;->f()V

    return-void
.end method

.method public runDelayedInParallel(Lcom/helpshift/common/domain/F;J)V
    .registers 5

    .line 220
    new-instance v0, Lcom/helpshift/common/domain/Domain$1;

    invoke-direct {v0, p0, p1}, Lcom/helpshift/common/domain/Domain$1;-><init>(Lcom/helpshift/common/domain/Domain;Lcom/helpshift/common/domain/F;)V

    invoke-virtual {p0, v0, p2, p3}, Lcom/helpshift/common/domain/Domain;->runDelayed(Lcom/helpshift/common/domain/F;J)V

    return-void
.end method

.method public runOnUI(Lcom/helpshift/common/domain/F;)V
    .registers 3

    .line 207
    iget-object v0, p0, Lcom/helpshift/common/domain/Domain;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-interface {v0}, Lcom/helpshift/common/platform/Platform;->isCurrentThreadUIThread()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 208
    invoke-virtual {p1}, Lcom/helpshift/common/domain/F;->f()V

    goto :goto_19

    .line 211
    :cond_c
    iget-object v0, p0, Lcom/helpshift/common/domain/Domain;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-interface {v0}, Lcom/helpshift/common/platform/Platform;->getUIThreader()Lcom/helpshift/common/domain/Threader;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/helpshift/common/domain/Threader;->thread(Lcom/helpshift/common/domain/F;)Lcom/helpshift/common/domain/F;

    move-result-object p1

    invoke-virtual {p1}, Lcom/helpshift/common/domain/F;->f()V

    :goto_19
    return-void
.end method

.method public runParallel(Lcom/helpshift/common/domain/F;)V
    .registers 3

    .line 203
    invoke-virtual {p0}, Lcom/helpshift/common/domain/Domain;->getParallelThreader()Lcom/helpshift/common/domain/Threader;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/helpshift/common/domain/Threader;->thread(Lcom/helpshift/common/domain/F;)Lcom/helpshift/common/domain/F;

    move-result-object p1

    invoke-virtual {p1}, Lcom/helpshift/common/domain/F;->f()V

    return-void
.end method

.method public runSerial(Lcom/helpshift/common/domain/F;)V
    .registers 3

    .line 199
    invoke-virtual {p0}, Lcom/helpshift/common/domain/Domain;->getSerialThreader()Lcom/helpshift/common/domain/Threader;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/helpshift/common/domain/Threader;->thread(Lcom/helpshift/common/domain/F;)Lcom/helpshift/common/domain/F;

    move-result-object p1

    invoke-virtual {p1}, Lcom/helpshift/common/domain/F;->f()V

    return-void
.end method

.method public setDelegate(Lcom/helpshift/delegate/RootDelegate;)V
    .registers 3

    if-eqz p1, :cond_7

    .line 146
    iget-object v0, p0, Lcom/helpshift/common/domain/Domain;->uiThreadDelegateDecorator:Lcom/helpshift/delegate/UIThreadDelegateDecorator;

    invoke-virtual {v0, p1}, Lcom/helpshift/delegate/UIThreadDelegateDecorator;->setDelegate(Lcom/helpshift/delegate/RootDelegate;)V

    :cond_7
    return-void
.end method
