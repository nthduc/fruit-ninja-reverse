.class public Lcom/helpshift/support/storage/SupportKVStoreMigrator;
.super Ljava/lang/Object;
.source "SupportKVStoreMigrator.java"

# interfaces
.implements Lcom/helpshift/support/storage/SDKMigrator;


# static fields
.field private static final TAG:Ljava/lang/String; = "Helpshift_KVStoreMigratorr"


# instance fields
.field private customMetaData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation
.end field

.field private deviceId:Ljava/lang/String;

.field private enableTypingIndicator:Ljava/lang/Boolean;

.field private fullPrivacy:Ljava/lang/Boolean;

.field private gotoConversationAfterContactUs:Ljava/lang/Boolean;

.field private hideNameEmail:Ljava/lang/Boolean;

.field private hsStorage:Lcom/helpshift/support/HSStorage;

.field private kvStore:Lcom/helpshift/common/platform/KVStore;

.field private metaDataDAO:Lcom/helpshift/meta/dao/MetaDataDAO;

.field private networkRequestDAO:Lcom/helpshift/common/platform/network/NetworkRequestDAO;

.field private requireEmail:Ljava/lang/Boolean;

.field private sdkConfigurationDM:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

.field private serverTimeDelta:F

.field private showConversationInfoScreen:Ljava/lang/Boolean;

.field private showConversationResolutionQuestion:Ljava/lang/Boolean;

.field private showSearchOnNewConversation:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/helpshift/support/HSStorage;)V
    .registers 3

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->hsStorage:Lcom/helpshift/support/HSStorage;

    .line 62
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getCoreApi()Lcom/helpshift/CoreApi;

    move-result-object p1

    invoke-interface {p1}, Lcom/helpshift/CoreApi;->getSDKConfigurationDM()Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    move-result-object p1

    iput-object p1, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->sdkConfigurationDM:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    .line 64
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getPlatform()Lcom/helpshift/common/platform/Platform;

    move-result-object p1

    .line 65
    invoke-interface {p1}, Lcom/helpshift/common/platform/Platform;->getNetworkRequestDAO()Lcom/helpshift/common/platform/network/NetworkRequestDAO;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->networkRequestDAO:Lcom/helpshift/common/platform/network/NetworkRequestDAO;

    .line 66
    invoke-interface {p1}, Lcom/helpshift/common/platform/Platform;->getMetaDataDAO()Lcom/helpshift/meta/dao/MetaDataDAO;

    move-result-object p1

    iput-object p1, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->metaDataDAO:Lcom/helpshift/meta/dao/MetaDataDAO;

    .line 68
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getPlatform()Lcom/helpshift/common/platform/Platform;

    move-result-object p1

    invoke-interface {p1}, Lcom/helpshift/common/platform/Platform;->getKVStore()Lcom/helpshift/common/platform/KVStore;

    move-result-object p1

    iput-object p1, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->kvStore:Lcom/helpshift/common/platform/KVStore;

    return-void
.end method


