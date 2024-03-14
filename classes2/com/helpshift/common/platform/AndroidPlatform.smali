.class public Lcom/helpshift/common/platform/AndroidPlatform;
.super Ljava/lang/Object;
.source "AndroidPlatform.java"

# interfaces
.implements Lcom/helpshift/common/platform/Platform;


# static fields
.field private static final TAG:Ljava/lang/String; = "AndroidPlatform"


# instance fields
.field private analyticsEventDAO:Lcom/helpshift/analytics/AnalyticsEventDAO;

.field private apiKey:Ljava/lang/String;

.field private appId:Ljava/lang/String;

.field private backupDAO:Lcom/helpshift/common/dao/BackupDAO;

.field private clearedUserDAO:Lcom/helpshift/account/dao/ClearedUserDAO;

.field private final context:Landroid/content/Context;

.field private conversationDAO:Lcom/helpshift/conversation/dao/ConversationDAO;

.field private conversationInboxDAO:Lcom/helpshift/conversation/dao/ConversationInboxDAO;

.field private customIssueFieldDAO:Lcom/helpshift/cif/dao/CustomIssueFieldDAO;

.field private data:Lcom/helpshift/support/HSApiData;

.field private device:Lcom/helpshift/common/platform/Device;

.field private domain:Ljava/lang/String;

.field private downloader:Lcom/helpshift/downloader/SupportDownloader;

.field private faqEventDAO:Lcom/helpshift/faq/dao/FaqEventDAO;

.field private faqSearchDM:Lcom/helpshift/faq/domainmodel/FAQSearchDM;

.field private hsNetworkMetadataDAO:Lcom/helpshift/common/domain/network/dao/HSNetworkMetadataDAO;

.field private jsonifier:Lcom/helpshift/common/platform/Jsonifier;

.field private legacyAnalyticsEventIDDAO:Lcom/helpshift/migration/LegacyAnalyticsEventIDDAO;

.field private legacyProfileMigrationDAO:Lcom/helpshift/migration/LegacyProfileMigrationDAO;

.field private metaDataDAO:Lcom/helpshift/meta/dao/MetaDataDAO;

.field private networkRequestDAO:Lcom/helpshift/common/platform/network/NetworkRequestDAO;

.field private redactionDAO:Lcom/helpshift/redaction/RedactionDAO;

.field private smartIntentDAO:Lcom/helpshift/conversation/smartintent/dao/SmartIntentDAO;

.field private storage:Lcom/helpshift/common/platform/KVStore;

.field private uiContext:Landroid/content/Context;

.field private uiThreader:Lcom/helpshift/common/domain/Threader;

.field private userDAO:Lcom/helpshift/account/dao/UserDAO;

