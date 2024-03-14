.class public Lcom/helpshift/JavaCore;
.super Ljava/lang/Object;
.source "JavaCore.java"

# interfaces
.implements Lcom/helpshift/CoreApi;


# static fields
.field private static final TAG:Ljava/lang/String; = "Helpshift_JavaCore"


# instance fields
.field final analyticsEventDM:Lcom/helpshift/analytics/domainmodel/AnalyticsEventDM;

.field private domain:Lcom/helpshift/common/domain/Domain;

.field private isSDKSessionActive:Z

.field private final metaDataDM:Lcom/helpshift/meta/MetaDataDM;

.field private final parallelThreader:Lcom/helpshift/common/domain/Threader;

.field final platform:Lcom/helpshift/common/platform/Platform;

.field final sdkConfigurationDM:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

.field private userManagerDM:Lcom/helpshift/account/domainmodel/UserManagerDM;


# direct methods
.method public constructor <init>(Lcom/helpshift/common/platform/Platform;)V
    .registers 3

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/helpshift/JavaCore;->isSDKSessionActive:Z

    .line 64
    iput-object p1, p0, Lcom/helpshift/JavaCore;->platform:Lcom/helpshift/common/platform/Platform;

    .line 65
    new-instance v0, Lcom/helpshift/common/domain/Domain;

    invoke-direct {v0, p1}, Lcom/helpshift/common/domain/Domain;-><init>(Lcom/helpshift/common/platform/Platform;)V

    iput-object v0, p0, Lcom/helpshift/JavaCore;->domain:Lcom/helpshift/common/domain/Domain;

    .line 66
    iget-object p1, p0, Lcom/helpshift/JavaCore;->domain:Lcom/helpshift/common/domain/Domain;

    invoke-virtual {p1}, Lcom/helpshift/common/domain/Domain;->getUserManagerDM()Lcom/helpshift/account/domainmodel/UserManagerDM;

    move-result-object p1

    iput-object p1, p0, Lcom/helpshift/JavaCore;->userManagerDM:Lcom/helpshift/account/domainmodel/UserManagerDM;

    .line 67
    iget-object p1, p0, Lcom/helpshift/JavaCore;->domain:Lcom/helpshift/common/domain/Domain;

    invoke-virtual {p1}, Lcom/helpshift/common/domain/Domain;->getParallelThreader()Lcom/helpshift/common/domain/Threader;

    move-result-object p1

    iput-object p1, p0, Lcom/helpshift/JavaCore;->parallelThreader:Lcom/helpshift/common/domain/Threader;

    .line 68
    iget-object p1, p0, Lcom/helpshift/JavaCore;->domain:Lcom/helpshift/common/domain/Domain;

    invoke-virtual {p1}, Lcom/helpshift/common/domain/Domain;->getSDKConfigurationDM()Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    move-result-object p1

    iput-object p1, p0, Lcom/helpshift/JavaCore;->sdkConfigurationDM:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    .line 69
    iget-object p1, p0, Lcom/helpshift/JavaCore;->domain:Lcom/helpshift/common/domain/Domain;

    invoke-virtual {p1}, Lcom/helpshift/common/domain/Domain;->getAnalyticsEventDM()Lcom/helpshift/analytics/domainmodel/AnalyticsEventDM;

    move-result-object p1

    iput-object p1, p0, Lcom/helpshift/JavaCore;->analyticsEventDM:Lcom/helpshift/analytics/domainmodel/AnalyticsEventDM;

    .line 70
    iget-object p1, p0, Lcom/helpshift/JavaCore;->domain:Lcom/helpshift/common/domain/Domain;

    invoke-virtual {p1}, Lcom/helpshift/common/domain/Domain;->getMetaDataDM()Lcom/helpshift/meta/MetaDataDM;

    move-result-object p1

    iput-object p1, p0, Lcom/helpshift/JavaCore;->metaDataDM:Lcom/helpshift/meta/MetaDataDM;

    return-void
.end method

.method static synthetic access$000(Lcom/helpshift/JavaCore;)Lcom/helpshift/common/domain/Domain;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/helpshift/JavaCore;->domain:Lcom/helpshift/common/domain/Domain;

    return-object p0
.end method