# virtual methods
.method public backup(Lcom/helpshift/util/VersionName;)V
    .registers 6

    .line 75
    iget-object p1, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->hsStorage:Lcom/helpshift/support/HSStorage;

    const-string v0, "requireEmail"

    invoke-virtual {p1, v0}, Lcom/helpshift/support/HSStorage;->contains(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 76
    iget-object p1, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->hsStorage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {p1, v0}, Lcom/helpshift/support/HSStorage;->storageGetBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->requireEmail:Ljava/lang/Boolean;

    goto :goto_1f

    .line 79
    :cond_13
    iget-object p1, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->sdkConfigurationDM:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    invoke-virtual {p1, v0}, Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->requireEmail:Ljava/lang/Boolean;

    .line 81
    :goto_1f
    iget-object p1, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->hsStorage:Lcom/helpshift/support/HSStorage;

    const-string v0, "fullPrivacy"

    invoke-virtual {p1, v0}, Lcom/helpshift/support/HSStorage;->contains(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_32

    .line 82
    iget-object p1, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->hsStorage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {p1, v0}, Lcom/helpshift/support/HSStorage;->storageGetBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->fullPrivacy:Ljava/lang/Boolean;

    goto :goto_3e

    .line 85
    :cond_32
    iget-object p1, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->sdkConfigurationDM:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    invoke-virtual {p1, v0}, Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->fullPrivacy:Ljava/lang/Boolean;

    .line 87
    :goto_3e
    iget-object p1, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->hsStorage:Lcom/helpshift/support/HSStorage;

    const-string v0, "hideNameAndEmail"

    invoke-virtual {p1, v0}, Lcom/helpshift/support/HSStorage;->contains(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_51

    .line 88
    iget-object p1, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->hsStorage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {p1, v0}, Lcom/helpshift/support/HSStorage;->storageGetBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->hideNameEmail:Ljava/lang/Boolean;

    goto :goto_5d

    .line 91
    :cond_51
    iget-object p1, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->sdkConfigurationDM:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    invoke-virtual {p1, v0}, Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->hideNameEmail:Ljava/lang/Boolean;

    .line 93
    :goto_5d
    iget-object p1, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->hsStorage:Lcom/helpshift/support/HSStorage;

    const-string v0, "showSearchOnNewConversation"

    invoke-virtual {p1, v0}, Lcom/helpshift/support/HSStorage;->contains(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_70

    .line 94
    iget-object p1, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->hsStorage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {p1, v0}, Lcom/helpshift/support/HSStorage;->storageGetBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->showSearchOnNewConversation:Ljava/lang/Boolean;

    goto :goto_7c

    .line 97
    :cond_70
    iget-object p1, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->sdkConfigurationDM:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    invoke-virtual {p1, v0}, Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->showSearchOnNewConversation:Ljava/lang/Boolean;

    .line 99
    :goto_7c
    iget-object p1, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->hsStorage:Lcom/helpshift/support/HSStorage;

    const-string v0, "gotoConversationAfterContactUs"

    invoke-virtual {p1, v0}, Lcom/helpshift/support/HSStorage;->contains(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8f

    .line 100
    iget-object p1, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->hsStorage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {p1, v0}, Lcom/helpshift/support/HSStorage;->storageGetBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->gotoConversationAfterContactUs:Ljava/lang/Boolean;

    goto :goto_9b

    .line 103
    :cond_8f
    iget-object p1, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->sdkConfigurationDM:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    invoke-virtual {p1, v0}, Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->gotoConversationAfterContactUs:Ljava/lang/Boolean;

    .line 105
    :goto_9b
    iget-object p1, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->hsStorage:Lcom/helpshift/support/HSStorage;

    const-string v0, "showConversationResolutionQuestion"

    invoke-virtual {p1, v0}, Lcom/helpshift/support/HSStorage;->contains(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_ae

    .line 106
    iget-object p1, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->hsStorage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {p1, v0}, Lcom/helpshift/support/HSStorage;->storageGetBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->showConversationResolutionQuestion:Ljava/lang/Boolean;

    goto :goto_ba

    .line 109
    :cond_ae
    iget-object p1, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->sdkConfigurationDM:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    invoke-virtual {p1, v0}, Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->showConversationResolutionQuestion:Ljava/lang/Boolean;

    .line 111
    :goto_ba
    iget-object p1, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->hsStorage:Lcom/helpshift/support/HSStorage;

    const-string v0, "showConversationInfoScreen"

    invoke-virtual {p1, v0}, Lcom/helpshift/support/HSStorage;->contains(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_cd

    .line 112
    iget-object p1, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->hsStorage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {p1, v0}, Lcom/helpshift/support/HSStorage;->storageGetBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->showConversationInfoScreen:Ljava/lang/Boolean;

    goto :goto_d9

    .line 115
    :cond_cd
    iget-object p1, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->sdkConfigurationDM:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    invoke-virtual {p1, v0}, Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->showConversationInfoScreen:Ljava/lang/Boolean;

    .line 117
    :goto_d9
    iget-object p1, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->hsStorage:Lcom/helpshift/support/HSStorage;

    const-string v0, "enableTypingIndicator"

    invoke-virtual {p1, v0}, Lcom/helpshift/support/HSStorage;->contains(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_ec

    .line 118
    iget-object p1, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->hsStorage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {p1, v0}, Lcom/helpshift/support/HSStorage;->storageGetBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->enableTypingIndicator:Ljava/lang/Boolean;

    goto :goto_f8

    .line 121
    :cond_ec
    iget-object p1, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->sdkConfigurationDM:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    invoke-virtual {p1, v0}, Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->enableTypingIndicator:Ljava/lang/Boolean;

    .line 125
    :goto_f8
    iget-object p1, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->kvStore:Lcom/helpshift/common/platform/KVStore;

    const-string v0, "key_support_device_id"

    invoke-interface {p1, v0}, Lcom/helpshift/common/platform/KVStore;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->deviceId:Ljava/lang/String;

    .line 128
    iget-object p1, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->hsStorage:Lcom/helpshift/support/HSStorage;

    const-string v0, "serverTimeDelta"

    invoke-virtual {p1, v0}, Lcom/helpshift/support/HSStorage;->contains(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_119

    .line 129
    iget-object p1, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->hsStorage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {p1, v0}, Lcom/helpshift/support/HSStorage;->storageGetFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->serverTimeDelta:F

    goto :goto_121

    .line 132
    :cond_119
    iget-object p1, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->networkRequestDAO:Lcom/helpshift/common/platform/network/NetworkRequestDAO;

    invoke-interface {p1}, Lcom/helpshift/common/platform/network/NetworkRequestDAO;->getServerTimeDelta()F

    move-result p1

    iput p1, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->serverTimeDelta:F

    .line 136
    :goto_121
    iget-object p1, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->hsStorage:Lcom/helpshift/support/HSStorage;

    const-string v0, "customMetaData"

    invoke-virtual {p1, v0}, Lcom/helpshift/support/HSStorage;->contains(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_16c

    .line 137
    iget-object p1, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->hsStorage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {p1, v0}, Lcom/helpshift/support/HSStorage;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 139
    :try_start_131
    invoke-static {p1}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_174

    .line 140
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    .line 142
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->customMetaData:Ljava/util/HashMap;

    .line 143
    :cond_147
    :goto_147
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_174

    .line 144
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 145
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 146
    instance-of v3, v2, Ljava/io/Serializable;

    if-eqz v3, :cond_147

    .line 147
    iget-object v3, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->customMetaData:Ljava/util/HashMap;

    check-cast v2, Ljava/io/Serializable;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_162
    .catch Ljava/lang/Exception; {:try_start_131 .. :try_end_162} :catch_163

    goto :goto_147

    :catch_163
    move-exception p1

    const-string v0, "Helpshift_KVStoreMigratorr"

    const-string v1, "Exception converting meta from storage"

    .line 153
    invoke-static {v0, v1, p1}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_174

    .line 157
    :cond_16c
    iget-object p1, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->metaDataDAO:Lcom/helpshift/meta/dao/MetaDataDAO;

    invoke-interface {p1}, Lcom/helpshift/meta/dao/MetaDataDAO;->getCustomMetaData()Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->customMetaData:Ljava/util/HashMap;

    :cond_174
    :goto_174
    return-void
.end method

.method public restore()V
    .registers 4

    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 165
    iget-object v1, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->requireEmail:Ljava/lang/Boolean;

    const-string v2, "requireEmail"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v1, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->fullPrivacy:Ljava/lang/Boolean;

    const-string v2, "fullPrivacy"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v1, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->hideNameEmail:Ljava/lang/Boolean;

    const-string v2, "hideNameAndEmail"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v1, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->showSearchOnNewConversation:Ljava/lang/Boolean;

    const-string v2, "showSearchOnNewConversation"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v1, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->gotoConversationAfterContactUs:Ljava/lang/Boolean;

    const-string v2, "gotoConversationAfterContactUs"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v1, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->showConversationResolutionQuestion:Ljava/lang/Boolean;

    const-string v2, "showConversationResolutionQuestion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v1, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->showConversationInfoScreen:Ljava/lang/Boolean;

    const-string v2, "showConversationInfoScreen"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v1, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->enableTypingIndicator:Ljava/lang/Boolean;

    const-string v2, "enableTypingIndicator"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    new-instance v1, Ljava/util/HashMap;

    invoke-static {}, Lcom/helpshift/support/util/ConfigUtil;->getDefaultApiConfig()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 174
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 176
    new-instance v0, Lcom/helpshift/configuration/dto/RootApiConfig$RootApiConfigBuilder;

    invoke-direct {v0}, Lcom/helpshift/configuration/dto/RootApiConfig$RootApiConfigBuilder;-><init>()V

    invoke-virtual {v0, v1}, Lcom/helpshift/configuration/dto/RootApiConfig$RootApiConfigBuilder;->applyMap(Ljava/util/Map;)Lcom/helpshift/configuration/dto/RootApiConfig$RootApiConfigBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/configuration/dto/RootApiConfig$RootApiConfigBuilder;->build()Lcom/helpshift/configuration/dto/RootApiConfig;

    move-result-object v0

    .line 177
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getCoreApi()Lcom/helpshift/CoreApi;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/helpshift/CoreApi;->updateApiConfig(Lcom/helpshift/configuration/dto/RootApiConfig;)V

    .line 180
    iget-object v0, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->networkRequestDAO:Lcom/helpshift/common/platform/network/NetworkRequestDAO;

    iget v1, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->serverTimeDelta:F

    invoke-interface {v0, v1}, Lcom/helpshift/common/platform/network/NetworkRequestDAO;->storeServerTimeDelta(F)V

    .line 183
    iget-object v0, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->metaDataDAO:Lcom/helpshift/meta/dao/MetaDataDAO;

    iget-object v1, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->customMetaData:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Lcom/helpshift/meta/dao/MetaDataDAO;->saveCustomMetaData(Ljava/util/HashMap;)V

    .line 186
    iget-object v0, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->deviceId:Ljava/lang/String;

    invoke-static {v0}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7c

    .line 187
    iget-object v0, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->kvStore:Lcom/helpshift/common/platform/KVStore;

    iget-object v1, p0, Lcom/helpshift/support/storage/SupportKVStoreMigrator;->deviceId:Ljava/lang/String;

    const-string v2, "key_support_device_id"

    invoke-interface {v0, v2, v1}, Lcom/helpshift/common/platform/KVStore;->setString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7c
    return-void
.end method