.field private userManagerDAO:Lcom/helpshift/account/dao/AndroidUserManagerDAO;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/helpshift/common/platform/AndroidPlatform;->context:Landroid/content/Context;

    .line 96
    iput-object p2, p0, Lcom/helpshift/common/platform/AndroidPlatform;->apiKey:Ljava/lang/String;

    .line 97
    iput-object p3, p0, Lcom/helpshift/common/platform/AndroidPlatform;->domain:Ljava/lang/String;

    .line 98
    iput-object p4, p0, Lcom/helpshift/common/platform/AndroidPlatform;->appId:Ljava/lang/String;

    .line 100
    new-instance p2, Lcom/helpshift/support/storage/SupportKeyValueDBStorage;

    invoke-direct {p2, p1}, Lcom/helpshift/support/storage/SupportKeyValueDBStorage;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/helpshift/common/platform/AndroidPlatform;->storage:Lcom/helpshift/common/platform/KVStore;

    .line 101
    new-instance p2, Lcom/helpshift/common/platform/AndroidBackupDAO;

    invoke-direct {p2}, Lcom/helpshift/common/platform/AndroidBackupDAO;-><init>()V

    iput-object p2, p0, Lcom/helpshift/common/platform/AndroidPlatform;->backupDAO:Lcom/helpshift/common/dao/BackupDAO;

    .line 102
    new-instance p2, Lcom/helpshift/common/platform/AndroidDevice;

    iget-object p3, p0, Lcom/helpshift/common/platform/AndroidPlatform;->storage:Lcom/helpshift/common/platform/KVStore;

    iget-object p4, p0, Lcom/helpshift/common/platform/AndroidPlatform;->backupDAO:Lcom/helpshift/common/dao/BackupDAO;

    invoke-direct {p2, p1, p3, p4}, Lcom/helpshift/common/platform/AndroidDevice;-><init>(Landroid/content/Context;Lcom/helpshift/common/platform/KVStore;Lcom/helpshift/common/dao/BackupDAO;)V

    .line 103
    invoke-virtual {p2}, Lcom/helpshift/common/platform/AndroidDevice;->updateDeviceIdInBackupDAO()V

    .line 104
    iput-object p2, p0, Lcom/helpshift/common/platform/AndroidPlatform;->device:Lcom/helpshift/common/platform/Device;

    .line 106
    new-instance p2, Lcom/helpshift/account/dao/AndroidUserDAO;

    invoke-static {p1}, Lcom/helpshift/account/dao/UserDB;->getInstance(Landroid/content/Context;)Lcom/helpshift/account/dao/UserDB;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/helpshift/account/dao/AndroidUserDAO;-><init>(Lcom/helpshift/account/dao/UserDB;)V

    iput-object p2, p0, Lcom/helpshift/common/platform/AndroidPlatform;->userDAO:Lcom/helpshift/account/dao/UserDAO;

    .line 107
    new-instance p2, Lcom/helpshift/account/dao/AndroidUserManagerDAO;

    iget-object p3, p0, Lcom/helpshift/common/platform/AndroidPlatform;->storage:Lcom/helpshift/common/platform/KVStore;

    invoke-direct {p2, p3}, Lcom/helpshift/account/dao/AndroidUserManagerDAO;-><init>(Lcom/helpshift/common/platform/KVStore;)V

    iput-object p2, p0, Lcom/helpshift/common/platform/AndroidPlatform;->userManagerDAO:Lcom/helpshift/account/dao/AndroidUserManagerDAO;

    .line 108
    new-instance p2, Lcom/helpshift/account/dao/AndroidClearedUserDAO;

    invoke-static {p1}, Lcom/helpshift/account/dao/UserDB;->getInstance(Landroid/content/Context;)Lcom/helpshift/account/dao/UserDB;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/helpshift/account/dao/AndroidClearedUserDAO;-><init>(Lcom/helpshift/account/dao/UserDB;)V

    iput-object p2, p0, Lcom/helpshift/common/platform/AndroidPlatform;->clearedUserDAO:Lcom/helpshift/account/dao/ClearedUserDAO;

    .line 109
    new-instance p1, Lcom/helpshift/common/platform/AndroidJsonifier;

    invoke-direct {p1}, Lcom/helpshift/common/platform/AndroidJsonifier;-><init>()V

    iput-object p1, p0, Lcom/helpshift/common/platform/AndroidPlatform;->jsonifier:Lcom/helpshift/common/platform/Jsonifier;

    .line 110
    new-instance p1, Lcom/helpshift/support/storage/AndroidAnalyticsEventDAO;

    iget-object p2, p0, Lcom/helpshift/common/platform/AndroidPlatform;->storage:Lcom/helpshift/common/platform/KVStore;

    invoke-direct {p1, p2}, Lcom/helpshift/support/storage/AndroidAnalyticsEventDAO;-><init>(Lcom/helpshift/common/platform/KVStore;)V

    iput-object p1, p0, Lcom/helpshift/common/platform/AndroidPlatform;->analyticsEventDAO:Lcom/helpshift/analytics/AnalyticsEventDAO;

    .line 111
    new-instance p1, Lcom/helpshift/common/platform/AndroidMetadataDAO;

    iget-object p2, p0, Lcom/helpshift/common/platform/AndroidPlatform;->storage:Lcom/helpshift/common/platform/KVStore;

    invoke-direct {p1, p2}, Lcom/helpshift/common/platform/AndroidMetadataDAO;-><init>(Lcom/helpshift/common/platform/KVStore;)V

    iput-object p1, p0, Lcom/helpshift/common/platform/AndroidPlatform;->metaDataDAO:Lcom/helpshift/meta/dao/MetaDataDAO;

    return-void