.method private runParallel(Lcom/helpshift/common/domain/F;)V
    .registers 3

    .line 396
    iget-object v0, p0, Lcom/helpshift/JavaCore;->parallelThreader:Lcom/helpshift/common/domain/Threader;

    invoke-interface {v0, p1}, Lcom/helpshift/common/domain/Threader;->thread(Lcom/helpshift/common/domain/F;)Lcom/helpshift/common/domain/F;

    move-result-object p1

    invoke-virtual {p1}, Lcom/helpshift/common/domain/F;->f()V

    return-void
.end method


# virtual methods
.method public declared-synchronized clearAnonymousUser()Z
    .registers 4

    monitor-enter p0

    .line 143
    :try_start_1
    new-instance v0, Lcom/helpshift/account/domainmodel/UserLoginManager;

    iget-object v1, p0, Lcom/helpshift/JavaCore;->domain:Lcom/helpshift/common/domain/Domain;

    iget-object v2, p0, Lcom/helpshift/JavaCore;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-direct {v0, p0, v1, v2}, Lcom/helpshift/account/domainmodel/UserLoginManager;-><init>(Lcom/helpshift/CoreApi;Lcom/helpshift/common/domain/Domain;Lcom/helpshift/common/platform/Platform;)V

    invoke-virtual {v0}, Lcom/helpshift/account/domainmodel/UserLoginManager;->clearAnonymousUser()Z

    move-result v0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getActiveConversation()Lcom/helpshift/conversation/activeconversation/model/Conversation;
    .registers 2

    .line 110
    invoke-virtual {p0}, Lcom/helpshift/JavaCore;->getConversationController()Lcom/helpshift/conversation/domainmodel/ConversationController;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Lcom/helpshift/conversation/domainmodel/ConversationController;->getActiveConversationFromStorage()Lcom/helpshift/conversation/activeconversation/model/Conversation;

    move-result-object v0

    return-object v0
.end method

.method public getActiveConversationOrPreIssue()Lcom/helpshift/conversation/activeconversation/model/Conversation;
    .registers 2

    .line 116
    invoke-virtual {p0}, Lcom/helpshift/JavaCore;->getConversationController()Lcom/helpshift/conversation/domainmodel/ConversationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/conversation/domainmodel/ConversationController;->getActiveConversationOrPreIssue()Lcom/helpshift/conversation/activeconversation/model/Conversation;

    move-result-object v0

    return-object v0
.end method

.method public getAnalyticsEventDM()Lcom/helpshift/analytics/domainmodel/AnalyticsEventDM;
    .registers 2

    .line 231
    iget-object v0, p0, Lcom/helpshift/JavaCore;->analyticsEventDM:Lcom/helpshift/analytics/domainmodel/AnalyticsEventDM;

    return-object v0
.end method

.method public getAttachmentFileManagerDM()Lcom/helpshift/common/domain/AttachmentFileManagerDM;
    .registers 2

    .line 350
    iget-object v0, p0, Lcom/helpshift/JavaCore;->domain:Lcom/helpshift/common/domain/Domain;

    invoke-virtual {v0}, Lcom/helpshift/common/domain/Domain;->getAttachmentFileManagerDM()Lcom/helpshift/common/domain/AttachmentFileManagerDM;

    move-result-object v0

    return-object v0
.end method

.method public getAttachmentPreviewModel(Lcom/helpshift/conversation/activeconversation/AttachmentPreviewRenderer;)Lcom/helpshift/conversation/viewmodel/AttachmentPreviewVM;
    .registers 4

    .line 105
    new-instance v0, Lcom/helpshift/conversation/viewmodel/AttachmentPreviewVM;

    iget-object v1, p0, Lcom/helpshift/JavaCore;->domain:Lcom/helpshift/common/domain/Domain;

    invoke-direct {v0, v1, p1}, Lcom/helpshift/conversation/viewmodel/AttachmentPreviewVM;-><init>(Lcom/helpshift/common/domain/Domain;Lcom/helpshift/conversation/activeconversation/AttachmentPreviewRenderer;)V

    return-object v0
.end method