.end method

.method private declared-synchronized getData()Lcom/helpshift/support/HSApiData;
    .registers 3

    monitor-enter p0

    .line 448
    :try_start_1
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidPlatform;->data:Lcom/helpshift/support/HSApiData;

    if-nez v0, :cond_e

    .line 449
    new-instance v0, Lcom/helpshift/support/HSApiData;

    iget-object v1, p0, Lcom/helpshift/common/platform/AndroidPlatform;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/helpshift/support/HSApiData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/helpshift/common/platform/AndroidPlatform;->data:Lcom/helpshift/support/HSApiData;

    .line 451
    :cond_e
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidPlatform;->data:Lcom/helpshift/support/HSApiData;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public canReadFileAtUri(Ljava/lang/String;)Z
    .registers 3

    .line 427
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidPlatform;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/helpshift/android/commons/downloader/HsUriUtils;->canReadFileAtUri(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public clearNotifications(Ljava/lang/String;)V
    .registers 4

    .line 376
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidPlatform;->context:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/helpshift/util/ApplicationUtil;->cancelNotification(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public compressAndCopyAttachment(Lcom/helpshift/conversation/dto/AttachmentPickerFile;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpshift/common/exception/RootAPIException;
        }
    .end annotation

    .line 319
    :try_start_0
    invoke-static {p1}, Lcom/helpshift/support/util/AttachmentUtil;->copyAttachment(Lcom/helpshift/conversation/dto/AttachmentPickerFile;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p1

    .line 322
    invoke-static {p1}, Lcom/helpshift/common/exception/RootAPIException;->wrap(Ljava/lang/Exception;)Lcom/helpshift/common/exception/RootAPIException;

    move-result-object p1

    throw p1
.end method

.method public compressAndStoreScreenshot(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 301
    :try_start_0
    invoke-static {p1}, Lcom/helpshift/support/util/AttachmentUtil;->copyAttachment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_b
    .catchall {:try_start_0 .. :try_end_4} :catchall_9

    if-nez v0, :cond_7

    goto :goto_13

    :cond_7
    move-object p1, v0

    goto :goto_13

    :catchall_9
    move-exception p1

    goto :goto_14

    :catch_b
    move-exception v0

    :try_start_c
    const-string v1, "AndroidPlatform"

    const-string v2, "Saving attachment"

    .line 304
    invoke-static {v1, v2, v0}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_9

    :goto_13
    return-object p1

    .line 311
    :goto_14
    throw p1
.end method

.method public getAPIKey()Ljava/lang/String;
    .registers 2

    .line 116
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidPlatform;->apiKey:Ljava/lang/String;

    return-object v0
.end method

.method public getAnalyticsEventDAO()Lcom/helpshift/analytics/AnalyticsEventDAO;
    .registers 2

    .line 168
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidPlatform;->analyticsEventDAO:Lcom/helpshift/analytics/AnalyticsEventDAO;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidPlatform;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getBackupDAO()Lcom/helpshift/common/dao/BackupDAO;
    .registers 2

    .line 182
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidPlatform;->backupDAO:Lcom/helpshift/common/dao/BackupDAO;

    return-object v0
.end method

.method public getCampaignModuleAPIs()Lcom/helpshift/providers/ICampaignsModuleAPIs;
    .registers 2

    .line 381
    invoke-static {}, Lcom/helpshift/providers/CrossModuleDataProvider;->getCampaignModuleAPIs()Lcom/helpshift/providers/ICampaignsModuleAPIs;

    move-result-object v0

    return-object v0
.end method

.method public getClearedUserDAO()Lcom/helpshift/account/dao/ClearedUserDAO;
    .registers 2

    .line 226
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidPlatform;->clearedUserDAO:Lcom/helpshift/account/dao/ClearedUserDAO;

    return-object v0
.end method

.method public declared-synchronized getConversationDAO()Lcom/helpshift/conversation/dao/ConversationDAO;
    .registers 3

    monitor-enter p0

    .line 146
    :try_start_1
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidPlatform;->conversationDAO:Lcom/helpshift/conversation/dao/ConversationDAO;

    if-nez v0, :cond_e

    .line 147
    new-instance v0, Lcom/helpshift/common/platform/AndroidConversationDAO;

    iget-object v1, p0, Lcom/helpshift/common/platform/AndroidPlatform;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/helpshift/common/platform/AndroidConversationDAO;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/helpshift/common/platform/AndroidPlatform;->conversationDAO:Lcom/helpshift/conversation/dao/ConversationDAO;

    .line 149
    :cond_e
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidPlatform;->conversationDAO:Lcom/helpshift/conversation/dao/ConversationDAO;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getConversationInboxDAO()Lcom/helpshift/conversation/dao/ConversationInboxDAO;
    .registers 4

    monitor-enter p0

    .line 137
    :try_start_1
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidPlatform;->conversationInboxDAO:Lcom/helpshift/conversation/dao/ConversationInboxDAO;

    if-nez v0, :cond_12

    .line 138
    new-instance v0, Lcom/helpshift/common/platform/AndroidConversationInboxDAO;

    iget-object v1, p0, Lcom/helpshift/common/platform/AndroidPlatform;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/helpshift/common/platform/AndroidPlatform;->getKVStore()Lcom/helpshift/common/platform/KVStore;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/helpshift/common/platform/AndroidConversationInboxDAO;-><init>(Landroid/content/Context;Lcom/helpshift/common/platform/KVStore;)V

    iput-object v0, p0, Lcom/helpshift/common/platform/AndroidPlatform;->conversationInboxDAO:Lcom/helpshift/conversation/dao/ConversationInboxDAO;

    .line 140
    :cond_12
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidPlatform;->conversationInboxDAO:Lcom/helpshift/conversation/dao/ConversationInboxDAO;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCustomIssueFieldDAO()Lcom/helpshift/cif/dao/CustomIssueFieldDAO;
    .registers 3

    monitor-enter p0

    .line 174
    :try_start_1
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidPlatform;->customIssueFieldDAO:Lcom/helpshift/cif/dao/CustomIssueFieldDAO;

    if-nez v0, :cond_10

    .line 175
    new-instance v0, Lcom/helpshift/common/platform/AndroidCustomIssueFieldDAO;

    invoke-virtual {p0}, Lcom/helpshift/common/platform/AndroidPlatform;->getKVStore()Lcom/helpshift/common/platform/KVStore;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/helpshift/common/platform/AndroidCustomIssueFieldDAO;-><init>(Lcom/helpshift/common/platform/KVStore;)V

    iput-object v0, p0, Lcom/helpshift/common/platform/AndroidPlatform;->customIssueFieldDAO:Lcom/helpshift/cif/dao/CustomIssueFieldDAO;

    .line 177
    :cond_10
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidPlatform;->customIssueFieldDAO:Lcom/helpshift/cif/dao/CustomIssueFieldDAO;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    monitor-exit p0

    return-object v0

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDevice()Lcom/helpshift/common/platform/Device;
    .registers 2

    .line 131
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidPlatform;->device:Lcom/helpshift/common/platform/Device;

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .registers 2

    .line 121
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidPlatform;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getDownloader()Lcom/helpshift/downloader/SupportDownloader;
    .registers 4

    monitor-enter p0

    .line 280
    :try_start_1
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidPlatform;->downloader:Lcom/helpshift/downloader/SupportDownloader;

    if-nez v0, :cond_12

    .line 281
    new-instance v0, Lcom/helpshift/common/platform/AndroidSupportDownloader;

    iget-object v1, p0, Lcom/helpshift/common/platform/AndroidPlatform;->context:Landroid/content/Context;

    .line 282
    invoke-virtual {p0}, Lcom/helpshift/common/platform/AndroidPlatform;->getKVStore()Lcom/helpshift/common/platform/KVStore;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/helpshift/common/platform/AndroidSupportDownloader;-><init>(Landroid/content/Context;Lcom/helpshift/common/platform/KVStore;)V

    iput-object v0, p0, Lcom/helpshift/common/platform/AndroidPlatform;->downloader:Lcom/helpshift/downloader/SupportDownloader;

    .line 284
    :cond_12
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidPlatform;->downloader:Lcom/helpshift/downloader/SupportDownloader;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFAQSearchDM()Lcom/helpshift/faq/domainmodel/FAQSearchDM;
    .registers 3

    monitor-enter p0

    .line 198
    :try_start_1
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidPlatform;->faqSearchDM:Lcom/helpshift/faq/domainmodel/FAQSearchDM;

    if-nez v0, :cond_10

    .line 199
    new-instance v0, Lcom/helpshift/common/platform/AndroidFAQSearchDM;

    invoke-direct {p0}, Lcom/helpshift/common/platform/AndroidPlatform;->getData()Lcom/helpshift/support/HSApiData;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/helpshift/common/platform/AndroidFAQSearchDM;-><init>(Lcom/helpshift/support/HSApiData;)V

    iput-object v0, p0, Lcom/helpshift/common/platform/AndroidPlatform;->faqSearchDM:Lcom/helpshift/faq/domainmodel/FAQSearchDM;

    .line 201
    :cond_10
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidPlatform;->faqSearchDM:Lcom/helpshift/faq/domainmodel/FAQSearchDM;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    monitor-exit p0

    return-object v0

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFAQSuggestionsDAO()Lcom/helpshift/conversation/dao/FAQSuggestionsDAO;
    .registers 3

    monitor-enter p0

    .line 155
    :try_start_1
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidPlatform;->conversationDAO:Lcom/helpshift/conversation/dao/ConversationDAO;

    if-nez v0, :cond_e

    .line 156
    new-instance v0, Lcom/helpshift/common/platform/AndroidConversationDAO;

    iget-object v1, p0, Lcom/helpshift/common/platform/AndroidPlatform;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/helpshift/common/platform/AndroidConversationDAO;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/helpshift/common/platform/AndroidPlatform;->conversationDAO:Lcom/helpshift/conversation/dao/ConversationDAO;

    .line 158
    :cond_e
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidPlatform;->conversationDAO:Lcom/helpshift/conversation/dao/ConversationDAO;

    check-cast v0, Lcom/helpshift/conversation/dao/FAQSuggestionsDAO;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    monitor-exit p0

    return-object v0

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFaqEventDAO()Lcom/helpshift/faq/dao/FaqEventDAO;
    .registers 3

    monitor-enter p0

    .line 241
    :try_start_1
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidPlatform;->faqEventDAO:Lcom/helpshift/faq/dao/FaqEventDAO;

    if-nez v0, :cond_10

    .line 242
    new-instance v0, Lcom/helpshift/common/platform/AndroidFaqEventDAO;

    invoke-virtual {p0}, Lcom/helpshift/common/platform/AndroidPlatform;->getKVStore()Lcom/helpshift/common/platform/KVStore;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/helpshift/common/platform/AndroidFaqEventDAO;-><init>(Lcom/helpshift/common/platform/KVStore;)V

    iput-object v0, p0, Lcom/helpshift/common/platform/AndroidPlatform;->faqEventDAO:Lcom/helpshift/faq/dao/FaqEventDAO;

    .line 244
    :cond_10
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidPlatform;->faqEventDAO:Lcom/helpshift/faq/dao/FaqEventDAO;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    monitor-exit p0

    return-object v0

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getHSNetworkMetadataDAO()Lcom/helpshift/common/domain/network/dao/HSNetworkMetadataDAO;
    .registers 3

    monitor-enter p0

    .line 440
    :try_start_1
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidPlatform;->hsNetworkMetadataDAO:Lcom/helpshift/common/domain/network/dao/HSNetworkMetadataDAO;

    if-nez v0, :cond_e

    .line 441
    new-instance v0, Lcom/helpshift/common/platform/AndroidHSNetworkMetadataDAO;

    iget-object v1, p0, Lcom/helpshift/common/platform/AndroidPlatform;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/helpshift/common/platform/AndroidHSNetworkMetadataDAO;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/helpshift/common/platform/AndroidPlatform;->hsNetworkMetadataDAO:Lcom/helpshift/common/domain/network/dao/HSNetworkMetadataDAO;

    .line 443
    :cond_e
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidPlatform;->hsNetworkMetadataDAO:Lcom/helpshift/common/domain/network/dao/HSNetworkMetadataDAO;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getHTTPTransport()Lcom/helpshift/common/platform/network/HTTPTransport;
    .registers 2

    .line 192
    new-instance v0, Lcom/helpshift/common/platform/AndroidHTTPTransport;

    invoke-direct {v0}, Lcom/helpshift/common/platform/AndroidHTTPTransport;-><init>()V

    return-object v0
.end method

.method public getJsonifier()Lcom/helpshift/common/platform/Jsonifier;
    .registers 2

    .line 211
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidPlatform;->jsonifier:Lcom/helpshift/common/platform/Jsonifier;

    return-object v0
.end method

.method public getKVStore()Lcom/helpshift/common/platform/KVStore;
    .registers 2

    .line 206
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidPlatform;->storage:Lcom/helpshift/common/platform/KVStore;

    return-object v0
.end method

.method public declared-synchronized getLegacyAnalyticsEventIDDAO()Lcom/helpshift/migration/LegacyAnalyticsEventIDDAO;
    .registers 3

    monitor-enter p0

    .line 410
    :try_start_1
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidPlatform;->legacyAnalyticsEventIDDAO:Lcom/helpshift/migration/LegacyAnalyticsEventIDDAO;

    if-nez v0, :cond_12

    .line 411
    new-instance v0, Lcom/helpshift/account/dao/AndroidLegacyAnalyticsEventIDDAO;

    iget-object v1, p0, Lcom/helpshift/common/platform/AndroidPlatform;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/helpshift/account/dao/UserDB;->getInstance(Landroid/content/Context;)Lcom/helpshift/account/dao/UserDB;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/helpshift/account/dao/AndroidLegacyAnalyticsEventIDDAO;-><init>(Lcom/helpshift/account/dao/UserDB;)V

    iput-object v0, p0, Lcom/helpshift/common/platform/AndroidPlatform;->legacyAnalyticsEventIDDAO:Lcom/helpshift/migration/LegacyAnalyticsEventIDDAO;

    .line 413
    :cond_12
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidPlatform;->legacyAnalyticsEventIDDAO:Lcom/helpshift/migration/LegacyAnalyticsEventIDDAO;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLegacyUserMigrationDataSource()Lcom/helpshift/migration/LegacyProfileMigrationDAO;
    .registers 3

    monitor-enter p0

    .line 401
    :try_start_1
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidPlatform;->legacyProfileMigrationDAO:Lcom/helpshift/migration/LegacyProfileMigrationDAO;

    if-nez v0, :cond_12

    .line 402
    new-instance v0, Lcom/helpshift/account/dao/AndroidLegacyProfileMigrationDAO;

    iget-object v1, p0, Lcom/helpshift/common/platform/AndroidPlatform;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/helpshift/account/dao/UserDB;->getInstance(Landroid/content/Context;)Lcom/helpshift/account/dao/UserDB;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/helpshift/account/dao/AndroidLegacyProfileMigrationDAO;-><init>(Lcom/helpshift/account/dao/UserDB;)V

    iput-object v0, p0, Lcom/helpshift/common/platform/AndroidPlatform;->legacyProfileMigrationDAO:Lcom/helpshift/migration/LegacyProfileMigrationDAO;

    .line 404
    :cond_12
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidPlatform;->legacyProfileMigrationDAO:Lcom/helpshift/migration/LegacyProfileMigrationDAO;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMetaDataDAO()Lcom/helpshift/meta/dao/MetaDataDAO;
    .registers 2

    .line 163
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidPlatform;->metaDataDAO:Lcom/helpshift/meta/dao/MetaDataDAO;

    return-object v0
.end method

.method public getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 294
    invoke-static {p1}, Lcom/helpshift/util/AndroidFileUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMinimumConversationDescriptionLength()I
    .registers 3

    .line 329
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidPlatform;->uiContext:Landroid/content/Context;

    if-eqz v0, :cond_5

    goto :goto_7

    .line 333
    :cond_5
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidPlatform;->context:Landroid/content/Context;

    .line 335
    :goto_7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/helpshift/R$integer;->hs__issue_description_min_chars:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public declared-synchronized getNetworkRequestDAO()Lcom/helpshift/common/platform/network/NetworkRequestDAO;
    .registers 3

    monitor-enter p0

    .line 232
    :try_start_1
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidPlatform;->networkRequestDAO:Lcom/helpshift/common/platform/network/NetworkRequestDAO;

    if-nez v0, :cond_10

    .line 233
    new-instance v0, Lcom/helpshift/common/platform/AndroidNetworkRequestDAO;

    invoke-virtual {p0}, Lcom/helpshift/common/platform/AndroidPlatform;->getKVStore()Lcom/helpshift/common/platform/KVStore;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/helpshift/common/platform/AndroidNetworkRequestDAO;-><init>(Lcom/helpshift/common/platform/KVStore;)V

    iput-object v0, p0, Lcom/helpshift/common/platform/AndroidPlatform;->networkRequestDAO:Lcom/helpshift/common/platform/network/NetworkRequestDAO;

    .line 235
    :cond_10
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidPlatform;->networkRequestDAO:Lcom/helpshift/common/platform/network/NetworkRequestDAO;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    monitor-exit p0

    return-object v0

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRedactionDAO()Lcom/helpshift/redaction/RedactionDAO;
    .registers 3

    monitor-enter p0

    .line 419
    :try_start_1
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidPlatform;->redactionDAO:Lcom/helpshift/redaction/RedactionDAO;

    if-nez v0, :cond_12

    .line 420
    new-instance v0, Lcom/helpshift/account/dao/AndroidRedactionDAO;

    iget-object v1, p0, Lcom/helpshift/common/platform/AndroidPlatform;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/helpshift/account/dao/UserDB;->getInstance(Landroid/content/Context;)Lcom/helpshift/account/dao/UserDB;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/helpshift/account/dao/AndroidRedactionDAO;-><init>(Lcom/helpshift/account/dao/UserDB;)V

    iput-object v0, p0, Lcom/helpshift/common/platform/AndroidPlatform;->redactionDAO:Lcom/helpshift/redaction/RedactionDAO;

    .line 422
    :cond_12
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidPlatform;->redactionDAO:Lcom/helpshift/redaction/RedactionDAO;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getResponseParser()Lcom/helpshift/common/platform/network/ResponseParser;
    .registers 2

    .line 187
    new-instance v0, Lcom/helpshift/common/platform/AndroidResponseParser;

    invoke-direct {v0}, Lcom/helpshift/common/platform/AndroidResponseParser;-><init>()V

    return-object v0
.end method

.method public declared-synchronized getSmartIntentDAO()Lcom/helpshift/conversation/smartintent/dao/SmartIntentDAO;
    .registers 3

    monitor-enter p0

    .line 432
    :try_start_1
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidPlatform;->smartIntentDAO:Lcom/helpshift/conversation/smartintent/dao/SmartIntentDAO;

    if-nez v0, :cond_e

    .line 433
    new-instance v0, Lcom/helpshift/common/platform/AndroidSmartIntentDAO;

    iget-object v1, p0, Lcom/helpshift/common/platform/AndroidPlatform;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/helpshift/common/platform/AndroidSmartIntentDAO;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/helpshift/common/platform/AndroidPlatform;->smartIntentDAO:Lcom/helpshift/conversation/smartintent/dao/SmartIntentDAO;

    .line 435
    :cond_e
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidPlatform;->smartIntentDAO:Lcom/helpshift/conversation/smartintent/dao/SmartIntentDAO;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUIThreader()Lcom/helpshift/common/domain/Threader;
    .registers 2

    monitor-enter p0

    .line 255
    :try_start_1
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidPlatform;->uiThreader:Lcom/helpshift/common/domain/Threader;

    if-nez v0, :cond_c

    .line 256
    new-instance v0, Lcom/helpshift/common/platform/AndroidPlatform$1;

    invoke-direct {v0, p0}, Lcom/helpshift/common/platform/AndroidPlatform$1;-><init>(Lcom/helpshift/common/platform/AndroidPlatform;)V

    iput-object v0, p0, Lcom/helpshift/common/platform/AndroidPlatform;->uiThreader:Lcom/helpshift/common/domain/Threader;

    .line 274
    :cond_c
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidPlatform;->uiThreader:Lcom/helpshift/common/domain/Threader;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUserDAO()Lcom/helpshift/account/dao/UserDAO;
    .registers 2

    .line 221
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidPlatform;->userDAO:Lcom/helpshift/account/dao/UserDAO;

    return-object v0
.end method

.method public getUserManagerDAO()Lcom/helpshift/account/dao/UserManagerDAO;
    .registers 2

    .line 216
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidPlatform;->userManagerDAO:Lcom/helpshift/account/dao/AndroidUserManagerDAO;

    return-object v0
.end method

.method public isCurrentThreadUIThread()Z
    .registers 3

    .line 249
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isOnline()Z
    .registers 2

    .line 386
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidPlatform;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/helpshift/util/HelpshiftConnectionUtil;->isOnline(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isSupportedMimeType(Ljava/lang/String;)Z
    .registers 2

    .line 289
    invoke-static {p1}, Lcom/helpshift/util/AndroidFileUtil;->isSupportedMimeType(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setUIContext(Ljava/lang/Object;)V
    .registers 3

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 392
    iput-object p1, p0, Lcom/helpshift/common/platform/AndroidPlatform;->uiContext:Landroid/content/Context;

    goto :goto_e

    .line 394
    :cond_6
    instance-of v0, p1, Landroid/content/Context;

    if-eqz v0, :cond_e

    .line 395
    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/helpshift/common/platform/AndroidPlatform;->uiContext:Landroid/content/Context;

    :cond_e
    :goto_e
    return-void
.end method

.method public showNotification(Ljava/lang/Long;Ljava/lang/String;ILjava/lang/String;Z)V
    .registers 7

    .line 345
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidPlatform;->uiContext:Landroid/content/Context;

    if-eqz v0, :cond_5

    goto :goto_b

    .line 349
    :cond_5
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidPlatform;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/helpshift/util/LocaleContextUtil;->getContextWithUpdatedLocale(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 353
    :goto_b
    invoke-static {v0, p1, p2, p3, p4}, Lcom/helpshift/support/util/SupportNotification;->createNotification(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    if-eqz p1, :cond_3f

    .line 360
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 363
    new-instance p4, Lcom/helpshift/notifications/NotificationChannelsManager;

    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidPlatform;->context:Landroid/content/Context;

    invoke-direct {p4, v0}, Lcom/helpshift/notifications/NotificationChannelsManager;-><init>(Landroid/content/Context;)V

    .line 365
    sget-object v0, Lcom/helpshift/notifications/NotificationChannelsManager$NotificationChannelType;->SUPPORT:Lcom/helpshift/notifications/NotificationChannelsManager$NotificationChannelType;

    invoke-virtual {p4, p1, v0}, Lcom/helpshift/notifications/NotificationChannelsManager;->attachChannelId(Landroid/app/Notification;Lcom/helpshift/notifications/NotificationChannelsManager$NotificationChannelType;)Landroid/app/Notification;

    move-result-object p1

    .line 366
    iget-object p4, p0, Lcom/helpshift/common/platform/AndroidPlatform;->context:Landroid/content/Context;

    invoke-static {p4, p2, p1}, Lcom/helpshift/util/ApplicationUtil;->showNotification(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)V

    if-eqz p5, :cond_3f

    .line 369
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "didReceiveInAppNotificationCount"

    invoke-static {p2, p1}, Lcom/helpshift/PluginEventBridge;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3f
    return-void
.end method