.method public getAutoRetryFailedEventDM()Lcom/helpshift/common/AutoRetryFailedEventDM;
    .registers 2

    .line 355
    iget-object v0, p0, Lcom/helpshift/JavaCore;->domain:Lcom/helpshift/common/domain/Domain;

    invoke-virtual {v0}, Lcom/helpshift/common/domain/Domain;->getAutoRetryFailedEventDM()Lcom/helpshift/common/AutoRetryFailedEventDM;

    move-result-object v0

    return-object v0
.end method

.method public getConfigFetchDM()Lcom/helpshift/configuration/domainmodel/ConfigFetchDM;
    .registers 2

    .line 281
    iget-object v0, p0, Lcom/helpshift/JavaCore;->domain:Lcom/helpshift/common/domain/Domain;

    invoke-virtual {v0}, Lcom/helpshift/common/domain/Domain;->getConfigFetchDM()Lcom/helpshift/configuration/domainmodel/ConfigFetchDM;

    move-result-object v0

    return-object v0
.end method

.method public getConversationController()Lcom/helpshift/conversation/domainmodel/ConversationController;
    .registers 2

    .line 330
    invoke-virtual {p0}, Lcom/helpshift/JavaCore;->getConversationInboxManagerDM()Lcom/helpshift/conversation/domainmodel/ConversationInboxManagerDM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/conversation/domainmodel/ConversationInboxManagerDM;->getActiveConversationInboxDM()Lcom/helpshift/conversation/domainmodel/ConversationController;

    move-result-object v0

    return-object v0
.end method

.method getConversationInboxManagerDM()Lcom/helpshift/conversation/domainmodel/ConversationInboxManagerDM;
    .registers 2

    .line 387
    iget-object v0, p0, Lcom/helpshift/JavaCore;->domain:Lcom/helpshift/common/domain/Domain;

    invoke-virtual {v0}, Lcom/helpshift/common/domain/Domain;->getConversationInboxManagerDM()Lcom/helpshift/conversation/domainmodel/ConversationInboxManagerDM;

    move-result-object v0

    return-object v0
.end method

.method public getConversationInboxPoller()Lcom/helpshift/conversation/ConversationInboxPoller;
    .registers 2

    .line 291
    invoke-virtual {p0}, Lcom/helpshift/JavaCore;->getConversationController()Lcom/helpshift/conversation/domainmodel/ConversationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/conversation/domainmodel/ConversationController;->getConversationInboxPoller()Lcom/helpshift/conversation/ConversationInboxPoller;

    move-result-object v0

    return-object v0
.end method

.method public getConversationInfoViewModel(Lcom/helpshift/conversation/activeconversation/ConversationInfoRenderer;)Lcom/helpshift/conversation/viewmodel/ConversationInfoVM;
    .registers 4

    .line 100
    new-instance v0, Lcom/helpshift/conversation/viewmodel/ConversationInfoVM;

    iget-object v1, p0, Lcom/helpshift/JavaCore;->domain:Lcom/helpshift/common/domain/Domain;

    invoke-direct {v0, v1, p1}, Lcom/helpshift/conversation/viewmodel/ConversationInfoVM;-><init>(Lcom/helpshift/common/domain/Domain;Lcom/helpshift/conversation/activeconversation/ConversationInfoRenderer;)V

    return-object v0
.end method

.method public getConversationSetupVM(Lcom/helpshift/conversation/activeconversation/usersetup/ConversationSetupRenderer;)Lcom/helpshift/conversation/viewmodel/ConversationSetupVM;
    .registers 6

    .line 121
    new-instance v0, Lcom/helpshift/conversation/domainmodel/ConversationSetupDM;

    iget-object v1, p0, Lcom/helpshift/JavaCore;->platform:Lcom/helpshift/common/platform/Platform;

    iget-object v2, p0, Lcom/helpshift/JavaCore;->domain:Lcom/helpshift/common/domain/Domain;

    invoke-virtual {v2}, Lcom/helpshift/common/domain/Domain;->getConfigFetchDM()Lcom/helpshift/configuration/domainmodel/ConfigFetchDM;

    move-result-object v2

    iget-object v3, p0, Lcom/helpshift/JavaCore;->userManagerDM:Lcom/helpshift/account/domainmodel/UserManagerDM;

    .line 122
    invoke-virtual {v3}, Lcom/helpshift/account/domainmodel/UserManagerDM;->getActiveUserSetupDM()Lcom/helpshift/account/domainmodel/UserSetupDM;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/helpshift/conversation/domainmodel/ConversationSetupDM;-><init>(Lcom/helpshift/common/platform/Platform;Lcom/helpshift/configuration/domainmodel/ConfigFetchDM;Lcom/helpshift/account/domainmodel/UserSetupDM;)V

    .line 123
    new-instance v1, Lcom/helpshift/conversation/viewmodel/ConversationSetupVM;

    iget-object v2, p0, Lcom/helpshift/JavaCore;->platform:Lcom/helpshift/common/platform/Platform;

    iget-object v3, p0, Lcom/helpshift/JavaCore;->domain:Lcom/helpshift/common/domain/Domain;

    invoke-direct {v1, v2, v3, v0, p1}, Lcom/helpshift/conversation/viewmodel/ConversationSetupVM;-><init>(Lcom/helpshift/common/platform/Platform;Lcom/helpshift/common/domain/Domain;Lcom/helpshift/conversation/domainmodel/ConversationSetupDM;Lcom/helpshift/conversation/activeconversation/usersetup/ConversationSetupRenderer;)V

    return-object v1
.end method

.method public getConversationalViewModel(ZLjava/lang/Long;Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;Z)Lcom/helpshift/conversation/viewmodel/ConversationalVM;
    .registers 14

    .line 87
    invoke-virtual {p0}, Lcom/helpshift/JavaCore;->getConversationController()Lcom/helpshift/conversation/domainmodel/ConversationController;

    move-result-object v0

    .line 88
    invoke-virtual {v0, p1, p2}, Lcom/helpshift/conversation/domainmodel/ConversationController;->getViewableConversation(ZLjava/lang/Long;)Lcom/helpshift/conversation/activeconversation/ViewableConversation;

    move-result-object v5

    .line 89
    new-instance p2, Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    iget-object v2, p0, Lcom/helpshift/JavaCore;->platform:Lcom/helpshift/common/platform/Platform;

    iget-object v3, p0, Lcom/helpshift/JavaCore;->domain:Lcom/helpshift/common/domain/Domain;

    .line 91
    invoke-virtual {p0}, Lcom/helpshift/JavaCore;->getConversationController()Lcom/helpshift/conversation/domainmodel/ConversationController;

    move-result-object v4

    move-object v1, p2

    move-object v6, p3

    move v7, p1

    move v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;-><init>(Lcom/helpshift/common/platform/Platform;Lcom/helpshift/common/domain/Domain;Lcom/helpshift/conversation/domainmodel/ConversationController;Lcom/helpshift/conversation/activeconversation/ViewableConversation;Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;ZZ)V

    return-object p2
.end method

.method public getCryptoDM()Lcom/helpshift/crypto/CryptoDM;
    .registers 2

    .line 340
    iget-object v0, p0, Lcom/helpshift/JavaCore;->domain:Lcom/helpshift/common/domain/Domain;

    invoke-virtual {v0}, Lcom/helpshift/common/domain/Domain;->getCryptoDM()Lcom/helpshift/crypto/CryptoDM;

    move-result-object v0

    return-object v0
.end method

.method public getCustomIssueFieldDM()Lcom/helpshift/cif/CustomIssueFieldDM;
    .registers 2

    .line 276
    iget-object v0, p0, Lcom/helpshift/JavaCore;->domain:Lcom/helpshift/common/domain/Domain;

    invoke-virtual {v0}, Lcom/helpshift/common/domain/Domain;->getCustomIssueFieldDM()Lcom/helpshift/cif/CustomIssueFieldDM;

    move-result-object v0

    return-object v0
.end method

.method public getDelegate()Lcom/helpshift/delegate/UIThreadDelegateDecorator;
    .registers 2

    .line 247
    iget-object v0, p0, Lcom/helpshift/JavaCore;->domain:Lcom/helpshift/common/domain/Domain;

    invoke-virtual {v0}, Lcom/helpshift/common/domain/Domain;->getDelegate()Lcom/helpshift/delegate/UIThreadDelegateDecorator;

    move-result-object v0

    return-object v0
.end method

.method public getDomain()Lcom/helpshift/common/domain/Domain;
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/helpshift/JavaCore;->domain:Lcom/helpshift/common/domain/Domain;

    return-object v0
.end method

.method public getErrorReportsDM()Lcom/helpshift/logger/ErrorReportsDM;
    .registers 2

    .line 392
    iget-object v0, p0, Lcom/helpshift/JavaCore;->domain:Lcom/helpshift/common/domain/Domain;

    invoke-virtual {v0}, Lcom/helpshift/common/domain/Domain;->getErrorReportsDM()Lcom/helpshift/logger/ErrorReportsDM;

    move-result-object v0

    return-object v0
.end method

.method public getFaqDM()Lcom/helpshift/faq/FaqsDM;
    .registers 2

    .line 335
    iget-object v0, p0, Lcom/helpshift/JavaCore;->domain:Lcom/helpshift/common/domain/Domain;

    invoke-virtual {v0}, Lcom/helpshift/common/domain/Domain;->getFaqsDM()Lcom/helpshift/faq/FaqsDM;

    move-result-object v0

    return-object v0
.end method

.method public getLocaleProviderDM()Lcom/helpshift/localeprovider/domainmodel/LocaleProviderDM;
    .registers 2

    .line 345
    iget-object v0, p0, Lcom/helpshift/JavaCore;->domain:Lcom/helpshift/common/domain/Domain;

    invoke-virtual {v0}, Lcom/helpshift/common/domain/Domain;->getLocaleProviderDM()Lcom/helpshift/localeprovider/domainmodel/LocaleProviderDM;

    move-result-object v0

    return-object v0
.end method

.method public getMetaDataDM()Lcom/helpshift/meta/MetaDataDM;
    .registers 2

    .line 271
    iget-object v0, p0, Lcom/helpshift/JavaCore;->metaDataDM:Lcom/helpshift/meta/MetaDataDM;

    return-object v0
.end method

.method public getNewConversationViewModel(Lcom/helpshift/conversation/viewmodel/NewConversationRenderer;)Lcom/helpshift/conversation/viewmodel/NewConversationVM;
    .registers 6

    .line 80
    new-instance v0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;

    iget-object v1, p0, Lcom/helpshift/JavaCore;->platform:Lcom/helpshift/common/platform/Platform;

    iget-object v2, p0, Lcom/helpshift/JavaCore;->domain:Lcom/helpshift/common/domain/Domain;

    invoke-virtual {p0}, Lcom/helpshift/JavaCore;->getConversationController()Lcom/helpshift/conversation/domainmodel/ConversationController;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/helpshift/conversation/viewmodel/NewConversationVM;-><init>(Lcom/helpshift/common/platform/Platform;Lcom/helpshift/common/domain/Domain;Lcom/helpshift/conversation/domainmodel/ConversationController;Lcom/helpshift/conversation/viewmodel/NewConversationRenderer;)V

    return-object v0
.end method

.method public getNotificationCountAsync(Lcom/helpshift/util/FetchDataFromThread;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpshift/util/FetchDataFromThread<",
            "Lcom/helpshift/util/ValuePair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 307
    iget-object v0, p0, Lcom/helpshift/JavaCore;->domain:Lcom/helpshift/common/domain/Domain;

    new-instance v1, Lcom/helpshift/JavaCore$3;

    invoke-direct {v1, p0, p1}, Lcom/helpshift/JavaCore$3;-><init>(Lcom/helpshift/JavaCore;Lcom/helpshift/util/FetchDataFromThread;)V

    invoke-virtual {v0, v1}, Lcom/helpshift/common/domain/Domain;->runParallel(Lcom/helpshift/common/domain/F;)V

    return-void
.end method

.method public getNotificationCountSync()I
    .registers 2

    .line 301
    invoke-virtual {p0}, Lcom/helpshift/JavaCore;->getConversationController()Lcom/helpshift/conversation/domainmodel/ConversationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/conversation/domainmodel/ConversationController;->getNotificationCountSync()I

    move-result v0

    return v0
.end method

.method public getSDKConfigurationDM()Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;
    .registers 2

    .line 286
    iget-object v0, p0, Lcom/helpshift/JavaCore;->sdkConfigurationDM:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    return-object v0
.end method

.method public getUserManagerDM()Lcom/helpshift/account/domainmodel/UserManagerDM;
    .registers 2

    .line 266
    iget-object v0, p0, Lcom/helpshift/JavaCore;->userManagerDM:Lcom/helpshift/account/domainmodel/UserManagerDM;

    return-object v0
.end method

.method public handlePushNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 296
    invoke-virtual {p0}, Lcom/helpshift/JavaCore;->getConversationController()Lcom/helpshift/conversation/domainmodel/ConversationController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/helpshift/conversation/domainmodel/ConversationController;->handlePushNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isActiveConversationActionable()Z
    .registers 2

    .line 128
    invoke-virtual {p0}, Lcom/helpshift/JavaCore;->getConversationController()Lcom/helpshift/conversation/domainmodel/ConversationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/conversation/domainmodel/ConversationController;->isActiveConversationActionable()Z

    move-result v0

    return v0
.end method

.method public isSDKSessionActive()Z
    .registers 2

    .line 133
    iget-boolean v0, p0, Lcom/helpshift/JavaCore;->isSDKSessionActive:Z

    return v0
.end method

.method public declared-synchronized login(Lcom/helpshift/HelpshiftUser;)Z
    .registers 5

    monitor-enter p0

    .line 147
    :try_start_1
    new-instance v0, Lcom/helpshift/account/domainmodel/UserLoginManager;

    iget-object v1, p0, Lcom/helpshift/JavaCore;->domain:Lcom/helpshift/common/domain/Domain;

    iget-object v2, p0, Lcom/helpshift/JavaCore;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-direct {v0, p0, v1, v2}, Lcom/helpshift/account/domainmodel/UserLoginManager;-><init>(Lcom/helpshift/CoreApi;Lcom/helpshift/common/domain/Domain;Lcom/helpshift/common/platform/Platform;)V

    invoke-virtual {v0, p1}, Lcom/helpshift/account/domainmodel/UserLoginManager;->login(Lcom/helpshift/HelpshiftUser;)Z

    move-result p1
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return p1

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized logout()Z
    .registers 4

    monitor-enter p0

    .line 160
    :try_start_1
    new-instance v0, Lcom/helpshift/account/domainmodel/UserLoginManager;

    iget-object v1, p0, Lcom/helpshift/JavaCore;->domain:Lcom/helpshift/common/domain/Domain;

    iget-object v2, p0, Lcom/helpshift/JavaCore;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-direct {v0, p0, v1, v2}, Lcom/helpshift/account/domainmodel/UserLoginManager;-><init>(Lcom/helpshift/CoreApi;Lcom/helpshift/common/domain/Domain;Lcom/helpshift/common/platform/Platform;)V

    invoke-virtual {v0}, Lcom/helpshift/account/domainmodel/UserLoginManager;->logout()Z

    move-result v0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onSDKSessionEnded()V
    .registers 2

    const/4 v0, 0x0

    .line 191
    iput-boolean v0, p0, Lcom/helpshift/JavaCore;->isSDKSessionActive:Z

    .line 192
    invoke-virtual {p0}, Lcom/helpshift/JavaCore;->getDelegate()Lcom/helpshift/delegate/UIThreadDelegateDecorator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/delegate/UIThreadDelegateDecorator;->sessionEnded()V

    return-void
.end method

.method public onSDKSessionStarted()V
    .registers 2

    const/4 v0, 0x1

    .line 185
    iput-boolean v0, p0, Lcom/helpshift/JavaCore;->isSDKSessionActive:Z

    .line 186
    invoke-virtual {p0}, Lcom/helpshift/JavaCore;->getDelegate()Lcom/helpshift/delegate/UIThreadDelegateDecorator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/delegate/UIThreadDelegateDecorator;->sessionBegan()V

    return-void
.end method

.method public refreshPoller()V
    .registers 3

    .line 197
    invoke-virtual {p0}, Lcom/helpshift/JavaCore;->getConversationInboxPoller()Lcom/helpshift/conversation/ConversationInboxPoller;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/helpshift/conversation/ConversationInboxPoller;->refreshPoller(Z)V

    return-void
.end method

.method public resetPreIssueConversations()V
    .registers 2

    .line 383
    iget-object v0, p0, Lcom/helpshift/JavaCore;->domain:Lcom/helpshift/common/domain/Domain;

    invoke-virtual {v0}, Lcom/helpshift/common/domain/Domain;->getConversationInboxManagerDM()Lcom/helpshift/conversation/domainmodel/ConversationInboxManagerDM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/conversation/domainmodel/ConversationInboxManagerDM;->resetPreIssueConversations()V

    return-void
.end method

.method public resetUsersSyncStatusAndStartSetupForActiveUser()V
    .registers 2

    .line 401
    invoke-virtual {p0}, Lcom/helpshift/JavaCore;->getUserManagerDM()Lcom/helpshift/account/domainmodel/UserManagerDM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/account/domainmodel/UserManagerDM;->resetSyncStateForAllUsers()V

    .line 402
    invoke-virtual {p0}, Lcom/helpshift/JavaCore;->getUserManagerDM()Lcom/helpshift/account/domainmodel/UserManagerDM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/account/domainmodel/UserManagerDM;->getActiveUserSetupDM()Lcom/helpshift/account/domainmodel/UserSetupDM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/account/domainmodel/UserSetupDM;->startSetup()V

    return-void
.end method

.method public sendAnalyticsEvent()V
    .registers 2

    .line 216
    new-instance v0, Lcom/helpshift/JavaCore$1;

    invoke-direct {v0, p0}, Lcom/helpshift/JavaCore$1;-><init>(Lcom/helpshift/JavaCore;)V

    invoke-direct {p0, v0}, Lcom/helpshift/JavaCore;->runParallel(Lcom/helpshift/common/domain/F;)V

    return-void
.end method

.method public sendAppStartEvent()V
    .registers 2

    .line 236
    new-instance v0, Lcom/helpshift/JavaCore$2;

    invoke-direct {v0, p0}, Lcom/helpshift/JavaCore$2;-><init>(Lcom/helpshift/JavaCore;)V

    invoke-direct {p0, v0}, Lcom/helpshift/JavaCore;->runParallel(Lcom/helpshift/common/domain/F;)V

    return-void
.end method

.method public sendFailedApiCalls()V
    .registers 2

    .line 254
    invoke-virtual {p0}, Lcom/helpshift/JavaCore;->getFaqDM()Lcom/helpshift/faq/FaqsDM;

    .line 255
    invoke-virtual {p0}, Lcom/helpshift/JavaCore;->getUserManagerDM()Lcom/helpshift/account/domainmodel/UserManagerDM;

    move-result-object v0

    .line 256
    invoke-virtual {p0}, Lcom/helpshift/JavaCore;->getConversationController()Lcom/helpshift/conversation/domainmodel/ConversationController;

    .line 259
    invoke-virtual {v0}, Lcom/helpshift/account/domainmodel/UserManagerDM;->getActiveUserSetupDM()Lcom/helpshift/account/domainmodel/UserSetupDM;

    .line 260
    invoke-virtual {p0}, Lcom/helpshift/JavaCore;->getAnalyticsEventDM()Lcom/helpshift/analytics/domainmodel/AnalyticsEventDM;

    .line 261
    iget-object v0, p0, Lcom/helpshift/JavaCore;->domain:Lcom/helpshift/common/domain/Domain;

    invoke-virtual {v0}, Lcom/helpshift/common/domain/Domain;->getAutoRetryFailedEventDM()Lcom/helpshift/common/AutoRetryFailedEventDM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/common/AutoRetryFailedEventDM;->sendAllEvents()V

    return-void
.end method

.method public sendRequestIdsForSuccessfulApiCalls()V
    .registers 3

    .line 360
    iget-object v0, p0, Lcom/helpshift/JavaCore;->domain:Lcom/helpshift/common/domain/Domain;

    new-instance v1, Lcom/helpshift/JavaCore$4;

    invoke-direct {v1, p0}, Lcom/helpshift/JavaCore$4;-><init>(Lcom/helpshift/JavaCore;)V

    invoke-virtual {v0, v1}, Lcom/helpshift/common/domain/Domain;->runParallel(Lcom/helpshift/common/domain/F;)V

    return-void
.end method

.method public setDelegateListener(Lcom/helpshift/delegate/RootDelegate;)V
    .registers 3

    .line 138
    iget-object v0, p0, Lcom/helpshift/JavaCore;->domain:Lcom/helpshift/common/domain/Domain;

    invoke-virtual {v0, p1}, Lcom/helpshift/common/domain/Domain;->setDelegate(Lcom/helpshift/delegate/RootDelegate;)V

    return-void
.end method

.method public setNameAndEmail(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 154
    invoke-virtual {p0}, Lcom/helpshift/JavaCore;->getConversationController()Lcom/helpshift/conversation/domainmodel/ConversationController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/helpshift/conversation/domainmodel/ConversationController;->saveName(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcom/helpshift/JavaCore;->getConversationController()Lcom/helpshift/conversation/domainmodel/ConversationController;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/helpshift/conversation/domainmodel/ConversationController;->saveEmail(Ljava/lang/String;)V

    return-void
.end method

.method public setPushToken(Ljava/lang/String;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 170
    :cond_3
    iget-object v0, p0, Lcom/helpshift/JavaCore;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-interface {v0}, Lcom/helpshift/common/platform/Platform;->getDevice()Lcom/helpshift/common/platform/Device;

    move-result-object v0

    invoke-interface {v0}, Lcom/helpshift/common/platform/Device;->getPushToken()Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    return-void

    .line 175
    :cond_14
    iget-object v0, p0, Lcom/helpshift/JavaCore;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-interface {v0}, Lcom/helpshift/common/platform/Platform;->getDevice()Lcom/helpshift/common/platform/Device;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/helpshift/common/platform/Device;->setPushToken(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Lcom/helpshift/JavaCore;->getUserManagerDM()Lcom/helpshift/account/domainmodel/UserManagerDM;

    move-result-object p1

    invoke-virtual {p1}, Lcom/helpshift/account/domainmodel/UserManagerDM;->resetPushTokenSyncStatusForUsers()V

    .line 180
    invoke-virtual {p0}, Lcom/helpshift/JavaCore;->getUserManagerDM()Lcom/helpshift/account/domainmodel/UserManagerDM;

    move-result-object p1

    invoke-virtual {p1}, Lcom/helpshift/account/domainmodel/UserManagerDM;->sendPushToken()V

    return-void
.end method

.method public updateApiConfig(Lcom/helpshift/configuration/dto/RootApiConfig;)V
    .registers 4

    .line 207
    iget-object v0, p0, Lcom/helpshift/JavaCore;->sdkConfigurationDM:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    invoke-virtual {v0, p1}, Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;->updateApiConfig(Lcom/helpshift/configuration/dto/RootApiConfig;)V

    .line 208
    iget-object v0, p1, Lcom/helpshift/configuration/dto/RootApiConfig;->enableFullPrivacy:Ljava/lang/Boolean;

    if-eqz v0, :cond_1d

    iget-object p1, p1, Lcom/helpshift/configuration/dto/RootApiConfig;->enableFullPrivacy:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 210
    new-instance p1, Lcom/helpshift/account/domainmodel/UserLoginManager;

    iget-object v0, p0, Lcom/helpshift/JavaCore;->domain:Lcom/helpshift/common/domain/Domain;

    iget-object v1, p0, Lcom/helpshift/JavaCore;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-direct {p1, p0, v0, v1}, Lcom/helpshift/account/domainmodel/UserLoginManager;-><init>(Lcom/helpshift/CoreApi;Lcom/helpshift/common/domain/Domain;Lcom/helpshift/common/platform/Platform;)V

    invoke-virtual {p1}, Lcom/helpshift/account/domainmodel/UserLoginManager;->clearPersonallyIdentifiableInformation()V

    :cond_1d
    return-void
.end method

.method public updateConversationExpiryProperties()V
    .registers 2

    .line 407
    invoke-virtual {p0}, Lcom/helpshift/JavaCore;->getConversationController()Lcom/helpshift/conversation/domainmodel/ConversationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/conversation/domainmodel/ConversationController;->updateActiveConversationExpiryProperties()V

    return-void
.end method

.method public updateInstallConfig(Lcom/helpshift/configuration/dto/RootInstallConfig;)V
    .registers 3

    .line 202
    iget-object v0, p0, Lcom/helpshift/JavaCore;->sdkConfigurationDM:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    invoke-virtual {v0, p1}, Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;->updateInstallConfig(Lcom/helpshift/configuration/dto/RootInstallConfig;)V

    return-void
.end method
